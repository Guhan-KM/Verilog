module sr_ff_tb;
  reg s,r,clk,rst;
  wire q,qn;
  
  sr_flipflop uut(s,r,clk,rst,q,qn);
  initial
    begin
      $dumpfile("srff.vcd");
      $dumpvars();
      $monitor("$time=%0t,s=%b,r=%b,rst=%b,q=%b,qn=%b",$time,s,r,rst,q,qn);
    end
  always #5 clk <= ~clk;
  //always #10 rst <= ~rst; it is wrong 
  
  initial
    begin
      //tt
      rst =0; // it is the initial value at time 0
      clk =0;
      s=0;
      r=0;
      
      #5 rst = 1;
      #5 rst = 0;
      #5 s=1'b0; r=1'b0;
      #5 s=1'b0; r=1'b1;
      #5 s=1'b1; r=1'b0;
      
      #5 s=1'b1; r=1'b1; rst =1;
      #5 rst =0;
      
      #10 $finish();
    end
endmodule
