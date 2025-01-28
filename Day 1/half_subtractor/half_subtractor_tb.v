module halfsubtractor_tb;
reg a;
reg b;
wire diff;
wire brrw;
half_subtractor uut(.a(a),.b(b),.diff(diff),.brrw(brrw));
initial 
begin
$dumpfile("halfsubtractor_tb.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,diff=%b,brrw=%b",a,b,diff,brrw);
a=0; b=0;
#10;a=0;b=0;
#10;a=0;b=1;
#10;a=1;b=0;
#10;a=1;b=1;
$finish();
end
endmodule
