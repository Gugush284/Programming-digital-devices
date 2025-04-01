module inver(y1,y2,y3,y4,x1,x2,x3,x4);
	output y1,y2,y3,y4;
	input x1,x2,x3,x4;
		not(y1,x1);
		not(y2,x2);
		not(y3,x3);
		not(y4,x4);
endmodule