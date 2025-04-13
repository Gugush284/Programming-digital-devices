module main(y,x1,x2,x3);
	output y;
	input x1,x2,x3;
	
		assign y = ~x1+~(~x2+~(~x3+~x1));
endmodule