`ifndef UART_SEQUENCE_SV
`define UART_SEQUENCE_SV

//-------------------------------------------
// class  : uart_sequence
// parent : vip_virtual_seq
//-------------------------------------------
class uart_sequence extends base_sequence #(uart_transaction);


  `uvm_object_utils(uart_sequence);

  function new(string name = "uart_sequence");
    super.new(name);
  endfunction


  task body();
    super.body;
    #1ms;
  endtask : body

endclass
`endif
