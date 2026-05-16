`ifndef VIP_TEST_SEQ_SV
`define VIP_TEST_SEQ_SV

//-------------------------------------------
// class  : vip_test_seq
// parent : vip_virtual_seq
//-------------------------------------------
class vip_test_seq extends vip_virtual_seq;


  `uvm_object_utils(vip_test_seq);

  function new(string name = "vip_test_seq");
    super.new(name);
  endfunction


  task body();
    super.body;
  endtask : body

endclass
`endif
