module four_bitadder_tb;
reg[3:0]a;
reg[3:0]b;
reg cin;
wire[3:0]s;
wire cout;

four_bitadder fba(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$dumpfile("four_bit_adder.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);

//test case 1
#0; a=4'b0000; b=4'b0001;cin=0;
//test case 2
#5; a=4'b0000; b=4'b0001;cin=1;
$finish();
end
endmodule
