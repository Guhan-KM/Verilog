module halfadder_tb;
reg a;
reg b;
wire sum;
wire carry;
half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial
begin
$dumpfile("halfadder_tb.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
a=0;b=0;
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
$finish();
end
endmodule
