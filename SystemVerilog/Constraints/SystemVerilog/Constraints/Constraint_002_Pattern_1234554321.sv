Problem Statement: Write a constraint to generate below pattern 1234554321

  class test;
  rand int a[10];
  constraint c1{foreach(a[i])
    if(i<5)
      a[i]==i+1;
    else
      a[i]==10-i;}
  
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
                


  Output: # a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1}
