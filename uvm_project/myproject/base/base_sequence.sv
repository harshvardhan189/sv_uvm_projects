`ifndef BASE_SEQUENCE_SV
`define BASE_SEQUENCE_SV

//-------------------------------------------
// class  : base_sequence
// parent : uvm_sequence
//-------------------------------------------
class base_sequence #(
    type REQ = uvm_sequence_item
) extends uvm_sequence #(REQ);

  protected bit call_pre_post_body = 1;
  `uvm_object_param_utils(base_sequence#(REQ));

  function new(string name = "base_sequence");
    super.new(name);
  endfunction

  virtual task start(uvm_sequencer_base sequencer, uvm_sequence_base parent_sequence = null,
                     int this_priority = -1, bit call_pre_post = 1);
    super.start(sequencer, parent_sequence, this_priority, call_pre_post_body);
  endtask
endclass
`endif
