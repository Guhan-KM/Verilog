module top_module ( input clk, input d, output q );
  wire w0,w1;
    my_dff sq1(.clk(clk),.d(d),.q(w0));
    my_dff sq2(.clk(clk),.d(w0),.q(w1));
    my_dff sq3(.clk(clk),.d(w1),.q(q));
               
      		//or
  /*my_dff d1 ( clk, d, a );
	my_dff d2 ( clk, a, b );
	my_dff d3 ( clk, b, q );*/
    
endmodule
