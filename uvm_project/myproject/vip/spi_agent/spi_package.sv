// `ifndef SPI_PACKAGE
// `define SPI_PACKAGE

//------------------------------------------
// package : spi_package
//------------------------------------------
package spi_package;

  // import uvm_pkg::*;

  import base_pkg::*;
  `include "spi_transaction.sv"
  `include "spi_sequencer.sv"
  `include "spi_driver.sv"
  `include "spi_monitor.sv"
  `include "spi_agent.sv"

endpackage : spi_package
// `endif
