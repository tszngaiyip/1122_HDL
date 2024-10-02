`timescale 1ns/10ps
module test;

reg clk;
reg clrn;
wire [1:0] Q;

lab08 DUT (.clk(clk), .clrn(clrn), .Q(Q));

// Test stimulus
initial 
begin
    clk = 0;
    clrn = 0;
    #100;
    clrn = 1;
end

// Clock generation with toggle
always #50 clk = ~clk;
always #600 clrn = ~clrn;
always #700 clrn = ~clrn;

endmodule
