`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2026 23:51:26
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb();
reg t_a,t_b;
wire t_diff,t_borrow;
half_subtractor uut(.a(t_a),.b(t_b),.diff(t_diff),.borrow(t_borrow));
initial begin
t_a = 0;t_b = 0;
#10;
t_a = 0;t_b = 1;
#10;
t_a = 1;t_b = 1;
#10;
t_a = 1;t_b = 0;
#10;
$finish;
end
endmodule
