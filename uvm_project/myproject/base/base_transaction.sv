`ifndef BASE_TRANSACTION_SV
`define BASE_TRANSACTION_SV

///------------------------------------------
// class  : base_transaction
// parent : uvm_sequence_item
///------------------------------------------
class base_transaction extends uvm_sequence_item;

  `uvm_object_utils(base_transaction)

  function new(string name = "base_transaction");
    super.new(name);
  endfunction

endclass : base_transaction

`endif
