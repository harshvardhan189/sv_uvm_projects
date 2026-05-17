`ifndef SPI_SEQUENCE_SV
`define SPI_SEQUENCE_SV

//-------------------------------------------
// class  : spi_sequence
// parent : vip_virtual_seq
//-------------------------------------------
class spi_sequence extends base_sequence #(spi_transaction);


  `uvm_object_utils(spi_sequence);

  function new(string name = "spi_sequence");
    super.new(name);
  endfunction


  task body();
    super.body;
    #1ms;
  endtask : body

endclass
`endif
