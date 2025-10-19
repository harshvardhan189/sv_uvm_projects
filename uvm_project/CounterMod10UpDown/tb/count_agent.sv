//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_agent.sv
// class   : count_agent
// parent  : uvm_agent
//----------------------------------------------------
class count_agent extends uvm_agent;

  `uvm_component_utils(count_agent)

  // Variable and handle decleration
  count_driver drvh;
  count_monitor monh;
  count_sequencer seqrh;
  count_config cfg;

  //declare extern method
  extern virtual function new(string name "count_agent", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass : count_agent

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_agent::new(string name "count_agent", uvm_component parent);
  super.new(name,parent)
endfunction : new

//----------------------------------------------------
// Method : build_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual function void count_agent::build_phase(uvm_phase phase);
  if(!uvm_config_db#(count_config)::get(this,"",count_config,cfg))
    `uvm_fatal("count_agent", "Failed to get config")
  super.build_phase(phase);

  // create components
  drvh = count_driver::type_id::create("drvh",this);
  monh = count_monitor::type_id::create("monh",this);
  seqrh = count_sequencer::type_id::create("seqrh",this);
endfunction : build_phase

//----------------------------------------------------
// Method : connect_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual function void count_agent::connect_phase(uvm_phase phase);
drvh.seq_item_port.connect(seqrh.seq_item_export);
endfunction : connect_phase
