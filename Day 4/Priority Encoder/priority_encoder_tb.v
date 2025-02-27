module tb_pri_encoder;
  reg [7:0] d;
  wire [2:0] y;
  
  priority_encoder uut(d,y);
  initial
    begin
      $dumpfile("priority_encoderg.vcd");
      $dumpvars();
      $monitor("$time=%0t,d=%b,y=%b",$time,d,y);
      
    //tt
      #10 d=8'b01010000;
      #10 d=8'b00000001;
      #10 d=8'b10001001;
      #10 d=8'b00001000;
      #10 d=8'b00100100;
      #10 d=8'b10000000;
      $finish();
    end
endmodule
