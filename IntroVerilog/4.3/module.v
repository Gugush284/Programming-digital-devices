module mymodule(y1,y2,err,x1,x2,x3);
	output y1,y2,err;
	input x1,x2,x3;
	wire z1,z2,z3,z4,z5,z6,z7,nx1,nx2,nx3;
		not(nx1,x1);
		not(nx2,x2);
		not(nx3,x3);
		and(z7,nx1,nx2,nx3);

		and(z1,x1,x2);
		and(z2,x1,x3);
		and(z3,x2,x3);
		or(z5,z1,z2,z3);
		or(y1,z1,z2,z3);
		or(y1,z7,z5);
		
		xor(z6,x1,x2,x3);
		xor(y2,x1,x2,x3);
		or(y2,z6,z7);

		or(z4,x1,x2,x3);
		not(err,z4);
endmodule