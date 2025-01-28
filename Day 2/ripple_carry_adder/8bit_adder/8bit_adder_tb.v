module eight_bitadder_tb;
reg[7:0]a;
reg[7:0]b;
reg cin;
wire[7:0]s;
wire cout;

eight_bitadder rca(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$dumpfile("eight_bitadder_d.vcd");
$dumpvars();
$monitor("%5t|a=%b|b=%b|cin=%b|s=%b|cout=%b",$time,a,b,cin,s,cout);

#0 a=8'b00000001;b=8'b00000010;cin=0;
#10 a=8'b00000001;b=8'b00000010;cin=1;

$finish();
end
endmodule
