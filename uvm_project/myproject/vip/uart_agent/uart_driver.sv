`ifndef UART_DRIVER_SV
`define UART_DRIVER_SV

//-----------------------------------------------------
// class  : uart_driver
// parent : base_driver
//-----------------------------------------------------
class uart_driver extends base_driver #(uart_transaction);

  `uvm_component_utils(uart_driver);

  function new(string name = "uart_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass : uart_driver
`endif
