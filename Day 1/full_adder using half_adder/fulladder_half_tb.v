module fulladder_half_tb;
reg a;
reg b;
reg cin;
wire sum;
wire cout;
fulladder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial
begin
$dumpfile("fulladder_half_tb.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=0; b=0;cin=0;
#5 a=0;b=0;cin=0;
#5 a=0;b=0;cin=1;
#5 a=0;b=1;cin=0;
#5 a=0;b=1;cin=1;
#5 a=1;b=0;cin=0;
#5 a=1;b=0;cin=1;
#5 a=1;b=1;cin=0;
#5 a=1;b=1;cin=1;
$finish();
end
endmodule
