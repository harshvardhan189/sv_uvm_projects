//----------------------------------------------------
// project : uart
// file : uart_monitor.sv
// description : UART monitor responsible for
//               sampling serial activity from
//               interface and publishing
//               transactions
//----------------------------------------------------

`ifndef UART_MONITOR_SV
`define UART_MONITOR_SV

class uart_monitor extends uvm_monitor;

  `uvm_component_utils(uart_monitor)

  //-------------------------------------------------
  // Virtual Interface
  //-------------------------------------------------

  virtual uart_if vif;  // Virtual interface handle to UART interface
  uart_config m_cfg;  // UART configuration object
  uart_state_e state;
  //-------------------------------------------------
  // Analysis Port
  //-------------------------------------------------

  uvm_analysis_port #(uart_transaction) ap;  // Analysis port to broadcast transactions

  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  //            uvm_component parent - parent handle
  // description : Constructor for uart_monitor.
  //---------------------------------------
  function new(string name = "uart_monitor", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new


  //-------------------------------------------------
  // Build Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : build_phase
  // argument : uvm_phase phase - current phase
  // description : Creates analysis port and
  //               retrieves configuration.
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    ap = new("ap", this);

    // Get configuration
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", m_cfg)) begin
      `uvm_fatal(get_type_name(), "UART configuration not found in monitor")
    end

  endfunction : build_phase


  //-------------------------------------------------
  // Run Phase
  //-------------------------------------------------

  //---------------------------------------
  // Method : run_phase
  // argument : uvm_phase phase - current phase
  // description : Sampling logic will be implemented
  //               in later stage.
  //---------------------------------------
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    forever collect_data();
    `uvm_info("MON", "Transaction observed", UVM_LOW)
  endtask : run_phase

  //-------------------------------------------------
  // Method : collect_data
  // Description : This method perform collecting a data
  //               from interface
  //-------------------------------------------------
  virtual task collect_data();
    uart_transaction pkt;
    pkt = uart_transaction::type_id::create("pkt");

    @(negedge vif.tx);
    state = START_BIT;

    sample_time(20, 10);
    @(posedge vif.tx);
    state = STOP_BIT;

  endtask : collect_data

  virtual function bit sample_trans(bit [2:0] s);

    if (s[0] == s[1]) begin
      return 1;
    end else if (s[0] == s[2]) begin
      return 1;
    end else if (s[1] == s[2]) begin
      return 1;
    end
  endfunction : sample_trans

  virtual task sample_time(int time1, time2, bit tx);
    //sample_trans(.s[0](vif.tx), .s[1](vif.tx), .s[2](vif.tx));
    #(time1);
    // sample_trans(.s[1](vif.tx));
    #(time1);
    // sample_trans(.s[2](vif.tx));
    #(time2);
  endtask : sample_time

endclass : uart_monitor
`endif
