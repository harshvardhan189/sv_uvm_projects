`ifndef SPI_TRANSACTION
`define SPI_TRANSACTION

class spi_transaction extends base_transaction;

  `uvm_object_utils(spi_transaction);

  function new(string name = "spi_transaction");
    super.new(name);
  endfunction

endclass : spi_transaction
`endif
