//----------------------------------------------------
// project : uart
// file : uart_transaction.sv
// description : UART transaction class used for
//               communication between sequencer,
//               driver and monitor
//----------------------------------------------------

`ifndef UART_TRANSACTION_SV
`define UART_TRANSACTION_SV

class uart_transaction extends uvm_sequence_item;

  //-------------------------------------------------
  // Factory Registration
  //-------------------------------------------------
  `uvm_object_utils(uart_transaction)

  //-------------------------------------------------
  // variable declaration
  //-------------------------------------------------
  logic [DATA_SIZE-1:0] data;
  logic start_bit;
  logic stop_bit;
  logic parity;
  logic idle;

  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  // description : Constructor for uart_transaction
  //               class. Initializes base class.
  //---------------------------------------
  function new(string name = "uart_transaction");
    super.new(name);
  endfunction : new

endclass : uart_transaction

`endif
