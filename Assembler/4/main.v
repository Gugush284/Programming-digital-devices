module AND_AX_BX(axx1,axx2,bxx1,bxx2,reg1,reg2,kop1,kop2,kop3,kop4,ax1,ax2,bx1,bx2);
	output axx1,axx2,bxx1,bxx2;
	input reg1,reg2,kop1,kop2,kop3,kop4,ax1,ax2,bx1,bx2;
	wire kop,x1,x2,y1,y2;
	
		assign kop=~kop1&kop2&kop3&kop4;
		assign x1=(~reg1&ax1)|(reg1&bx1);
		assign x2=(~reg1&ax2)|(reg1&bx2);
		assign y1=(~reg2&ax1)|(reg2&bx1);
		assign y2=(~reg2&ax2)|(reg2&bx2);

		assign axx1=(kop&~reg1&x1&y1)|((~kop|reg1)&ax1);
		assign axx2=(kop&~reg1&x2&y2)|((~kop|reg1)&ax2);

		assign bxx1=(kop&reg1&x1&y1)|((~kop|~reg1)&bx1);
		assign bxx2=(kop&reg1&x2&y2)|((~kop|~reg1)&bx2);
endmodule