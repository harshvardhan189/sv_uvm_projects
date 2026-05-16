`ifndef SPI_MONITOR
`define SPI_MONITOR

//----------------------------------------------------
// class : spi_monitor
// parent : base_monitor
//----------------------------------------------------
class spi_monitor extends base_monitor #(spi_transaction);

  `uvm_component_utils(spi_monitor);

  function new(string name = "spi_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction
endclass : spi_monitor

`endif  // SPI_MONITOR
