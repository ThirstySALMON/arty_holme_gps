##########################################################################
## Homemade GPS Receiver — Artix-7 port
## Generates the 5 Block Memory Generator IPs that replace Holme's
## Spartan-3 RAMB16_* primitives. Run once from the Vivado Tcl console:
##     source gen_gps_ip.tcl
##
## Target: xc7a100tcsg324-1 (Arty A7-100T). Vivado 2025.2.
##
## NOTE: CONFIG.* property names are Block Memory Generator conventions.
## If any property name is rejected by your Vivado version, it will error
## on that exact line — report it and it gets fixed. Nothing miscompiles
## silently. All five are True Dual Port, no output register (read
## latency 1) to match the legacy RAMB16 timing.
##########################################################################

set part xc7a100tcsg324-1
if { [get_property PART [current_project]] ne $part } {
    puts "WARNING: project part is [get_property PART [current_project]], expected $part"
}

proc mk_bram {name args} {
    # idempotent: if this IP already exists, remove it (project + disk) first
    if { [llength [get_ips -quiet $name]] } {
        catch { export_ip_user_files -of_objects [get_files ${name}.xci] -no_script -reset -force -quiet }
        catch { remove_files [get_files ${name}.xci] }
    }
    set ipdir [file join [get_property DIRECTORY [get_filesets sources_1]] ip $name]
    catch { file delete -force $ipdir }
    create_ip -name blk_mem_gen -vendor xilinx.com -library ip \
        -module_name $name
    set_property -dict $args [get_ips $name]
}

## ---- 1) blk_cpu_stacks : 512 x 32, TDP, common clk, WRITE_FIRST ----
mk_bram blk_cpu_stacks \
    CONFIG.Memory_Type              {True_Dual_Port_RAM} \
    CONFIG.Write_Width_A            {32} \
    CONFIG.Write_Depth_A            {512} \
    CONFIG.Read_Width_A             {32} \
    CONFIG.Write_Width_B            {32} \
    CONFIG.Read_Width_B             {32} \
    CONFIG.Operating_Mode_A         {WRITE_FIRST} \
    CONFIG.Operating_Mode_B         {WRITE_FIRST} \
    CONFIG.Enable_A                 {Use_ENA_Pin} \
    CONFIG.Enable_B                 {Use_ENB_Pin} \
    CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
    CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
    CONFIG.Use_RSTA_Pin             {false} \
    CONFIG.Use_RSTB_Pin             {false} \
    CONFIG.Assume_Synchronous_Clk  {true}

## ---- 2) blk_cpu_ram : 1024 x 16, TDP, common clk, WRITE_FIRST,
##         init 0x8000 (op_nop), RSTA pin used (output-reset mux is in RTL) ----
mk_bram blk_cpu_ram \
    CONFIG.Memory_Type              {True_Dual_Port_RAM} \
    CONFIG.Write_Width_A            {16} \
    CONFIG.Write_Depth_A            {1024} \
    CONFIG.Read_Width_A             {16} \
    CONFIG.Write_Width_B            {16} \
    CONFIG.Read_Width_B             {16} \
    CONFIG.Operating_Mode_A         {WRITE_FIRST} \
    CONFIG.Operating_Mode_B         {WRITE_FIRST} \
    CONFIG.Enable_A                 {Use_ENA_Pin} \
    CONFIG.Enable_B                 {Use_ENB_Pin} \
    CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
    CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
    CONFIG.Use_RSTA_Pin             {true} \
    CONFIG.Use_RSTB_Pin             {true} \
    CONFIG.Reset_Type               {SYNC} \
    CONFIG.Assume_Synchronous_Clk  {true} \
    CONFIG.Load_Init_File           {false} \
    CONFIG.Fill_Remaining_Memory_Locations {true} \
    CONFIG.Remaining_Memory_Locations {8000}

## ---- 3) blk_host_fifo : Port A 1b x 16384, Port B 16b x 1024,
##         INDEPENDENT clocks, Port A READ_FIRST ----
mk_bram blk_host_fifo \
    CONFIG.Memory_Type              {True_Dual_Port_RAM} \
    CONFIG.Write_Width_A            {1} \
    CONFIG.Write_Depth_A            {16384} \
    CONFIG.Read_Width_A             {1} \
    CONFIG.Write_Width_B            {16} \
    CONFIG.Read_Width_B             {16} \
    CONFIG.Operating_Mode_A         {READ_FIRST} \
    CONFIG.Operating_Mode_B         {WRITE_FIRST} \
    CONFIG.Enable_A                 {Use_ENA_Pin} \
    CONFIG.Enable_B                 {Use_ENB_Pin} \
    CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
    CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
    CONFIG.Use_RSTA_Pin             {false} \
    CONFIG.Use_RSTB_Pin             {false} \
    CONFIG.Assume_Synchronous_Clk  {false}

## ---- 4) blk_logger_ram : 1024 x 16, TDP, common clk, WRITE_FIRST ----
mk_bram blk_logger_ram \
    CONFIG.Memory_Type              {True_Dual_Port_RAM} \
    CONFIG.Write_Width_A            {16} \
    CONFIG.Write_Depth_A            {1024} \
    CONFIG.Read_Width_A             {16} \
    CONFIG.Write_Width_B            {16} \
    CONFIG.Read_Width_B             {16} \
    CONFIG.Operating_Mode_A         {WRITE_FIRST} \
    CONFIG.Operating_Mode_B         {WRITE_FIRST} \
    CONFIG.Enable_A                 {Use_ENA_Pin} \
    CONFIG.Enable_B                 {Use_ENB_Pin} \
    CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
    CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
    CONFIG.Use_RSTA_Pin             {false} \
    CONFIG.Use_RSTB_Pin             {false} \
    CONFIG.Assume_Synchronous_Clk  {true}

## ---- 5) blk_sampler_ram : Port A 1b x 16384, Port B 4b x 4096,
##         common clk, WRITE_FIRST. Instantiated x4 in SAMPLER.v ----
mk_bram blk_sampler_ram \
    CONFIG.Memory_Type              {True_Dual_Port_RAM} \
    CONFIG.Write_Width_A            {1} \
    CONFIG.Write_Depth_A            {16384} \
    CONFIG.Read_Width_A             {1} \
    CONFIG.Write_Width_B            {4} \
    CONFIG.Read_Width_B             {4} \
    CONFIG.Operating_Mode_A         {WRITE_FIRST} \
    CONFIG.Operating_Mode_B         {WRITE_FIRST} \
    CONFIG.Enable_A                 {Use_ENA_Pin} \
    CONFIG.Enable_B                 {Use_ENB_Pin} \
    CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
    CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
    CONFIG.Use_RSTA_Pin             {false} \
    CONFIG.Use_RSTB_Pin             {false} \
    CONFIG.Assume_Synchronous_Clk  {true}

## Generate all output products
foreach ip {blk_cpu_stacks blk_cpu_ram blk_host_fifo blk_logger_ram blk_sampler_ram} {
    generate_target all [get_ips $ip]
}
puts "==> All 5 BMG IPs created and generated."