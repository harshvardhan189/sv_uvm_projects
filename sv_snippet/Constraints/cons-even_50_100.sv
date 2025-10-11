// write a constraint to randomize between even 50 to 100

class cons;
  
  rand int a[];
  
  constraint y{a.size == 10;}
  constraint x{foreach(a[i])
    				a[i] inside{[50:100]};}
  constraint z{foreach(a[i])
  				  a[i]%2==0;}
    
  function void post_randomize();
               $display("randomize %p",a);
  endfunction
   
endclass

module test;
  
  cons c = new();
  
  initial begin
   // repeat(10)
      assert(c.randomize());
  end 
  
endmodule
