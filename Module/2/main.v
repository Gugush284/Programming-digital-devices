module impl(y,x1,x2);
	input x1,x2;
	output y;
	wire z;
		not(z,x1);
		or(y,z,x2);
endmodule

module main(y,x1,x2,x3);
	input x1,x2,x3;
	output y;
	wire z1,z2;
		impl xxx(z1,x1,x2);
		impl xxx(z2,x1,x3);
		impl xxx(y,z1,z2);
endmodule