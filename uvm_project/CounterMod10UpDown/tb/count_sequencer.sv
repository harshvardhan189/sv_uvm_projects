//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_sequencer.sv
// class   : count_sequencer
// parent  : uvm_sequencer
//----------------------------------------------------
class count_sequencer extends uvm_sequencer;

  `uvm_component_utils(count_sequencer)

  //declare extern method
  extern virtual function new(string name "count_sequencer", uvm_component parent);
endclass : count_sequencer

//----------------------------------------------------
// Method : new
// Argument : name, parent
//----------------------------------------------------
virtual function count_sequencer::new(string name "count_sequencer", uvm_component parent);
  super.new(name,parent)
endfunction : new
