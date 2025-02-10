module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] w1;
    wire w2;
    assign w1 = b^{32{sub}};
    wire [15:0] sum1,sum2;
    assign sum = {sum2,sum1};
        
    add16 ins1(.a(a[15:0]),.b(w1[15:0]),.cin(sub),.sum(sum1),.cout(w2));
    add16 ins2(.a(a[31:16]),.b(w1[31:16]),.cin(w2),.sum(sum2));

endmodule
