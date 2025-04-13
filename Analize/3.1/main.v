module ind4(y1,y2,y3,y4,y5,y6,y7,err,x1,x2,x3,x4,x5,x6,x7);
	output y1,y2,y3,y4,y5,y6,y7,err;
	input x1,x2,x3,x4,x5,x6,x7;
	wire z0,z1,z2,z3,z4,z5,z6,z7,z8;
	
		assign z0=x1&x2&x3&x4&x5&x6&~x7;
		assign z1=x1&x2&~x3&~x4&~x5&~x6&~x7;
		assign z2=x1&~x2&x3&x4&~x5&x6&x7;
		assign z3=x1&x2&x3&~x4&~x5&x6&x7;
		assign z4=x1&x2&~x3&~x4&x5&~x6&x7;
		assign z5=~x1&x2&x3&~x4&x5&x6&x7;
		assign z6=~x1&x2&x3&x4&x5&x6&x7;
		assign z7=x1&x2&~x3&~x4&~x5&x6&~x7;
		assign z8=x1&x2&x3&x4&x5&x6&x7;

		assign y1=z0|z1|z2|z3|z6|z7|z8;
		assign y2=z0|z2|z3|z4|z5|z6|z7|z8;
		assign y3=z1|z2|z4|z5|z7|z8;
		assign y4=z1|z5|z7;
		assign y5=z3|z4|z5|z7|z8;
		assign y6=z1|z2|z4|z5|z6|z7|z8;
		assign y7=z1|z2|z3|z4|z5|z7|z8;

		assign err=~(z0|z1|z2|z3|z4|z5|z6|z7|z8);
endmodule