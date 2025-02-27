module decoder(
  input [2:0] d,
  output reg [7:0] y);
  
  always@(*) begin
    y = 1'b0;
    case(d)
    3'b000 : y[0] = 1'b1;
    3'b001 : y[1] = 1'b1;
    3'b010 : y[2] = 1'b1;
    3'b011 : y[3] = 1'b1;
    3'b100 : y[4] = 1'b1;
    3'b101 : y[5] = 1'b1;
    3'b110 : y[6] = 1'b1;
    3'b111 : y[7] = 1'b1;
    default : y = 0;
    endcase 
  /*assign y[0] = (d==3'b000);
  assign y[1] = (d==3'b001);
  assign y[2] = (d==3'b010);
  assign y[3] = (d==3'b011);
  assign y[4] = (d==3'b100);
  assign y[5] = (d==3'b101);
  assign y[6] = (d==3'b110);
  assign y[7] = (d==3'b111);*/
  end
endmodule
