module RippleCarryAdder(output cout,
			output [3:0]sum,
	  	input [3:0]a,b,
			input cin);
wire c1,c2,c3;
FA f1(c1,sum[0],a[0],b[0],cin);
FA f2(c2,sum[1],a[1],b[1],c1);
FA f3(c3,sum[2],a[2],b[2],c2);
FA f4(cout,sum[3],a[3],b[3],c3);
endmodule

module FA(output cout,sum,
	  input a,b,cin);
wire s1,c1,c2;
ha h1(c1,s1,a,b);
ha h2(c2,sum,s1,cin);
or o1(cout,c2,c1);
endmodule

module ha(output cout,sum,
		input a,b);
assign {cout,sum}=a+b;
endmodule

/*

// ALTERNATE CODE WITH FEWER LINES

module RippleCarryAdder(output cout,
			output [3:0]sum,
	  		input [3:0]a,b,
			input cin);

wire c1,c2,c3;
FA f1(c1,sum[0],a[0],b[0],cin);
FA f2(c2,sum[1],a[1],b[1],c1);
FA f3(c3,sum[2],a[2],b[2],c2);
FA f4(cout,sum[3],a[3],b[3],c3);
endmodule


//Full Adder Module 
module FA(output cout,sum,
	  input a,b,cin);

assign {cout,sum}=a+b+cin; //Behavioural Modelling
endmodule


*/
