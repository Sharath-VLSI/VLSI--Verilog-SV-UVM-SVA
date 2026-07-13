Problem Statement: Write a constraint for pattern generation 0011001100

  class test;
  rand bit a[10];
  
  constraint c1{foreach (a[i])
    if(i%4 == 0 || i%4 == 1)
      a[i] == 0;
    else
      a[i] == 1;}
  
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


Output: a='{0, 0, 1, 1, 0, 0, 1, 1, 0, 0}
