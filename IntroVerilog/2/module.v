module mymodule(y1,x1,x2,x3);
	output y1;
	input x1,x2,x3;
	wire z1,z2,z3,z4,z5,z6,z7;
		not(z1,x2);
		xor(z2,x1,z1);
		not(z3,x3);
		or(z4,z2,z3);

		not(z5,x1);
		and(z6,x2,z3);
		or(z7,z5,z6);

		and(y1,z4,z7);
endmodule