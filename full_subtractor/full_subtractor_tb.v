`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2026 00:00:09
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();
reg t_a,t_b,t_bin;
wire t_diff, t_borrow;
full_subtractor_using_halfsubtractors uut(.a_fs(t_a),.b_fs(t_b),.bin_fs(t_bin),.diff_fs(t_diff),.borrow_fs(t_borrow));
initial begin
t_a = 0; t_b=0; t_bin = 0; 
#10;
t_a = 0; t_b=0; t_bin = 1; 
#10;
t_a = 0; t_b=1; t_bin = 0; 
#10;
t_a = 0; t_b=1; t_bin = 1; 
#10;
t_a = 1; t_b=0; t_bin = 0; 
#10;
t_a = 1; t_b=0; t_bin = 1; 
#10;
t_a = 1; t_b=1; t_bin = 0; 
#10;
t_a = 1; t_b=1; t_bin = 1; 
#10;
$finish;
end
endmodule
