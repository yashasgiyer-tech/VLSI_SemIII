`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2026 20:07:36
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg t_a, t_b;
wire t_sum, t_carry;
half_adder uut(.a(t_a),.b(t_b),.sum(t_sum),.carry(t_carry));
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
