module sipo(
  input d_in,clk,rst,
  output reg q);
  reg[3:0] tmp;
  always@(posedge clk) begin
    if (rst)
      q <= 4'b0000;
    else begin
      tmp <= tmp>>1;
      tmp[0] <= d_in;
      q = tmp;
    end
  end
endmodule
