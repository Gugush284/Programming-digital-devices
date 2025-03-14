module mymodule(y1,x1,x2,x3);
	output y1;
	input x1,x2,x3;
	wire z1,z2,z3,z4,z5,z6,z7;
		not(z1,x1);
		not(z2,x2);
		not(z3,x3);
		
		and(z4,z1,z2);
		and(z5,x2,z3);

		or(y1,z4,z5);
endmodule