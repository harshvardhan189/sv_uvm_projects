//-------------------------------------------------------------
// project : UART
// class   : uart_trans
//-------------------------------------------------------------
class uart_trans extends uvm_sequence_item;

  `uvm_object_utils(uart_trans)


  function new(string name = "uart_trans");
    super.new(name);
  endfunction

endclass
