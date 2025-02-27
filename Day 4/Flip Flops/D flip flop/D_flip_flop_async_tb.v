module tb_dflipflop;
  reg d,clk,rst;
  wire q;
  d_flipflop_async uut1(d,clk,rst,q);
  always #5 clk = !clk;
  always #15 rst = !rst;
  initial
    begin
      $dumpfile("dff.vcd");
      $dumpvars();
      $monitor("$time=%0t,d=%b,clk=%b,rst=%b,q=%b",$time,d,clk,rst,q);
      
      
      //test case
      clk=0; rst = 0;
      repeat(5) begin
        
        d=$random; #10;
     
      end
      #50
      $finish();
    end
endmodule
