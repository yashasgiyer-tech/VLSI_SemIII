`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 18:24:19
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(input [3:0] a_bcd,input [3:0] b_bcd,input c_in,output [3:0] sum_bcd,output cout);
wire [3:0] sum_temp;
wire cout_temp;
wire w1, w2;
wire [3:0] correction;
ripple_carry_adder rca1(.a_rca(a_bcd),.b_rca(b_bcd),.cin(c_in),.sum_rca(sum_temp),.cout(cout_temp));
and(w1, sum_temp[3], sum_temp[2]);
and(w2, sum_temp[3], sum_temp[1]);
or(cout, cout_temp, w1, w2);
assign correction[0] = 1'b0;
assign correction[1] = cout;
assign correction[2] = cout;
assign correction[3] = 1'b0;
wire dummy_cout;
ripple_carry_adder rca2(.a_rca(sum_temp),.b_rca(correction),.cin(1'b0),.sum_rca(sum_bcd),.cout(dummy_cout));
endmodule
