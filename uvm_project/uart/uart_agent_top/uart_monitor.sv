//-------------------------------------------------------------
// project : UART
// class   : uart_monitor
//-------------------------------------------------------------
class uart_monitor extends uvm_monitor;

  `uvm_component_utils(uart_monitor)

  virtual uart_if.uart_MON_MP Hvif;
  uart_config Hcfg;

  uvm_analysis_port #(uart_xtn) mport;

  function new(string name = "uart_monitor", uvm_component parent);
    super.new(name, parent);
    mport = new("mport", this);
  endfunction

  function void build_phase(uvm_phase phase);
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", Hcfg))
      `uvm_fatal("CONFIG", "Can't get config from uart Monitor")
    super.build_phase(phase);
  endfunction

  function void connect_phase(uvm_phase phase);
    Hvif = Hcfg.Hvif;
  endfunction

  task run_phase(uvm_phase phase);

    while (Hvif.uart_MON_CB.Hreadyout !== 1) @(Hvif.uart_MON_CB);

    //`uvm_info("uart_MONITOR","out of while 1",UVM_LOW)
    forever collect_data();
  endtask

  task collect_data();
    uart_xtn xtn;
    xtn = uart_xtn::type_id::create("xtn");

    `uvm_info("uart_MONITOR", $sformatf("data from uart monitor \n %s", xtn.sprint()), UVM_LOW)

    mport.write(xtn);
  endtask

endclass
