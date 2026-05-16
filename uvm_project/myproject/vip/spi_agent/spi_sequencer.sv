`ifndef SPI_SEQUENCER
`define SPI_SEQUENCER

//----------------------------------------------------
// class : spi_sequencer
// parent : base_sequencer
//----------------------------------------------------
class spi_sequencer extends base_sequencer #(spi_transaction);

  `uvm_component_utils(spi_sequencer);

  function new(string name = "spi_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass : spi_sequencer

`endif  // SPI_SEQUENCER
