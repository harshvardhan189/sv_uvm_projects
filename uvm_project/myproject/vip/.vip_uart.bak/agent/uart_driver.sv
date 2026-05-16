//----------------------------------------------------
// file : uart_driver.sv
// description : UART driver responsible for driving
//               serial transactions onto interface
//----------------------------------------------------

`ifndef UART_DRIVER_SV
`define UART_DRIVER_SV

class uart_driver extends uvm_driver #(uart_transaction);

  `uvm_component_utils(uart_driver)

  //-------------------------------------------------
  // Virtual Interface
  //-------------------------------------------------

  typedef enum logic [2:0] {
    IDLE,
    START_BIT,
    DATA,
    PARITY,
    STOP_BIT
  } uart_state_e;


  virtual uart_if vif;  // Virtual interface handle to UART interface
  uart_state_e state;
  uart_config m_cfg;  // UART configuration object
  uart_transaction trans;
  bit tx_clk;
  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  //            uvm_component parent - parent handle
  // description : Constructor for uart_driver.
  //               Calls base class constructor.
  //---------------------------------------
  function new(string name = "uart_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new


  //-------------------------------------------------
  // Build Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : build_phase
  // argument : uvm_phase phase - current phase
  // description : Retrieves virtual interface and
  //               configuration object.
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Get configuration
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", m_cfg)) begin
      `uvm_fatal(get_type_name(), "UART configuration not found in driver")
    end
    vif = m_cfg.vif;
  endfunction : build_phase


  //-------------------------------------------------
  // Run Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : run_phase
  // argument : uvm_phase phase - current phase
  // description : Main driver execution phase.
  //               Driving logic will be added in
  //               later implementation stage.
  //---------------------------------------
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    vif.tx = 1;
    state  = IDLE;

    fork
      generate_clk();
    join_none

    forever begin
      seq_item_port.get_next_item(req);
      drive_tx(req);
      `uvm_info("DRV", $sformatf("Got item: %0p", req), UVM_LOW)
      seq_item_port.item_done();
    end
  endtask : run_phase

  //---------------------------------------------
  // Method : generate_clk
  // Description : This method send data to the interface.
  //---------------------------------------------
  virtual task generate_clk();

    forever begin
      #(m_cfg.bit_period / 2) tx_clk = !tx_clk;
    end
  endtask : generate_clk

  //---------------------------------------------
  // Method : drive_tx
  // Description : This method send data to the interface.
  //---------------------------------------------
  virtual task drive_tx(uart_transaction trans);

    @(posedge tx_clk) state = START_BIT;
    vif.tx = 0;

    state  = DATA;
    foreach (trans.data[i]) begin
      @(posedge tx_clk) vif.tx = trans.data[i];
    end  // DATA transfer

    if (m_cfg.parity_enable) begin
      @(posedge tx_clk);
      state  = PARITY;
      vif.tx = trans.parity;
    end

    @(posedge tx_clk) state = STOP_BIT;
    vif.tx = 1;

    @(posedge tx_clk) state = IDLE;
    vif.tx = 1;
  endtask : drive_tx

endclass : uart_driver

`endif
