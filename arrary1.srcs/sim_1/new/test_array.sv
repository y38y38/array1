`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2021 06:58:51 PM
// Design Name: 
// Module Name: test_array
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_array();

localparam STEP 	= 8;
localparam TEST_TIME = (8*4);

reg CLOCK;
reg RESET;

always begin
	CLOCK = 0; #(STEP/2);
	CLOCK = 1; #(STEP/2);
end


logic [7:0] DATA[8];
logic [7:0] OUT_DATA;


array array_inst(
	.clock(CLOCK),
	.reset(RESET),
	.data(DATA),
	.out_data(OUT_DATA)
);


initial begin
	int i;
	for(i=0;i<8;i++) begin
		DATA[i] <= i;
	end
	RESET = 1'b1;
	#STEP;
	RESET = 1'b0;
	#TEST_TIME;
	$display (OUT_DATA);
end

endmodule
