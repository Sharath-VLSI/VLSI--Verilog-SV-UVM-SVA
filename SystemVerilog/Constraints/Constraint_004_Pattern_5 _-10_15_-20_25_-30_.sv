Problem Statement: write a constraint to generate below pattern 5 -10 15 -20 25 -30

  class test;
  rand int a[10];
  
  constraint c1{foreach(a[i])
    if(i%2 == 0)
      a[i] == 5*(i+1);
    else
      a[i] == -5*(i+1);}
  
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


  Output: # a='{5, -10, 15, -20, 25, -30, 35, -40, 45, -50}
