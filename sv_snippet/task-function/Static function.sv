class pkt;
  
  //const int count ;
  static int i;
  int j;
  static function void stat_func();
    int b;
    static int c;
    i++;
   // j++;
    b++;
    c++;
    func_stat.d++;
       func_stat.a++;
    $display("stat func,::  a=%0d ,b=%0d, c=%0d, d=%0d, i=%0d, j=, ",func_stat.a,b,c,func_stat.d,i);
  endfunction
  
   function static void func_stat();
    int a; static int d;
    i++;
    j++;
    a++;
     d++;
 stat_func.c++;
   //  stat_func.b++;
     $display("func stat,::  a=%0d ,b= , c=%0d, d=%0d, i=%0d, j=%0d, ",a,stat_func.c,d,i,j);
  endfunction
endclass

module tb;
  
  pkt p[];
  
  initial begin
    p=new[5];
    foreach(p[i])
      begin
        p[i]=new();
        p[i].stat_func();
      end
        
    foreach(p[i])
      begin
        p[i]=new();
        p[i].func_stat();
      end
  end
endmodule
