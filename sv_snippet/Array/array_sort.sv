module array_sort;
  
  int b[7] = {7,6,5,4,3,2,1};
  int a[7] = {1,1,2,3,4,5,6};
  
  initial begin
    $display("before sort a %P",a);
   
    for(int j=0; j<$size(a);j++)
    for(int i=0 ; i<$size(a); i++)
     // foreach(a[j])
    //  foreach(a[i])
    begin
      if(a[i+1]> a[i]) begin // (>) Rsort  // (<) sort 
        a[i] = a[i]^a[i+1];
        a[i+1] = a[i]^a[i+1];
      a[i] = a[i]^a[i+1];end
  	else
      a[i] = a[i];
    end

    $display("after sort a %P",a);
  end  
endmodule
