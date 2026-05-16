`ifndef BASE_PREDICTOR_SV
`define BASE_PREDICTOR_SV

///---------------------------------------
// class  : base_scoreboard
// parent : uvm_scoreboard
///---------------------------------------
class base_predictor extends uvm_component;


  `uvm_component_utils(base_predictor);

  function new(string name = "base_predictor", uvm_component parent);
    super.new(name, parent);
  endfunction


endclass : base_predictor
`endif
