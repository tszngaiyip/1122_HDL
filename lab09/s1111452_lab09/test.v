`timescale 1ns/10ps
module test;
reg load,clk,en,clrn;
reg [3:0] Da;
reg [2:0] Db;
wire Co;
wire [3:0] qa;
wire [2:0] qb;

counter60 DUT (.load(load), .clk(clk), .en(en), .clrn(clrn),
.Da(Da), .Db(Db), .Co(Co), .qa(qa), .qb(qb));

initial 
begin
	load = 1'b0;
	clk = 1'b0;
	Da = 4'b0111;
	Db = 3'b101;
end

initial 
begin
	en = 1'b1;
	#300 en = ~en;
	#100 en = ~en;
end

initial 

begin
	clrn = 1'b0;
	#700 clrn = ~clrn;
	#100 clrn = ~clrn;
end

	always #25 clk = ~clk;
	initial #0 load <= 1;
	initial #50 load <= 0;
endmodule