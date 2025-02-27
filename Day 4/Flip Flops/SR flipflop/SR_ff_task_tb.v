
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
  
 initial begin
   
   
   clk=0;
   rst=0;
   #5rst =1;
   #5rst =0;
   
   drive(2'b00);  // we dont declare the time delay
   drive(2'b01); // but it declared bcz of in task 
   drive(2'b10); //we give posedge clk so that it is 
   drive(2'b11);
   #5
   $finish();
   
   
 end
   
  task drive(reg[1:0] ip);
    @(posedge clk); // this is the reason
    {s,r} = ip;
     //#1 $display("s=%b,r=%b,q=%b,qn=%b",s,r,q,qn);
   endtask
 
endmodule
