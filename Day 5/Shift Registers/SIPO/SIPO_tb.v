module sipo_tb;
  reg d_in,clk,rst;
  wire q;
  
  sipo uut(d_in,clk,rst,q);
  initial
    begin
      $dumpfile("siso.vcd");
      $dumpvars();
      $monitor("$time=%0t,d_in=%b,clk=%b,rst=%b,q=%b",$time,d_in,clk,rst,q);
    end
  always #5 clk <= ~clk;
  
  initial
    begin
      d_in = 0;
      clk =0;
      rst =0;
      #5 rst = 1;
      #5 rst = 0;
      #5 d_in = 1;
      #10 d_in = 1; // we should give delay according to the posedge clk otherwise error
      #10 d_in = 0;
      #10 d_in = 1; //my output will get on 8th clk cycle bcz 2*size 
      
      #100 $finish();
    end
endmodule
