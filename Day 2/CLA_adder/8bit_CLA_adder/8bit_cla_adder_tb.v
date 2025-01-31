module cla_adder_tb;
reg[7:0] a;
reg[7:0] b;
reg cin;
wire[7:0] s;
wire cout;

eightbit_cla_adder cla(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$dumpfile("cla_adder1_.vcd");
$dumpvars;
$monitor($time,"t,a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);

//test case 1, in decimal (a)15+(b)16=31(s)
#0; a=8'b00001111; b=8'b00010000;cin=0;

//test case 2, in decimal (a)37+(b)31=(s)68
#10; a=8'b00100101; b=8'b00011111;cin=1;
$finish();
end
endmodule
