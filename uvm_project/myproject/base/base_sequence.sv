`ifndef BASE_SEQUENCE_SV
`define BASE_SEQUENCE_SV

//-------------------------------------------
// class  : base_sequence
// parent : uvm_sequence
//-------------------------------------------
class base_sequence #(
    type REQ = uvm_sequence_item
) extends uvm_sequence #(REQ);

  `uvm_object_param_utils(base_sequence#(REQ));

  function new(string name = "base_sequence");
    super.new(name);
  endfunction

endclass
`endif
