`timescale 1ns / 1ps
module div_by_2(
    input clk,reset,
	output reg clk_out
    );
    
always@(posedge clk)   begin
	if(reset)
		clk_out <= 0;
	else
		clk_out <= ~clk_out;
end
 
endmodule
