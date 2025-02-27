module tb_encoder;
  reg [7:0] d;
  wire [2:0] y;
  encoder uut (d,y);
  initial begin
    $dumpfile("encoderd.vcd");
    $dumpvars();
    $monitor("$time=%0t,d=%b,y=%b",$time,d,y);
    //tt 
    #10 d=8'b00010000;
    #10 d=8'b00000010;
    #10 d=8'b10000000;
    #10 d=8'b00000001;
    #10 d=8'b00001000;
    $finish();
  end
endmodule
