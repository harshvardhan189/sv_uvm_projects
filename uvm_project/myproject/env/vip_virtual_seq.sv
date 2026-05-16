`ifndef VIP_VIRTUAL_SEQ_SV
`define VIP_VIRTUAL_SEQ_SV

//----------------------------------------
// class  : vip_virtual_seq
// parent : base_sequence
//----------------------------------------
class vip_virtual_seq extends base_sequence #(uvm_sequence_item);

  `uvm_object_utils(vip_virtual_seq);
  `uvm_declare_p_sequencer(vip_virtual_sequencer)

  function new(string name = "vip_virtual_seq");
    super.new(name);
  endfunction

endclass : vip_virtual_seq
`endif
