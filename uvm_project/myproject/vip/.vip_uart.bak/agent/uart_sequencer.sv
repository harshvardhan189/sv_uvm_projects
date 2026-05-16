//----------------------------------------------------
// project : uart
// file : uart_sequencer.sv
// description : UART sequencer responsible for
//               arbitrating and sending transactions
//               to the driver
//----------------------------------------------------

`ifndef UART_SEQUENCER_SV
`define UART_SEQUENCER_SV

class uart_sequencer extends uvm_sequencer #(uart_transaction);

  `uvm_component_utils(uart_sequencer)

  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  //            uvm_component parent - parent handle
  // description : Constructor for uart_sequencer.
  //               Calls base class constructor.
  //---------------------------------------
  function new(string name = "uart_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

endclass : uart_sequencer

`endif
