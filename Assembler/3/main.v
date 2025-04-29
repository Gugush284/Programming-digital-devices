module AND_AX_BX(axx1,axx2,bxx1,bxx2,reg,kop1,kop2,kop3,kop4,ax1,ax2,bx1,bx2);
	output axx1,axx2,bxx1,bxx2;
	input reg,kop1,kop2,kop3,kop4,ax1,ax2,bx1,bx2;
	wire kop;
	
		assign kop=~kop1&kop2&kop3&kop4;

		assign axx1=(kop&~reg&ax1&bx1)|((~kop|reg)&ax1);
		assign axx2=(kop&~reg&ax2&bx2)|((~kop|reg)&ax2);

		assign bxx1=(kop&reg&ax1&bx1)|((~kop|~reg)&bx1);
		assign bxx2=(kop&reg&ax2&bx2)|((~kop|~reg)&bx2);
endmodule