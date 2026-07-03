class test_1;
  rand bit[7:0]a[];
  constraint c1{a.size==10;}
  constraint c2{foreach(a[i])
    a[i] inside {[1:50]};}
  constraint c3{foreach(a[i])
    if(i%2 == 0)
      a[i]%2==1;
    else
      a[i]%2==0;}
  
  function void post_randomize();
    $display("a=%d",a);
  endfunction
  
endclass

module tb;
  test_1 t;
  initial
    begin
      t=new();
      assert(t.randomize());
    end
endmodule


Output: a=31 18 13 2 27 44 41 34 17 10
