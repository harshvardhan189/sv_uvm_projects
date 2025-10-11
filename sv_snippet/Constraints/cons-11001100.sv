class cons;
	rand int a[];
	constraint x{a.size inside {[10:20]};}
	constraint y{foreach(a[i])
      if(i%4==0 || i%4==1)
					a[i]==1;
                 else if(i%4==2 || i%4==3)
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
