`ifndef SPI_DRIVER
`define SPI_DRIVER

//----------------------------------------------------
// class : spi_driver
// parent : base_driver
//----------------------------------------------------
class spi_driver extends base_driver #(spi_transaction);

  `uvm_component_utils(spi_driver);

  function new(string name = "spi_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction : build_phase

endclass : spi_driver

`endif  // SPI_DRIVER
