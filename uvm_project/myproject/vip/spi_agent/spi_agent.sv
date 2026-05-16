`ifndef SPI_AGENT
`define SPI_AGENT

//--------------------------------------------
// class : spi_agent
// parent : base_agent
//--------------------------------------------
class spi_agent extends base_agent;

  // Factory Registration
  `uvm_component_utils(spi_agent);

  spi_monitor s_monitor;
  spi_driver s_driver;
  spi_sequencer s_sequencer;

  function new(string name = "spi_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    s_monitor = spi_monitor::type_id::create("s_monitor", this);
    s_driver = spi_driver::type_id::create("s_driver", this);
    s_sequencer = spi_sequencer::type_id::create("s_sequencer", this);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    //     s_driver.seq_item_port.connect(s_sequencer.seq_item_export);
  endfunction : connect_phase

endclass : spi_agent
`endif
