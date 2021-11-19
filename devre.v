`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 01:33:23 AM
// Design Name: 
// Module Name: devre
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


module devre(
    input A,B,C,
    output F
    );
    wire k1,k2,k3,k4,k5;
    and(k1,A,B);
    and(k2,C,1);
    nand(k3,k1,k2);
    nor(k4,k3,k2);
    xor(k5,A,k1);
    or(F,k4,k5);    
endmodule
