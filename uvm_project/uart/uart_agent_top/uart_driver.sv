//-------------------------------------------------------------
// project : UART
// class   : uart_driver
//-------------------------------------------------------------
class uart_driver extends uvm_driver #(uart_xtn);

  `uvm_component_utils(uart_driver)

  virtual uart_if.uart_DRV_MP Hvif;
  uart_config Hcfg;

  function new(string name = "uart_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", Hcfg))
      `uvm_fatal("CONFIG", "Can't get config from uart Driver")
    super.build_phase(phase);
  endfunction

  function void connect_phase(uvm_phase phase);
    Hvif = Hcfg.Hvif;
  endfunction

  task run_phase(uvm_phase phase);

    forever begin
      seq_item_port.get_next_item(req);
      drive(req);
      seq_item_port.item_done();
    end

  endtask

  task drive(uart_xtn xtn);

  endtask

endclass
