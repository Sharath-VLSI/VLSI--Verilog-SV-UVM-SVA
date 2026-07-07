Problem Statement: Write a constraint to generate pattern 1, 2, 4, 8, 16, 32....
  class test;
  rand int a[];
  
  constraint c1{a.size inside{[10:15]};}
  constraint c2{foreach (a[i])
                                                               or // a[i] == 2**i;}
    if(i==0)
      a[i] == 1;
    else
      a[i] == a[i-1]*2;}
  
  function void post_randomize();
    $display("a=%p", a);
  endfunction
  
endclass

module tb;
  test t;
  initial
    begin
      t=new();
      assert(t.randomize());
    end
endmodule



  Output: a='{1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096}
