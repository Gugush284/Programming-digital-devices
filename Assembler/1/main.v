module SHL_CX(cxx1,cxx2,cxx3,reg1,reg2,kop1,kop2,kop3,kop4,cx1,cx2,cx3);
	output cxx1,cxx2,cxx3;
	input reg1,reg2,kop1,kop2,kop3,kop4,cx1,cx2,cx3;
	wire reg,kop;
	
		assign kop=kop1&kop2&~kop3&kop4;
		assign reg=reg1&~reg2;

		assign cxx1=(kop&reg&cx2)|((~kop|~reg)&cx1);
		assign cxx2=(kop&reg&cx3)|((~kop|~reg)&cx2);
		assign cxx3=(~kop|~reg)&cx3;
endmodule