
//------------------------------------------
// package : spi_package
//------------------------------------------

package spi_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import base_pkg::*;

  `include "spi_transaction.sv"
  `include "spi_sequencer.sv"
  `include "spi_driver.sv"
  `include "spi_monitor.sv"
  `include "spi_agent.sv"
endpackage
