//----------------------------------------------------
// project : uart
// file : uart_agent.sv
// description : UART agent containing driver,
//               sequencer and monitor components.
//               Supports master/slave configuration.
//----------------------------------------------------

`ifndef UART_AGENT_SV
`define UART_AGENT_SV

class uart_agent extends uvm_agent;

  `uvm_component_utils(uart_agent)

  //-------------------------------------------------
  // Component Handles
  //-------------------------------------------------

  uart_driver    m_driver;  // UART driver handle
  uart_sequencer m_sequencer;  // UART sequencer handle
  uart_monitor   m_monitor;  // UART monitor handle

  //-------------------------------------------------
  // Configuration Handle
  //-------------------------------------------------

  uart_config    m_cfg;  // UART configuration object

  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  //            uvm_component parent - parent handle
  // description : Constructor for uart_agent.
  //---------------------------------------
  function new(string name = "uart_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new


  //-------------------------------------------------
  // Build Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : build_phase
  // argument : uvm_phase phase - current phase
  // description : Retrieves configuration object
  //               and creates sub-components.
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Get configuration object
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", m_cfg)) begin
      `uvm_fatal(get_type_name(), "UART configuration not found in config_db")
    end

    // Set agent active/passive mode
    is_active = m_cfg.is_active;

    // Create driver & sequencer if active
    if (is_active == UVM_ACTIVE) begin
      m_driver    = uart_driver::type_id::create("m_driver", this);
      m_sequencer = uart_sequencer::type_id::create("m_sequencer", this);

      // Push config to driver
      uvm_config_db#(uart_config)::set(this, "m_driver", "uart_config", m_cfg);
    end

    // Create monitor
    m_monitor = uart_monitor::type_id::create("m_monitor", this);

    // Push config to monitor
    uvm_config_db#(uart_config)::set(this, "m_monitor", "uart_config", m_cfg);

  endfunction : build_phase


  //-------------------------------------------------
  // Connect Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : connect_phase
  // argument : uvm_phase phase - current phase
  // description : Connects sequencer to driver
  //               when agent is active.
  //---------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);

    if (is_active == UVM_ACTIVE) begin
      m_driver.seq_item_port.connect(m_sequencer.seq_item_export);
    end

  endfunction : connect_phase

endclass : uart_agent

`endif
