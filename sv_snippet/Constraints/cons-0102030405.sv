////////////////////////////////////////////////////////
class cons;
  
  rand int a[];
  constraint y{a.size == 10;}
  constraint x{foreach(a[i])
    if(i%2==0)
      a[i] == 0;
              
              else
                a[i] == (i+2)/2;}
  
  function void post_randomize();
    $display("pattern %p",a);
  endfunction
  
endclass
////////////////////////////////////////////////////
module test;
  
  cons c = new();
  
  initial begin
  repeat(10);
    assert(c.randomize());
  end
  
endmodule
///////////////////////////////////////////////////
