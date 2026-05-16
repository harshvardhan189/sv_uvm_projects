`ifndef VIP_ENV_SV
`define VIP_ENV_SV

//---------------------------------------
// class  : vip_env
// parent : base_env
//---------------------------------------
class vip_env extends base_env;

  `uvm_component_utils(vip_env);

  uart_agent u_agt;
  spi_agent  s_agt;

  function new(string name = "vip_env", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // UART VIP
    u_agt = uart_agent::type_id::create("u_agt", this);

    // SPI VIP
    s_agt = spi_agent::type_id::create("s_agt", this);
  endfunction : build_phase

endclass : vip_env
`endif
