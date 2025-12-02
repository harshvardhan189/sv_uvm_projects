//-------------------------------------------------------------
// project : UART
// class  : uart_test
//-------------------------------------------------------------
class uart_test extends uvm_test;

  `uvm_component_utils(uart_test);

  function new(string name = "uart_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void config_bridge();
    Hcfg = AHB_config::type_id::create("Hcfg");
    if (!uvm_config_db#(virtual AHB_if)::get(this, "", "Hvif", Hcfg.Hvif))
      `uvm_fatal("CONFIG", "can't get virtual interface from test ")
    Hcfg.is_active = UVM_ACTIVE;
    cfg.Hcfg = Hcfg;
    Pcfg = APB_config::type_id::create("Pcfg");
    if (!uvm_config_db#(virtual APB_if)::get(this, "", "Pvif", Pcfg.Pvif))
      `uvm_fatal("CONFIG", "can't get virtual interface from test ")
    Pcfg.is_active = UVM_ACTIVE;
    cfg.Pcfg = Pcfg;
  endfunction

  function void build_phase(uvm_phase phase);
    cfg = bridge_config::type_id::create("cfg");
    uvm_config_db#(bridge_config)::set(this, "*", "bridge_config", cfg);
    config_bridge();
    super.build_phase(phase);
    envh = AHB_APB_env::type_id::create("envh", this);
  endfunction

  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology;
  endfunction

endclass
