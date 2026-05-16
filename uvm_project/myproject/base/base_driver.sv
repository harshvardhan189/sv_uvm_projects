`ifndef BASE_DRIVER_SV
`define BASE_DRIVER_SV

//-----------------------------------------
// class : base_driver
// parent : uvm_driver
//-----------------------------------------
class base_driver #(
    type REQ = uvm_sequence_item
) extends uvm_driver #(REQ);


  `uvm_component_param_utils(base_driver#(REQ));

  function new(string name = "base_driver", uvm_component parent);
    super.new(name, parent);
  endfunction


endclass : base_driver
`endif
