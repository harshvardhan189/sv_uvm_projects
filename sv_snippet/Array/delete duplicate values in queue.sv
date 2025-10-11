module duplicate_value;

  int a[$] = {7,2,2,6,9,0,4,2,8,9,5,1,5,7,8,1};

  initial 
    begin
      foreach(a[i])
        foreach(a[j])
          if(i!=j)
            if(a[i] == a[j])
              a.delete(j);
      $display("After deleting Duplicate Value %p",a);
    end


endmodule
