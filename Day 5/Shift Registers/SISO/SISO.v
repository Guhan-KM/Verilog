module siso_reg(
  input d_in,clk,rst,
  output reg q);
  bit[3:0] tmp;
  always@(posedge clk) begin
    if (rst) 
      tmp <= 4'b0000;
    else begin
      tmp <= tmp>>1;
      tmp[3] <= d_in;
      q = tmp[0];
    end
  end
endmodule
