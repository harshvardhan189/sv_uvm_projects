`ifndef VIP_VIRTUAL_SEQ_SV
`define VIP_VIRTUAL_SEQ_SV

//----------------------------------------
// class  : vip_virtual_seq
// parent : base_sequence
//----------------------------------------
class vip_virtual_seq extends base_sequence;

  `uvm_object_utils(vip_virtual_seq);
  `uvm_declare_p_sequencer(vip_virtual_sequencer);
  function new(string name = "vip_virtual_seq");
    super.new(name);
  endfunction

  // virtual task pre_body();
  //   uvm_phase starting_phase = get_starting_phase();
  //   super.pre_body();
  //   if (starting_phase != null) begin
  //     starting_phase.raise_objection(this);
  //   end
  //   if (starting_phase != null) begin
  //     uvm_phase run_phase = uvm_domain::get_common_domain().find(uvm_run_phase::get());
  //     run_phase.raise_objection(this);
  //   end
  // endtask

  task body();
    super.body();
  endtask

  // virtual task post_body();
  //   uvm_phase starting_phase = get_starting_phase();
  //
  //   //super.post_body();
  //   if (starting_phase != null) begin
  //     starting_phase.drop_objection(this);
  //     `uvm_info(get_type_name(), $sformatf("%0s post_body droping %0s objection.",
  //                                          get_sequence_path(), starting_phase.get_name()),
  //               UVM_HIGH)
  //   end
  //   if (starting_phase != null) begin
  //     uvm_phase run_phase = uvm_domain::get_common_domain().find(uvm_run_phase::get());
  //     `uvm_info(get_type_name(), $sformatf("%s post_body droping %0s objection.",
  //                                          get_sequence_path(), run_phase.get_name()), UVM_LOW)
  //     run_phase.drop_objection(this);
  //   end
  // endtask

endclass : vip_virtual_seq
`endif
