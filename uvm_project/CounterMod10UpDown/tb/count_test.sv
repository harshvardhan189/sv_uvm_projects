//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_test.sv
// class   : count_test
// parent  : uvm_test
//----------------------------------------------------
class count_test extends uvm_test;

  `uvm_component_utils(count_test)

  // Variable and handle decleration
  count_config cfg;
  virtual count_if vif;
  count_env env;

  //declare extern method
  extern virtual function new(string name "count_test", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
endclass : count_test

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_test::new(string name "count_test", uvm_component parent);
  super.new(name,parent)
endfunction : new

//----------------------------------------------------
// Method : build_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual function void count_test::build_phase(uvm_phase phase);
  cfg = count_config::type_id::create("cfg",this);
  if(!uvm_config_db#(virtual count_if)::get(this,"","virtual count_if",vif))
    `uvm_fatal("count_test", "Failed to get config")
  super.build_phase(phase);
  env = count_env::type_id::create("env",this);
endfunction : build_phase
