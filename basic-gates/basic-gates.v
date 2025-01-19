module basic_gates(
	input a,b,
	output not_gate, and_gate, or_gate, nand_gate, nor_gate, xor_gate, xnor_gate );


	assign not_gate=~a;
	assign and_gate=a&b;
	assign or_gate=a|b;
	assign nand_gate=~(a&b);
	assign nor_gate=~(a|b);
	assign xor_gate=a^b;
	assign xnor_gate=~(a^b);

endmodule
