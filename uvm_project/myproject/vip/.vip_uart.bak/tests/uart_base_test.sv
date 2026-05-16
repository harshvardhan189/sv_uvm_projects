//----------------------------------------------------
// project : uart
// file : uart_base_test.sv
// description : Base test for UART VIP.
//               Instantiates environment and
//               configures UART agent.
//----------------------------------------------------

`ifndef UART_BASE_TEST_SV
`define UART_BASE_TEST_SV

class uart_base_test extends uvm_test;

  `uvm_component_utils(uart_base_test)

  //-------------------------------------------------
  // Environment Handle
  //-------------------------------------------------

  uart_env m_env;  // UART environment instance

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
  // description : Constructor for uart_base_test.
  //---------------------------------------
  function new(string name = "uart_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new


  //-------------------------------------------------
  // Build Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : build_phase
  // argument : uvm_phase phase - current phase
  // description : Creates environment and UART
  //               configuration object and pushes
  //               configuration to agent.
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create environment
    m_env               = uart_env::type_id::create("m_env", this);

    // Create configuration object
    m_cfg               = uart_config::type_id::create("m_cfg");

    //-------------------------------------------------
    // Set Configuration Values
    //-------------------------------------------------

    m_cfg.is_active     = UVM_ACTIVE;  // Agent active mode
    m_cfg.agent_mode    = UART_MASTER;  // Master mode
    m_cfg.baud_rate     = 115200;  // Baud rate
    m_cfg.data_bits     = 8;  // 8 data bits
    m_cfg.parity_enable = 0;  // No parity
    m_cfg.parity_type   = UART_PARITY_NONE;  // Parity type
    m_cfg.stop_bits     = UART_STOP_1;  // 1 stop bit

    //-------------------------------------------------
    // Push Configuration to Agent
    //-------------------------------------------------

    uvm_config_db#(uart_config)::set(this, "m_env", "uart_config", m_cfg);

  endfunction : build_phase


  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction

  virtual task run_phase(uvm_phase phase);
    super.run_phase();
  endtask : run_phase
endclass : uart_base_test
`endif
