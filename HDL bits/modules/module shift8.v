module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]w0,w1,w2;          //we must assign bit range to the wire otherwise it could be error
    my_dff8 dff1(clk,d,w0);
    my_dff8 dff2(clk,w0,w1);
    my_dff8 dff3(clk,w1,w2);
    four_1mux dff4(w2,w1,w0,d,sel,q);
endmodule
            
             module four_1mux(
                 input [7:0]a,
                 input [7:0]b,
                 input [7:0]c,
                 input [7:0]d,
                 input [1:0]sel,
                 output reg [7:0]q 
             );
                /* wire [7:0]w0,w1,w2;
                 assign w2 = a;
                 assign w1 = b;
                 assign w0 = c;*/
                 
                always @(*)begin
                     case(sel)
                         2'b00: q = d;
                         2'b01: q = c;
                         2'b10: q = b;
                         2'b11: q = a;
                     endcase
                 end
endmodule
