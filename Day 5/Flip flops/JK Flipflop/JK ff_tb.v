module jk_ff_tb;
  reg j,k,clk,rst;
  wire q,qn;
  
  jk_flipflop uut(j,k,clk,rst,q,qn);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      $monitor("$time=%0t,j=%b,k=%b,rst=%b,q=%b,qn=%b",$time,j,k,rst,q,qn);
    end
  always #5 clk <= ~clk;
  initial
    begin
      j=0; k=0;
      clk=0; rst =0;
      
     #5 rst=1;
     #5 rst=0;
      value(2'b00);
      value(2'b01);       
      value(2'b10);
      value(2'b11);
      #5;
      $finish();
           
    end
  
  task value(reg[1:0] ab);
    @(posedge clk)
    {j,k} = ab;
    //$display("$time=%0t,j=%b,k=%b,rst=%b,q=%b,qn=%b",$time,j,k,rst,q,qn);
  endtask
endmodule
