`ifndef VIP_PKG_SV
`define VIP_PKG_SV

//----------------------------------
// package : vip_pkg
//----------------------------------
package vip_pkg;

  `include "uvm_macros.svh"
  import uvm_pkg::*;
  import base_pkg::*;
  import spi_pkg::*;
  import uart_pkg::*;
  import vip_env_pkg::*;
  import vip_test_pkg::*;

  // `include "../base/base_files.svh"
  // `include "../vip/spi_agent/spi_files.svh"
  // `include "../vip/uart_agent/uart_files.svh"
  // `include "../env/vip_env_files.svh"
  // `include "../test_seq/vip_test_seq_files.svh"
  // `include "../tests/vip_test_files.svh"

endpackage : vip_pkg
`endif
