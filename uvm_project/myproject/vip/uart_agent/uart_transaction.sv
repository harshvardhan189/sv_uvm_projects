`ifndef UART_TRANSACTION_SV
`define UART_TRANSACTION_SV

//---------------------------------------------
// class  : uart_transaction
// parent : base_transaction
//---------------------------------------------
class uart_transaction extends base_transaction;

  `uvm_object_utils(uart_transaction);

  function new(string name = "uart_transaction");
    super.new(name);
  endfunction

endclass : uart_transaction
`endif
