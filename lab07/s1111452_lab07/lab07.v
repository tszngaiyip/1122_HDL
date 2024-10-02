module lab07 (
    input [3:0] A,
    input [3:0] B,
    input [1:0] sel,
    output reg [4:0] aluo
);

always @(*)
begin
	case(sel)
		2'b00: aluo = A | B;
		2'b01: aluo = A & B;
		2'b10: aluo = A + B;
		2'b11: aluo = A - B;
	endcase;
end
endmodule
