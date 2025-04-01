module inver(y1,y2,y3,y4,x1,x2,x3,x4);
	output y1,y2,y3,y4;
	input x1,x2,x3,x4;
		not(y1,x1);
		not(y2,x2);
		not(y3,x3);
		not(y4,x4);
endmodule

module incr(y1,y2,y3,y4,x1,x2,x3,x4);
	output y1,y2,y3,y4;
	input x1,x2,x3,x4;
	wire c1,c2,c3;
		not(y4,x4);

		xor(y3,x3,x4);
		and(c3,x3,x4);

		xor(y2,x2,c3);
		and(c2,x2,c3);

		xor(y1,x1,c2);
endmodule

module subsum(y,cn,a,b,c);
	output y,cn;
	input a,b,c;
	wire z1,z2,z3;
		xor(z1,a,b);
		xor(y,c,z1);

		and(z2,a,b);
		and(z3,c,z1);
		or(cn,z2,z3);
endmodule

module sum4(y1,y2,y3,y4,x1,x2,x3,x4,x5,x6,x7,x8);
	output y1,y2,y3,y4;
	input x1,x2,x3,x4,x5,x6,x7,x8;
	wire c1,c2,c3,c0;
		xor(y4,x4,x8);
		and(c3,x4,x8);
		
		subsum xxx(y3,c2,x3,x7,c3);
		subsum xxx(y2,c1,x2,x5,c2);
		subsum xxx(y1,c0,x1,x6,c1);
endmodule

module main(y1,y2,y3,y4,x1,x2,x3,x4,x5,x6,x7,x8);
	output y1,y2,y3,y4;
	input x1,x2,x3,x4,x5,x6,x7,x8;
	wire d5,d6,d7,d8,i5,i6,i7,i8;
		inver xxx(d5,d6,d7,d8,x5,x6,x7,x8);
		incr xxx(i5,i6,i7,i8,d5,d6,d7,d8);
		sum4 xxx(y1,y2,y3,y4,x1,x2,x3,x4,i5,i6,i7,i8);
endmodule