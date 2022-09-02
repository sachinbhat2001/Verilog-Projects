module Adder_32_Bit(a,b,cin,s,cout);
input [31:0]a;
input cin;
input [31:0]b;
output reg[31:0]s;
output reg cout;
wire [31:0]c;
always @(a or b or c)
begin
{cout,s}=a+b+cin;
end
endmodule
