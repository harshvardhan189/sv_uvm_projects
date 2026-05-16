`ifndef UART_AGENT_SV
`define UART_AGENT_SV

//-------------------------------------
// class  : uart_agent
// parent : base_agent
//-------------------------------------
class uart_agent extends base_agent;

  `uvm_component_utils(uart_agent);

  uart_driver u_driver;
  uart_sequencer u_sequencer;
  uart_monitor u_monitor;

  function new(string name = "uart_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    u_driver = uart_driver::type_id::create("u_driver", this);
    u_sequencer = uart_sequencer::type_id::create("u_sequencer", this);
    u_monitor = uart_monitor::type_id::create("u_monitor", this);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    u_driver.seq_item_port.connect(u_sequencer.seq_item_export);
  endfunction : connect_phase

endclass : uart_agent
`endif
