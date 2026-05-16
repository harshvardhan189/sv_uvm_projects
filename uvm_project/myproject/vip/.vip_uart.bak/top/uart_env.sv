//----------------------------------------------------
// project : uart
// file : uart_env.sv
// description : UART environment containing
//               UART agent and configuration
//               distribution logic
//----------------------------------------------------

`ifndef UART_ENV_SV
`define UART_ENV_SV

class uart_env extends uvm_env;

  `uvm_component_utils(uart_env)

  //-------------------------------------------------
  // Agent Handle
  //-------------------------------------------------

  uart_agent  m_agent;  // UART agent instance

  //-------------------------------------------------
  // Configuration Handle
  //-------------------------------------------------

  uart_config m_cfg;  // UART configuration object

  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  //            uvm_component parent - parent handle
  // description : Constructor for uart_env.
  //---------------------------------------
  function new(string name = "uart_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new


  //-------------------------------------------------
  // Build Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : build_phase
  // argument : uvm_phase phase - current phase
  // description : Retrieves configuration from
  //               config_db and creates agent.
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Get configuration object from test
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", m_cfg)) begin
      `uvm_fatal(get_type_name(), "UART configuration not found in config_db")
    end

    // Create agent
    m_agent = uart_agent::type_id::create("m_agent", this);

    // Push configuration to agent
    uvm_config_db#(uart_config)::set(this, "m_agent", "uart_config", m_cfg);

  endfunction : build_phase

endclass : uart_env

`endif
