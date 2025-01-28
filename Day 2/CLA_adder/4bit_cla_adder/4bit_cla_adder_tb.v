module cla_adder_tb;
reg[3:0] a;
reg[3:0] b;
reg cin;
wire[3:0] s;
wire cout;

cla_adder cla(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$dumpfile("cla_adder_.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);
#0; a=4'b0000; b=4'b0001;cin=0;
#5; a=4'b0010; b=4'b0001;cin=1;
$finish();
end
endmodule
