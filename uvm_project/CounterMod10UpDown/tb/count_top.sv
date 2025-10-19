//----------------------------------------------------
// Project : Mod 10 UP-DOWN Counter
// file    : count_test.sv
// module   : count_top
//----------------------------------------------------
module count_top;

  import count_pkg::*;

  bit clk, reset_n, up_down;
  virtual count_if vif;

  initial begin
    uvm_config_db#(virtual count_if)::set(null, "*", "virtual count_if", vif);
  end
endmodule
