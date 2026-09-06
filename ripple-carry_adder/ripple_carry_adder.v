`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2026 17:26:39
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(input [3:0] a_rca, [3:0] b_rca, input cin, output [3:0] sum_rca, output cout);
wire w1,w2,w3;
full_adder fa1(a_rca[0],b_rca[0],cin,sum_rca[0],w1);
full_adder fa2(a_rca[1],b_rca[1],cin,sum_rca[1],w2);
full_adder fa3(a_rca[2],b_rca[2],cin,sum_rca[2],w3);
full_adder fa4(a_rca[3],b_rca[3],cin,sum_rca[3],cout);
endmodule
