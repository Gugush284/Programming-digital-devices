module mysecond(y1,y2,x1,x2);
	output y1,y2;
	input x1,x2;
		and(y1,x1,x2);
		xor(y2,x1,x2);
endmodule