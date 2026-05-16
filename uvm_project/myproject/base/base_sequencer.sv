`ifndef BASE_SEQUENCER_SV
`define BASE_SEQUENCER_SV

//--------------------------------------//
// class  : base_sequencer
// parent : uvm_sequencer
//--------------------------------------//
class base_sequencer #(
    type REQ = uvm_sequence_item
) extends uvm_sequencer #(REQ);

  `uvm_component_param_utils(base_sequencer#(REQ));

  function new(string name = "base_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass : base_sequencer
`endif
