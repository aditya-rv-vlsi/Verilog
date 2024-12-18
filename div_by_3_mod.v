module div_by_3_mod(
	input clk,reset,
	output clk_out
);

reg [1:0] temp_out_1;
reg div_by_3,temp_out_2;


always@(posedge clk) begin
	if(reset)
		temp_out_1 <= 0;
	else
		temp_out_1 <= (temp_out_1==2'd2)?0:temp_out_1+1;
end

always@(negedge clk) begin
	if(reset)
		temp_out_2 <= 0;
	else
		temp_out_2 <= temp_out_1[1];
end

assign clk_out = temp_out_1[1]|temp_out_2;
endmodule
