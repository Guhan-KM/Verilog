module encoder(
  input [7:0] d,
  output reg [2:0] y);
  always@(*) begin
    case(d)
      8'b00000001 : y = 3'd0; // or 3'b000
      8'b00000010 : y = 3'd1; // or 3'b001
      8'b00000100 : y = 3'd2; // or 3'b010
      8'b00001000 : y = 3'd3;
      8'b00010000 : y = 3'd4;
      8'b00100000 : y = 3'd5;
      8'b01000000 : y = 3'd6;
      8'b10000000 : y = 3'd7; // or 3'b111
      default : y = 3'd0;
    endcase
  end
 endmodule
