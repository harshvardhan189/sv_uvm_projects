//-------------------------------------------------------------
// project : UART
// class   : uart_config
//-------------------------------------------------------------
class uart_config extends uvm_object;

  `uvm_object_utils(uart_config)

  function new(string name = "uart_config");
    super.new(name);
  endfunction

  virtual uart_if Hvif;

  uvm_active_passive_enum is_active = UVM_ACTIVE;

  static int drv_sent_xtn_cnt = 0;
  static int mon_rcvd_xtn_cnt = 0;

endclass
