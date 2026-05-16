`ifndef BASE_SCOREBOARD_SV
`define BASE_SCOREBOARD_SV

///---------------------------------------
// class  : base_scoreboard
// parent : uvm_scoreboard
///---------------------------------------
class base_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(base_scoreboard);

  function new(string name = "base_scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction


endclass : base_scoreboard
`endif
