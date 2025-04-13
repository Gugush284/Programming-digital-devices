module ind4(y1,y2,y3,y4,err,x1,x2,x3,x4);
	output y1,y2,y3,y4,err;
	input x1,x2,x3,x4;
	wire z1,z2,z3,z4;
	
		assign z1=~x1&x2&x3&x4;
		assign z2=x1&~x2&x3&x4;
		assign z3=x1&x2&~x3&x4;
		assign z4=x1&x2&x3&~x4;

		assign y1=z1|z2|z3;
		assign y2=z2|z3|z4;
		assign y3=z1|z3|z4;
		assign y4=z1|z2|z4;

		assign err=~(z1|z2|z3|z4);
endmodule