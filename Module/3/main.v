module func(y,x1,x2,x3);
	input x1,x2,x3;
	output y;
	wire z1,z2,z3;
		not(z1,x2);
		not(z2,x3);
		xor(z3,z1,z2);
		xor(y,z3,x1);
endmodule

module main(y,x1,x2,x3);
	input x1,x2,x3;
	output y;
	wire z1,z2;
		func xxx(z1,x1,x2,x3);
		func xxx(z2,x2,x1,x3);
		func xxx(y,z1,x1,z2);
endmodule