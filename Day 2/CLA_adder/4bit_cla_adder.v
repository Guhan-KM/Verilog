module cla_adder
(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] s,
output cout
);

wire [3:0] p;
wire [3:0] g;
wire [3:0] c;

assign g=a&b;
assign p=(a^b)&c;

assign c[0]=cin;
assign c[1]=g[0]|(p[0]&c[0]);
assign c[2]=g[1]|(p[1]&c[1]);
assign c[3]=g[2]|(p[2]&c[2]);

assign s=p^c;
assign cout=g[3]|(p[3]&c[3]); //here cout is assigned already in the expression, no need no give cout twice

endmodule
