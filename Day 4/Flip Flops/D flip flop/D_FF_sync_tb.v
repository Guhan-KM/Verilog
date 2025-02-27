module tb_dff_sync;
  reg d,clk,rst;
  wire q,qn;
  d_flipflop_sync uut(d,clk,rst,q,qn);
  initial
    begin
      $dumpfile("dff_sync.vcd");
      $dumpvars();
      $monitor("$time=%0t,d=%b,clk=%b,rst=%b,q=%b,qn=%b",$time,d,clk,rst,q,qn);
    end
  initial begin
      clk = 0;
      forever #10 clk = ~clk;
  end
  initial begin
      //tt 1:
      rst = 1;
      d <=1;
      #10;
      
    //tt 2:  
    rst = 0;
      d <= 0;
      #10;
      
    //tt3:
      rst = 1;
      d <= 1;
      #10;
      $finish();
  end
      
    
endmodule
