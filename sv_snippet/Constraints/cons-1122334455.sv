class cons;
  
  rand int a[];
  constraint x{a.size == 10;}
  constraint y{foreach(a[i])
  //  if(i%2 == 0)
    a[i] == (i+2)/2
    //else
     //a[i] == -((i*10)/2 +5)
               ;} 
endclass

module tb;
  initial begin
    cons c = new;
    assert(c.randomize());
    $write("%0p",c.a);
  end
  
endmodule
