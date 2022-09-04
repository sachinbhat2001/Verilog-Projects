module v(a,b,m);
input [1:0]a,b;
output [3:0]m;
wire w1,w2,w3,w4;
assign m[0]=a[0]&b[0];
assign m[0]=a[0]&b[0];
assign w1=a[0]&b[1];
assign w2=a[1]&b[0];
ha h1(w3,m[1],w1,w2);
assign w4=a[1]&b[1];
ha h2(m[3],m[2],w4,w3);
endmodule


module ha(cout,sum,a,b);
input a,b;
output cout,sum;
assign {cout,sum}=a+b;
endmodule
