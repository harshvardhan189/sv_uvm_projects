`ifndef VIP_BASE_TEST_SV
`define VIP_BASE_TEST_SV

//-------------------------------------------
// class  : vip_base_test
// parent : base_test
//-------------------------------------------
class vip_base_test extends base_test;

  `uvm_component_utils(vip_base_test);

  vip_env v_env;

  function new(string name = "vip_base_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    v_env = vip_env::type_id::create("v_env", this);
  endfunction : build_phase

endclass : vip_base_test
`endif
