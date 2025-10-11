module queue;
  
  int q1[$] = {12,13,14,14,15,11,51,2,0,13,75,235,64,1,3,4,56,63};
  int q2[$];
  //int k;
  
  initial begin
    $display("queue 1 %p",q1);
    //q1.pop_back(q2.push_front());
    for(int i=0; i<$size(q1); i++)
      // q2[i] = q1.pop_back(); // working
      q2[i] = q1[$size(q1) - i -1];
      //foreach(q1[i])  
     // q2.push_back(q1.pop_back());
    
   
  //  $display("value k  %d",k);
     
    $display("queue 2 %p",q2);
    
  end
  
  
endmodule
