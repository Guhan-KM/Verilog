module d_flipflop_sync(
  input d,clk,rst,
  output reg q,qn);
  
  always@(posedge clk) begin
    if(rst)
      q <= 1'b0;
    else 
      q <= d;
  end
  assign qn = ~q;
endmodule
