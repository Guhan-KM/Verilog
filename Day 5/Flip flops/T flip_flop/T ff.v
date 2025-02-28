module t_flipflop(
  input t,clk,rst,
  output reg q,qn);
  always@(posedge clk) begin
    if (rst) 
      q <= 0;
    else begin
      q <= t?~q:q;
  end
  end
  assign qn = ~q;
endmodule
