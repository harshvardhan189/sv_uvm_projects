// write a Constraint to randomize value between 1.35 to 1.45 
class cons;
  
  rand int a;
  real b;
  
  //constraint x{a.size==10; b.size==10;}
  constraint z{a inside{[1350:1450]};}
  
  function void post_randomize();
    b= a/1000.0;
    $display("real number %g",b);
  endfunction
  
  
endclass



module test;
  
  cons c= new();
  
  initial begin
    repeat(10)
      assert(c.randomize());
  end
  
endmodule
