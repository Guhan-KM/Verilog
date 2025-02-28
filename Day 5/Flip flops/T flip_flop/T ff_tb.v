module t_ff_tb;
  reg t,clk,rst;
  wire q,qn;
  
  t_flipflop uut(t,clk,rst,q,qn);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      $monitor("$time=%0t,t=%b,clk=%b,rst=%b,q=%b,qn=%b",$time,t,clk,rst,q,qn);
    end
  always #5 clk <= ~clk;
  initial
    begin
      t=0;
      clk=0;
      rst=0;
      
      #5 rst = 1;
      #5 rst = 0;
      
      drive(1'b0);
      drive(1'b1);
      drive(1'b0);
      drive(1'b1);
      drive(1'b0);
      #5
      $finish;
    end
  
  task drive(reg a);  
    @(posedge clk);
    t = a;
  endtask
endmodule
