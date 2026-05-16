`ifndef UART_PACKAGE_SV
`define UART_PACKAGE_SV

//-----------------------------------------
// Package : uart_package
//-----------------------------------------
package uart_package;

  import uvm_pkg::*;
  import base_package::*;

  `include "uart_transaction.sv"
  `include "uart_sequencer.sv"
  `include "uart_driver.sv"
  `include "uart_monitor.sv"
  `include "uart_agent.sv"

endpackage : uart_package
`endif
