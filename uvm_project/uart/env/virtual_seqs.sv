//-------------------------------------------------------------
// project : UART
// class  : virtual_seqs
//-------------------------------------------------------------
class virtual_base_seqs extends uvm_sequence #(uvm_sequence_item);

  `uvm_object_utils(virtual_base_seqs)

  virtual_sequencer vseqrh;

  uart_sequencer Hseqrh;
  bridge_config cfg;

  function new(string name = "virtual_base_seqs");
    super.new(name);
  endfunction

  task body();
    if (!uvm_config_db#(bridge_config)::get(null, get_full_name(), "bridge_config", cfg))
      `uvm_fatal("CONFIG", "can't get config from virtual sequence")

    assert ($cast(vseqrh, m_sequencer))

    else `uvm_error("CAST", "CASTING FAILED")

    Hseqrh = vseqrh.Hseqrh;
  endtask
endclass
