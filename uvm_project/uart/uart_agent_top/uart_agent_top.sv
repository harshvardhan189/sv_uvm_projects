//-------------------------------------------------------------
// project : UART
// class   : uart_agent_top
//-------------------------------------------------------------
class uart_agent_top extends uvm_env;

  `uvm_component_utils(uart_agent_top)

  uart_agent agnth;
  uart_config Hcfg;
  bridge_config cfg;

  function new(string name = "uart_agent_top", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    if (!uvm_config_db#(bridge_config)::get(this, "", "bridge_config", cfg))
      `uvm_fatal("CONFIG", "can't get config form uart agent top")


    super.build_phase(phase);
    agnth = uart_agent::type_id::create("agnth", this);
    uvm_config_db#(uart_config)::set(this, "*", "uart_config", cfg.Hcfg);
  endfunction

endclass
