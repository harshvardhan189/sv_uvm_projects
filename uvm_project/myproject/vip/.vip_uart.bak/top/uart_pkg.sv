//----------------------------------------------------
// project : uart
// file : uart_pkg.sv
// description : UART VIP package containing all
//               protocol components
//----------------------------------------------------

`ifndef UART_PKG_SV
`define UART_PKG_SV

package uart_pkg;

  //-------------------------------------------------
  // Import UVM Package
  //-------------------------------------------------

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  //-------------------------------------------------
  // Include UART VIP Files
  //-------------------------------------------------

  `include "uart_config.sv"
  `include "uart_transaction.sv"
  `include "uart_smoke_seq.sv"
  `include "uart_sequencer.sv"
  `include "uart_driver.sv"
  `include "uart_monitor.sv"
  `include "uart_agent.sv"
  `include "uart_env.sv"
  `include "uart_base_test.sv"

endpackage : uart_pkg

`endif
