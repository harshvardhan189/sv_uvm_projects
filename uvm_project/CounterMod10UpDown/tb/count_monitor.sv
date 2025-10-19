//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_monitor.sv
// class   : count_monitor
// parent  : uvm_monitor
//----------------------------------------------------
class count_monitor extends uvm_monitor;

  `uvm_component_utils(count_monitor)

  uvm_analysis_port #(count_monitor) mport;

  // variable and handel declaration
  count_trans pkt;
  virtual counter_if vif;
  count_config cfg;

  //declare extern method
  extern virtual function new(string name "count_monitor", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task run_phase(uvm_phase phase);
  extern virtual task collect(count_trans pkt);

endclass : count_monitor

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_monitor::new(string name "count_monitor", uvm_component parent);
  super.new(name,parent)
endfunction : new

//----------------------------------------------------
// method : build_phase
// argument : uvm_phase
//----------------------------------------------------
virtual function void count_monitor::build_phase(uvm_phase phase);
  if(!uvm_config_db #(count_config)::get(this,"",count_config,cfg))
    `uvm_fatal("COUNT_MONITOR","Failed to get config")
  super.build_phase(phase);
endfunction : build_phase

//----------------------------------------------------
// method : connect_phase
// argument : uvm_phase
//----------------------------------------------------
virtual function void count_monitor::connect_phase(uvm_phase phase);
  this.vif=cfg.vif;
  super.connect_phase(phase)
endfunction : connect_phase

//----------------------------------------------------
// method : run_phase
// argument : uvm_phase
//----------------------------------------------------
virtual task count_monitor::run_phase(uvm_phase phase);
  TODO :
endtask : run_phase

//----------------------------------------------------
// method : collect
// argument : uvm_phase
//----------------------------------------------------
virtual task count_monitor::collect(count_trans pkt);
  TODO :
endtask : collect
