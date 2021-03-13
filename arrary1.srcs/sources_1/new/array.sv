`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2021 06:51:52 PM
// Design Name: 
// Module Name: array
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


module array(
	input clock,
	input reset,
	input [7:0] data[8],
	output [7:0] out_data
    );

	logic [7:0] a_out_data;
	logic [7:0] i;

	always @( posedge clock ) begin
		if (reset != 0) begin
			a_out_data <= 8'h0;
		end else begin
			logic [7:0] tmp = 0;
			for (i=0;i<8;i++) begin
				tmp += data[i];
			end
			a_out_data = tmp;
		end
	end

	assign out_data = a_out_data;

endmodule
