// fibonaci Series

class fibonaci;

  rand int a[$];
  rand int k ;
  
  constraint sizea{a.size == k;}
  constraint value{k inside {[8:12]};}
  
  constraint x{foreach(a[i])
    if(i == 0 || i == 1)
      a[i] == i;
    else         
      a[i] == a[i-1] + a[i-2];}
  
  /*
  function int fibo(int x=4);
    if(x == 0)
      fibo = 0;
    
    else if(x == 1)
      fibo =1;
    
    else
      fibo = fibo(x-1) + fibo(x-2);
  endfunction
    */
               function void post_randomize();
                 $display("fibonaci series %0p",a);
               endfunction
endclass

module test;
  
  fibonaci f=new();
  int a;
  initial begin
    //repeat(10)
      assert(f.randomize());
    
    //a= f.fibo(7);
    //$display("fibonaci %0d",a);
  end
endmodule
