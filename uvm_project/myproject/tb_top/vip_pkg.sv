`ifndef VIP_PKG_SV
`define VIP_PKG_SV

//----------------------------------
// package : vip_pkg
//----------------------------------
package vip_pkg;

  import uvm_pkg::*;
  import base_pkg::*;
  import spi_package::*;
  import uart_package::*;

  `include "vip_env.sv"
  `include "vip_base_test.sv"
endpackage : vip_pkg
`endif
