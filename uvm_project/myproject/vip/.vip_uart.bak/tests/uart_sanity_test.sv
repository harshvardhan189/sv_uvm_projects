//----------------------------------------------------
// project : uart
// file : uart_sanity_test.sv
// description : Base test for UART VIP.
//               Instantiates environment and
//               configures UART agent.
//----------------------------------------------------

`ifndef UART_SANITY_TEST_SV
`define UART_SANITY_TEST_SV

class uart_sanity_test extends uvm_test;

  `uvm_component_utils(uart_sanity_test)

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  //            uvm_component parent - parent handle
  // description : Constructor for uart_sanity_test.
  //---------------------------------------
  function new(string name = "uart_sanity_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  virtual task run_phase(uvm_phase phase);
    super.run_phase();
    uart_sanity_seq seq;
    phase.raise_objection(this);
    seq = uart_sanity_seq::type_id::create("seq");
    seq.start(m_env.m_agent.m_sequencer);
    phase.drop_objection(this);
  endtask : run_phase

endclass : uart_sanity_test
`endif
