Problem Statement: Write a constraint to generate a pattern 0 0 1 1 0 0 1 1

  class test;
  rand int a[10];
  
  constraint c2{foreach(a[i])
    if(i%4 == 0 || i%4 == 1)
      a[i]==0;
    else
      a[i]==1;}
  function void post_randomize();
    $display("a=%p",a);
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


Output: # a='{0, 0, 1, 1, 0, 0, 1, 1, 0, 0}
