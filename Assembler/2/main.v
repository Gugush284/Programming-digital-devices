module AND_AX_BX(axx1,axx2,axx3,bxx1,bxx2,bxx3,kop1,kop2,kop3,kop4,ax1,ax2,ax3,bx1,bx2,bx3);
	output axx1,axx2,axx3,bxx1,bxx2,bxx3;
	input kop1,kop2,kop3,kop4,ax1,ax2,ax3,bx1,bx2,bx3;
	wire kop;
	
		assign kop=~kop1&kop2&kop3&kop4;

		assign axx1=(kop&ax1&bx1)|(~kop&ax1);
		assign axx2=(kop&ax2&bx2)|(~kop&ax2);
		assign axx3=(kop&ax3&bx3)|(~kop&ax3);

		assign bxx1=bx1;
		assign bxx2=bx2;
		assign bxx3=bx3;
endmodule