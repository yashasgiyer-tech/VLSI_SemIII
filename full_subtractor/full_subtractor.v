`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2026 15:19:11
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(input a,b,bin, output diff,borrow);
wire w1,w2,w3,w4,w5;
xor x1(w1,a,b);
not n1(w2,a);
and a1(w3,w2,b);
xor x2(diff,w1,bin);
not n2(w4,w1);
and a2(w5,w4,bin);
or o1(borrow,w5,w3);
endmodule
