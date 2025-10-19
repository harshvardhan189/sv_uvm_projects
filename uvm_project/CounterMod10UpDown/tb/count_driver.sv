//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_driver.sv
// class   : count_driver
// parent  : uvm_driver
//----------------------------------------------------
class count_driver extends uvm_driver #(count_trans);

  `uvm_component_utils(count_driver)

  // variable and handel declaration
  virtual counter_if vif;
  count_config cfg;

  //declare extern method
  extern virtual function new(string name "count_driver", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task run_phase(uvm_phase phase);
  extern virtual task drive(count_trans pkt);

endclass : count_driver

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_driver::new(string name "count_driver", uvm_component parent);
  super.new(name,parent)
endfunction : new

//----------------------------------------------------
// method : build_phase
// argument : uvm_phase
//----------------------------------------------------
virtual function void count_drive::build_phase(uvm_phase phase);
  if(!uvm_config_db #(count_config)::get(this,"",count_config,cfg))
    `uvm_fatal("COUNT_DRIVER","Failed to get config")
  super.build_phase(phase);
endfunction : build_phase

//----------------------------------------------------
// method : connect_phase
// argument : uvm_phase
//----------------------------------------------------
virtual function void connect_phase(uvm_phase phase);
  this.vif=cfg.vif;
  super.connect_phase(phase)
endfunction : connect_phase

//----------------------------------------------------
// method : run_phase
// argument : uvm_phase
//----------------------------------------------------
virtual task count_drive::run_phase(uvm_phase phase);
  TODO :
endtask : run_phase

//----------------------------------------------------
// method : drive
// argument : uvm_phase
//----------------------------------------------------
virtual task count_drive::drive(count_trans pkt);
endtask : drive
