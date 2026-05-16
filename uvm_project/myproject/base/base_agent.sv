`ifndef BASE_AGENT_SV
`define BASE_AGENT_SV

//--------------------------------------------
// class  : base_agent
// parent : uvm_component
//--------------------------------------------
class base_agent extends uvm_component;

  `uvm_component_utils(base_agent);

  protected static base_driver b_driver;
  base_monitor b_monitor;
  base_sequencer b_sequencer;

  function new(string name = "base_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
  endfunction : connect_phase
endclass : base_agent
`endif
