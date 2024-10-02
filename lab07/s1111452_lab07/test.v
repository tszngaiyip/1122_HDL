`timescale 1ns/10ps
module test;
reg [3:0] A;
reg [3:0] B;
reg [1:0] sel;
wire [4:0] aluo;

lab07 DUT (.A(A),.B(B),.sel(sel),.aluo(aluo));

initial
	begin
		A <= 4'b0111;
		B <= 4'b1000;
		sel <= 2'b00;
	end
		always #50 sel <= sel + 1;
		always #50 A <= A + 1;
		always #50 B <= B + 1;
	endmodule