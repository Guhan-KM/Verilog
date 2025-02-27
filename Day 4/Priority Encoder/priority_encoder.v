module priority_encoder(
  input [7:0] d,
  output reg [2:0] y);
  always @(*) begin
    casex(d)  // case x treat both x and z values as dont care x and z can either be 0 or 1 ,but casex dont care that it will see if the 1 matches the value given by us
    
      8'b00000001 : y = 3'd0;
      8'b0000001x : y = 3'd1;
      8'b000001xx : y = 3'd2;  // in priority encoder it see from MSB 
      8'b00001xxx : y = 3'd3;  // so the value changes
      8'b0001xxxx : y = 3'd4;
      8'b001xxxxx : y = 3'd5;
      8'b01xxxxxx : y = 3'd6;
      8'b1xxxxxzz : y = 3'd7;
      default : $display("invalid data");
    endcase
  end 
endmodule
