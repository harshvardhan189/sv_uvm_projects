//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_env.sv
// class   : count_env
// parent  : uvm_env
//----------------------------------------------------
class count_env extends uvm_env;

  `uvm_component_utils(count_env)

  // Variable and handle decleration
  count_config cfg;
  count_agent agth;
  count_scoreboard sb;

  //declare extern method
  extern virtual function new(string name "count_env", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass : count_env

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_env::new(string name "count_env", uvm_component parent);
  super.new(name,parent)
endfunction : new

//----------------------------------------------------
// Method : build_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual function void count_env::build_phase(uvm_phase phase);
  if(!uvm_config_db#(count_config)::get(this,"",count_config,cfg))
    `uvm_fatal("count_env", "Failed to get config")
  super.build_phase(phase);

  // create components
  agth = count_agent::type_id::create("agth",this);
  sb = count_scoreboard::type_id::create("sb",this);
endfunction : build_phase

//----------------------------------------------------
// Method : connect_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual function void count_env::connect_phase(uvm_phase phase);
  agth.monh.mport.connect(sb.count_fifo);
endfunction : connect_phase
