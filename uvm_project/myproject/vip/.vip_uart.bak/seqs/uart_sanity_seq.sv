//----------------------------------------------------
// project : uart
// file : uart_sanity_seq.sv
//----------------------------------------------------

class uart_sanity_seq extends uvm_sequence #(uart_transaction);
  `uvm_object_utils(uart_sanity_seq);

  function new(string name = "uart_sanity_seq");
    super.new(name);
  endfunction

  uart_transaction req;
  task body;

    super.body();
    req = uart_transaction::type_id::create("req");
    start_item(req);
    #10;
    `uvm_info("uart_sanity_seq", "sequence", UVM_NONE)
    finish_item(req);
  endtask
endclass
