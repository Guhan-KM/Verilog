module halfadder
(
input a,
input b,
output sum,
output carry
);
assign sum=a^b;
assign carry=a&b;
endmodule

module fulladder
(
input a,
input b,
input cin,
output sum,
output cout
);
wire x;
wire y;
wire z;
assign cout=y|z;
halfadder uut1(.a(a),.b(b),.sum(x),.carry(y));
halfadder uut2(.a(x),.b (cin),.sum(sum),.carry(z));
endmodule
