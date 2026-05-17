
package uart_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import base_pkg::*;

  `include "uart_transaction.sv"
  `include "uart_sequencer.sv"
  `include "uart_driver.sv"
  `include "uart_monitor.sv"
  `include "uart_agent.sv"
endpackage
