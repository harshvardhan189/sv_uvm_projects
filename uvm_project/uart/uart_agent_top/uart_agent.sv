//-------------------------------------------------------------
// project : UART
// class   : uart_agent
//-------------------------------------------------------------
class uart_agent extends uvm_agent;

  `uvm_component_utils(uart_agent)

  uart_driver drvh;
  uart_sequencer seqrh;
  uart_monitor monh;

  uart_config Hcfg;

  function new(string name = "uart_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    if (!uvm_config_db#(uart_config)::get(this, "", "uart_config", Hcfg))
      `uvm_fatal("CONFIG", "Can't get config from uart AGENT")
    super.build_phase(phase);

    monh = uart_monitor::type_id::create("monh", this);

    if (Hcfg.is_active == UVM_ACTIVE) begin
      drvh  = uart_driver::type_id::create("drvh", this);
      seqrh = uart_sequencer::type_id::create("seqrh", this);
    end
  endfunction

  function void connect_phase(uvm_phase phase);
    if (Hcfg.is_active == UVM_ACTIVE) drvh.seq_item_port.connect(seqrh.seq_item_export);
  endfunction
endclass
