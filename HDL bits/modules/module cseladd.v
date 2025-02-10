module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x1;
    wire [15:0] w1,w2;
    wire [15:0] sum1;
    wire [15:0] sum2;
    assign sum = {sum1, sum2};
    
    add16 ins3(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum2), .cout(x1));
    add16 ins1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(w1), .cout());
    add16 ins2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(w2), .cout());
    mux ins4(.g(w1), .f(w2), .s(x1), .y(sum1));

endmodule

module mux(
    input [15:0] g, f,
    input s,
    output [15:0] y
);
    assign y = s ? f : g;
endmodule
