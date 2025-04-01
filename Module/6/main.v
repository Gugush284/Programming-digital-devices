module incr(y1,y2,y3,y4,x1,x2,x3,x4);
	input x1,x2,x3,x4;
	output y1,y2,y3,y4;
	wire c1,c2,c3;
		not(y4,x4);

		xor(y3,x3,x4);
		and(c3,x3,x4);

		xor(y2,x2,c3);
		and(c2,x2,c3);

		xor(y1,x1,c2);
endmodule