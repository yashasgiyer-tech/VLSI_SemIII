`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2026 21:25:19
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg t_a, t_b, t_cin;
wire t_sum,t_carry;
full_adder uut(.a(t_a),.b(t_b),.cin(t_cin),.sum(t_sum),.carry(t_carry));
initial begin
t_a = 0; t_b=0; t_cin = 0; 
#10;
t_a = 0; t_b=0; t_cin = 1; 
#10;
t_a = 0; t_b=1; t_cin = 0; 
#10;
t_a = 0; t_b=1; t_cin = 1; 
#10;
t_a = 1; t_b=0; t_cin = 0; 
#10;
t_a = 1; t_b=0; t_cin = 1; 
#10;
t_a = 1; t_b=1; t_cin = 0; 
#10;
t_a = 1; t_b=1; t_cin = 1; 
#10;
$finish;
end
endmodule
