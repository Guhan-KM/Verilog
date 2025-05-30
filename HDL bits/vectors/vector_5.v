module top_module (
	input a, b, c, d, e,
	output [24:0] out
);

	wire [24:0] top, bottom;
	assign top    = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
	assign bottom = {5{a,b,c,d,e}};
	assign out = ~top ^ bottom;

    // or this can be done by this
    
/*module top_module (
    input a, b, c, d, e,
    output [24:0] out );

    assign out=~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}}^{5{{a},{b},{c},{d},{e}}};

endmodule*/
