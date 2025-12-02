//-------------------------------------------------------------
// project : UART
// class  : virtual_sequencer
//-------------------------------------------------------------
class virtual_sequencer extends uvm_sequencer #(uvm_sequence_item);

  `uvm_component_utils(virtual_sequencer)

  AHB_sequencer Hseqrh;
  APB_sequencer Pseqrh;

  function new(string name = "virtual_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass
