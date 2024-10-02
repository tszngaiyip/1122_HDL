module test;
reg clrn;
reg clk;
reg Ldn, Sh;
reg Di;
reg D3, D2, D1, D0;
wire Q3, Q2, Q1, Q0;

pal DUT(.clrn(clrn), .clk(clk), .Ldn(Ldn), .Sh(Sh), .Di(Di),
		.D3(D3), .D2(D2), .D1(D1), .D0(D0),
		.Q3(Q3), .Q2(Q2), .Q1(Q1), .Q0(Q0)
);

initial 
begin
    clrn = 1'b1;
    clk = 1'b0;
    Ldn = 1'b0;
    Sh = 1'b1;
    Di = 1'b1;
    D3 = 1'b0;
    D2 = 1'b1;
    D1 = 1'b1;
    D0 = 1'b0;
end

initial #600000 clrn <= 0;
initial #700000 clrn <= 1;
always #50000 clk = ~clk;
initial #0 Ldn <= 1;
initial #100000 Ldn <= 0;
initial #0 Sh <= 0;
initial #100000 Sh <= 1;
endmodule