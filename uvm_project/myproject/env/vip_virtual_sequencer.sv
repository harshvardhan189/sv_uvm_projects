`ifndef VIP_VIRTUAL_SEQUENCER_SV
`define VIP_VIRTUAL_SEQUENCER_SV

//--------------------------------------------
// class  : vip_virtual_sequencer
// parent : uvm_sequencer
//--------------------------------------------
class vip_virtual_sequencer extends base_sequencer #(uvm_sequence_item);

  spi_sequencer  s_seqr;
  uart_sequencer u_seqr;

  `uvm_component_utils(vip_virtual_sequencer);

  function new(string name = "vip_virtual_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass : vip_virtual_sequencer
`endif
