module decoder_tb;
  reg [2:0] d;
  wire [7:0] y;
  decoder uut(d,y);
  initial begin
    //monitor("$time=%0t,d=%b,y=%b",$time,d,y);
    repeat(5) begin
      d=$random; #10;
      $display("$time=%0t,d=%b,y=%b",$time,d,y);
    end
  end
    endmodule
