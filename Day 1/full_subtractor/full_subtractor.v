module fullsubtractor
(
input a,
input b,
input bin,
output d,
output bout
);
assign d=a^b^bin;
assign bout=(~a&b)|bin&~(a^b);
endmodule
