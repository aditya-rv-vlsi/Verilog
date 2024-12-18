module div_by_5_mod(
	input clk,reset,
	output clk_out
);

reg [2:0] temp_out_1;
reg div_by_5,temp_out_2;


always@(posedge clk) begin
	if(reset)
		temp_out_1 <= 0;
	else
		temp_out_1 <= (temp_out_1==3'd4)?0:temp_out_1+1;
end

always@(negedge clk) begin
	if(reset)
		temp_out_2 <= 0;
	else
		temp_out_2 <= temp_out_1[1];
end

assign clk_out = temp_out_1[1]|temp_out_2;
endmodule
