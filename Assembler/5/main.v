module AND(axx1,axx2,bxx1,bxx2,cxx1,cxx2,dxx1,dxx2,reg1,reg2,reg3,reg4,kop1,kop2,kop3,kop4,ax1,ax2,bx1,bx2,cx1,cx2,dx1,dx2);
	output axx1,axx2,bxx1,bxx2,cxx1,cxx2,dxx1,dxx2;
	input reg1,reg2,reg3,reg4,kop1,kop2,kop3,kop4,ax1,ax2,bx1,bx2,cx1,cx2,dx1,dx2;
	wire kop,x1,x2,y1,y2;
	
		assign kop=~kop1&kop2&kop3&kop4;
		assign x1=(~reg1&~reg2&ax1)|(~reg1&reg2&bx1)|(reg1&~reg2&cx1)|(reg1&reg2&dx1);
		assign x2=(~reg1&~reg2&ax2)|(~reg1&reg2&bx2)|(reg1&~reg2&cx2)|(reg1&reg2&dx2);
		assign y1=(~reg3&~reg4&ax1)|(~reg3&reg4&bx1)|(reg3&~reg4&cx1)|(reg3&reg4&dx1);
		assign y2=(~reg3&~reg4&ax2)|(~reg3&reg4&bx2)|(reg3&~reg4&cx2)|(reg3&reg4&dx2);

		assign axx1=(kop&~reg1&~reg2&x1&y1)|((~kop|reg1|reg2)&ax1);
		assign axx2=(kop&~reg1&~reg2&x2&y2)|((~kop|reg1|reg2)&ax2);

		assign bxx1=(kop&~reg1&reg2&x1&y1)|((~kop|reg1|~reg2)&bx1);
		assign bxx2=(kop&~reg1&reg2&x2&y2)|((~kop|reg1|~reg2)&bx2);

		assign cxx1=(kop&reg1&~reg2&x1&y1)|((~kop|~reg1|reg2)&cx1);
		assign cxx2=(kop&reg1&~reg2&x2&y2)|((~kop|~reg1|reg2)&cx2);

		assign dxx1=(kop&reg1&reg2&x1&y1)|((~kop|~reg1|~reg2)&dx1);
		assign dxx2=(kop&reg1&reg2&x2&y2)|((~kop|~reg1|~reg2)&dx2);
endmodule