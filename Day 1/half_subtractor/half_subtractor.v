module half_subtractor
(
input a,
input b,
output diff,
output brrw
);
assign diff=a^b;
assign brrw=~a&b;
endmodule
