module mymodule(y1,y2,x1,x2,x3);
	output y1,y2;
	input x1,x2,x3;
	wire z1,z2,z3;
		and(z1,x1,x2);
		and(z2,x1,x3);
		and(z3,x2,x3);
		or(y1,z1,z2,z3);
		
		xor(y2,x1,x2,x3);
endmodule