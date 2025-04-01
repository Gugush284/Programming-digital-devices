module main(y1,y2,y3,x1,x2,x3);
	output y1,y2,y3;
	input x1,x2,x3;
	wire z;
		xor(y3,x2,x3);
		and(y1,x1,x2,x3);
		and(z,x2,x3);
		xor(y2,z,x1);
endmodule