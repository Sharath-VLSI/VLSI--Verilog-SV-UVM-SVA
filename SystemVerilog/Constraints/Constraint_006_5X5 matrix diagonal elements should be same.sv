Problem Statement: Write a constraint for 5X5 matrix where diagonal elements should be same 

  class test;
  rand int a[5][5];
  rand int b;
  
  constraint c1{ b inside {[0:50]};}
  constraint c2{foreach(a[i,j])
    a[i][j] inside {[0:50]};}
  constraint c3{foreach (a[i,j])
    if(i==j | i+j == 4)
      a[i][j] == b;}
  
  function void post_randomize();
    for(int i=0; i<5; i++) begin
      for(int j=0; j<5; j++) begin
        $write("%d",a[i][j]);
      end
      $display();                                       // to get new line
    end
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



Output: #          44         38         40         30         44 
        #          46         44         41         44          0 
        #          41         43         44         36         19 
        #          48         44         50         44         36 
        #          44         24         49         50         44 
