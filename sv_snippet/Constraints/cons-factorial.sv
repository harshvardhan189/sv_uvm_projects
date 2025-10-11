class cons;
  
  rand int h[];
  
  constraint y{h.size == 1; }
  constraint x{foreach(h[i])
    h[i]== a(5);}
  
  function int a(int i);
    if(i==0)
      a=1;
    else
      a= i*a(i-1);
  endfunction
  
  //function void pre_randomize();
    //$display("before ranomize ",a(i));
  //endfunction
  
  function void post_randomize();
    $display("after ranomize %p",h);
  endfunction
  
endclass

module test;
  
  cons c= new();
  
  initial begin
    c.randomize();
    
  end
  
endmodule
