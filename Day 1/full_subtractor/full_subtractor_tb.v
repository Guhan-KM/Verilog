module fullsubtractor_tb;
reg a;
reg b;
reg bin;
wire d;
wire bout;
fullsubtractor uut(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));
initial
begin
$dumpfile("fullsubtractor1.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,bin=%b,d=%b,bout=%b",a,b,bin,d,bout);
a=0;b=0;bin=0;
#10;a=0;b=0;bin=0;
#10;a=0;b=0;bin=1;
#10;a=0;b=1;bin=0;
#10;a=0;b=1;bin=1;
#10;a=1;b=0;bin=0;
#10;a=1;b=0;bin=1;
#10;a=1;b=1;bin=0;
#10;a=1;b=1;bin=1;
$finish();
end
endmodule
