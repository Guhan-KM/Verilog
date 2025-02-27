module comparator(
  input [3:0] a,b,
  output x,y,z);
  assign x = (a<b);
  assign y = (a==b);
  assign z = (a>b);
endmodule
