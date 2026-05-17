import uvm_pkg::*;
`include "uvm_macros.svh"
import vip_pkg::*;

module vip_tb_top;

  import vip_test_pkg::*;
  initial begin
    run_test("vip_base_test");
  end
endmodule : vip_tb_top
