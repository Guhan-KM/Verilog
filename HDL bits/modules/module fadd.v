module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire w0;
    wire[15:0] sum1,sum2;
   
    add16 ins1(.a(a[15:0]),.b(b[15:0]),.sum(sum1[15:0]),.cout(w0));
    add16 ins2(.a(a[31:16]),.b(b[31:16]),.cin(w0),.sum(sum2[15:0]));
    
    assign sum = {sum2,sum1};
    
endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );
  
    assign {cout,sum} = a+b+cin;
    
endmodule
