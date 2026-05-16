`ifndef BASE_ENV_SV
`define BASE_ENV_SV

///------------------------------------------
// class  : base_env
// parent : uvm_component
///------------------------------------------
class base_env extends uvm_component;

  `uvm_component_utils(base_env);

  function new(string name = "base_env", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction : build_phase

endclass : base_env

`endif
