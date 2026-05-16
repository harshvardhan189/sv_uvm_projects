`ifndef BASE_TEST_SV
`define BASE_TEST_SV

///-----------------------------------------
// class  : base_test
// parent : uvm_test
///-----------------------------------------
class base_test extends uvm_test;

  `uvm_component_utils(base_test);

  function new(string name = "base_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction : build_phase

  virtual function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology;
  endfunction : end_of_elaboration_phase
endclass
`endif
