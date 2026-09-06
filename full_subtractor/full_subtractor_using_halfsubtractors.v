`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2026 15:36:28
// Design Name: 
// Module Name: full_subtractor_using_halfsubtractors
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


module full_subtractor_using_halfsubtractors(input a_fs,b_fs,bin_fs, output diff_fs,borrow_fs);
wire w1,w2,w3;
half_subtractor hs1(.a(a_fs),.b(b_fs),.diff(w1),.borrow(w2));
half_subtractor hs2(.a(w1),.b(bin_fs),.diff(diff_fs),.borrow(w3));
or o1(borrow_fs,w2,w3);
endmodule
