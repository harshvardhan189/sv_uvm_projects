`ifndef UART_MONITOR_SV
`define UART_MONITOR_SV

//---------------------------------------------------------
// class  : uart_monitor
// parent : base_monitor
//---------------------------------------------------------
class uart_monitor extends base_monitor #(uart_transaction);

  `uvm_component_utils(uart_monitor);

  function new(string name = "uart_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass : uart_monitor
`endif
