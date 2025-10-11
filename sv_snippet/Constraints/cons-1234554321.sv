class cons;
  
  rand int a[];
  
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
              if(i<5)
                a[i]==i+1;
              else
                a[i]== 10-i;}
  function void post_randomize();
    $display("patter %p",a);
  endfunction
  
endclass


module test;
  
  cons c= new();
  initial
    begin
     // repeat(10)
  assert(c.randomize());
    end  
endmodule
