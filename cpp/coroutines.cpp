//////////////////////////////////////////////////////////////////////////
// Homemade GPS Receiver — cooperative scheduler
// Copyright (C) 2018 Max Apodaca
// Copyright (C) 2013 Andrew Holme
//
// aarch64 (64-bit) port. The original implemented cooperative coroutines by
// poking the saved stack-pointer / program-counter fields directly inside a
// glibc jmp_buf (with SETJMP_OFFSET and pointer-mangling reverse-engineered
// from a 32-bit ARM build). That layout is armhf-specific and jumps to a
// garbage PC on aarch64. This version uses POSIX ucontext (makecontext /
// swapcontext) — the portable, ABI-correct mechanism for the same thing.
//
// Public interface is UNCHANGED (InitTasks, CreateTask, NextTask, TimerWait,
// EventRaise, EventCatch, Microseconds), so no other file needs editing.
//
// Semantics preserved:
//   - Task 0 is the main context (the code that calls InitTasks()).
//   - CreateTask(entry) adds a task that starts at entry() on its own stack;
//     entry must never return (matches original contract).
//   - NextTask() round-robins to the next task, cycling back to 0.
//
// GPL v3.  http://www.aholme.co.uk/GPS/Main.htm
//////////////////////////////////////////////////////////////////////////

#include <ucontext.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#define STACK_SIZE (256*1024)   // per-task stack (generous; FFT/search use it)
#define MAX_TASKS  20

struct TASK {
    ucontext_t ctx;
    char       stack[STACK_SIZE];
    void     (*entry)();
    int        active;
};

static TASK Tasks[MAX_TASKS];
static int  NumTasks = 1;   // task 0 = main context
static int  curId    = 0;   // currently running task
static unsigned Signals;

//////////////////////////////////////////////////////////////////////////
// InitTasks — establish task 0 as the main context. No more pointer-mangling
// or SETJMP_OFFSET; ucontext handles the machine state portably.

void InitTasks() {
    getcontext(&Tasks[0].ctx);   // task 0 uses the real main stack
    Tasks[0].active = 1;
    NumTasks = 1;
    curId = 0;
}

//////////////////////////////////////////////////////////////////////////
// CreateTask — spawn a task that begins executing entry() on a fresh stack.

void CreateTask(void (*entry)()) {
    if (NumTasks >= MAX_TASKS) { fprintf(stderr, "CreateTask: too many tasks\n"); exit(1); }
    TASK *t = &Tasks[NumTasks];

    getcontext(&t->ctx);
    t->ctx.uc_stack.ss_sp   = t->stack;
    t->ctx.uc_stack.ss_size = STACK_SIZE;
    t->ctx.uc_link          = 0;    // entry must never return (original contract)
    t->entry  = entry;
    t->active = 1;

    // makecontext takes a void(*)() with no args — entry matches that exactly.
    makecontext(&t->ctx, entry, 0);

    NumTasks++;
}

//////////////////////////////////////////////////////////////////////////
// NextTask — cooperative round-robin yield. Save current task, switch to the
// next one (wrapping to 0). swapcontext restores the target and returns here
// when someone later switches back to us.

void NextTask() {
    int prev = curId;
    if (++curId == NumTasks) curId = 0;
    if (curId == prev) return;             // only one task: nothing to switch to
    swapcontext(&Tasks[prev].ctx, &Tasks[curId].ctx);
}

//////////////////////////////////////////////////////////////////////////

unsigned Microseconds(void) {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ts.tv_sec*1000000 + ts.tv_nsec/1000;
}

void TimerWait(unsigned ms) {
    unsigned finish = Microseconds() + 1000*ms;
    for (;;) {
        NextTask();
        int diff = finish - Microseconds();
        if (diff <= 0) break;
    }
}

//////////////////////////////////////////////////////////////////////////

void EventRaise(unsigned sigs) {
    Signals |= sigs;
}

unsigned int EventCatch(unsigned sigs) {
    sigs &= Signals;
    Signals -= sigs;
    return sigs;
}
