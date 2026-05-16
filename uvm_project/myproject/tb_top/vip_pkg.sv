// `ifndef VIP_PKG_SV
// `define VIP_PKG_SV

//----------------------------------
// package : vip_pkg
//----------------------------------
package vip_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  // import base_pkg::*;
  // import spi_package::*;
  // import uart_package::*;

  `include "../base/base_transaction.sv"
  `include "../base/base_sequencer.sv"
  `include "../base/base_driver.sv"
  `include "../base/base_monitor.sv"
  `include "../base/base_agent.sv"
  `include "../base/base_predictor.sv"
  `include "../base/base_scoreboard.sv"
  `include "../base/base_env.sv"
  `include "../base/base_test.sv"

  `include "../vip/spi_agent/spi_transaction.sv"
  `include "../vip/spi_agent/spi_sequencer.sv"
  `include "../vip/spi_agent/spi_driver.sv"
  `include "../vip/spi_agent/spi_monitor.sv"
  `include "../vip/spi_agent/spi_agent.sv"

  `include "../vip/uart_agent/uart_transaction.sv"
  `include "../vip/uart_agent/uart_sequencer.sv"
  `include "../vip/uart_agent/uart_driver.sv"
  `include "../vip/uart_agent/uart_monitor.sv"
  `include "../vip/uart_agent/uart_agent.sv"

  `include "../env/vip_env.sv"
  `include "../tests/vip_base_test.sv"
endpackage : vip_pkg
// `endif
