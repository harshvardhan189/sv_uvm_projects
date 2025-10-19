//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_scoreboard.sv
// class   : count_scoreboard
// parent  : uvm_scoreboard
//----------------------------------------------------
`ifndef count_scoreboard
`define count_scoreboard

class count_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(count_scoreboard)

  // Variable and handle decleration
  count_config cfg;
  uvm_tlm_analysis_fifo #(count_transaction) count_fifo;
  count_transaction pkt;

  //declare extern method
  extern virtual function new(string name "count_scoreboard", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void run_phase(uvm_phase phase);
endclass : count_scoreboard

`endif // count_scoreboard

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_scoreboard::new(string name "count_scoreboard", uvm_component parent);
  super.new(name,parent)
  count_fifo = new("count_fifo",this);
endfunction : new

//----------------------------------------------------
// Method : build_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual function void count_scoreboard::build_phase(uvm_phase phase);
  if(!uvm_config_db#(count_config)::get(this,"",count_config,cfg))
    `uvm_fatal("count_scoreboard", "Failed to get config")
  super.build_phase(phase);
endfunction : build_phase

//----------------------------------------------------
// Method : run_phase
// Argument : uvm_phase
//----------------------------------------------------
virtual task void count_scoreboard::run_phase(uvm_phase phase);
TODO:

endtask :run_phase
