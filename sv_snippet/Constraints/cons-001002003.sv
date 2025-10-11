class cons;
	rand int a[];
	constraint x{a.size inside {[10:20]};}
 // constraint z{foreach(a[i]) a[i] inside{[1:20]};}
  constraint y{foreach(a[i])
    if(i%3==2)
      a[i]== i/3+1;
                 else 
                         a[i]==0;}
	
  function void post_randomize;
	$display("Required pattern is %0p",a);
  endfunction
endclass

cons c;

module top;
	initial
		begin
		c=new;
		c.randomize;
		end
endmodule
