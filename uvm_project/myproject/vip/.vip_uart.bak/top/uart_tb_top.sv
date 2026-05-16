//----------------------------------------------------
// project : uart
// file : uart_tb_top.sv
// description : Top module for UART VIP testbench.
//               Instantiates interface and starts
//               UVM test execution.
//----------------------------------------------------

`timescale 1ns / 1ps

module uart_tb_top;

  //-------------------------------------------------
  // Import Packages
  //-------------------------------------------------

  import uvm_pkg::*;
  import uart_pkg::*;

  //-------------------------------------------------
  // Interface Instance
  //-------------------------------------------------

  uart_if uart_if_inst ();  // UART interface instance

  //-------------------------------------------------
  // Initial Block
  //-------------------------------------------------

  //---------------------------------------
  // Method : initial
  // argument : none
  // description : Sets virtual interface into
  //               configuration database and
  //               starts UVM test.
  //---------------------------------------
  initial begin

    // Set virtual interface for entire environment
    uvm_config_db#(virtual uart_if)::set(null, "*", "vif", uart_if_inst);

    // Start UVM test
    run_test("uart_base_test");

  end

endmodule : uart_tb_top
