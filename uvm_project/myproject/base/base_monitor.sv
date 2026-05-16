`ifndef BASE_MONITOR_SV
`define BASE_MONITOR_SV

//-----------------------------------------
// class  : base_monitor
// parent : uvm_monitor
//-----------------------------------------
class base_monitor #(
    type REQ = uvm_sequence_item
) extends uvm_monitor;

  `uvm_component_param_utils(base_monitor#(REQ));

  function new(string name = "base_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass : base_monitor
`endif
