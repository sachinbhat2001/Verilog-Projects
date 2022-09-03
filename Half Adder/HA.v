module ha(output cout,sum,
		input a,b);
/*
Behavioural modelling:
*/
assign {cout,sum}=a+b;
  /*
Data Flow Modelling :
assign sum=a^b;
assign cout=a&b;
  */
endmodule
