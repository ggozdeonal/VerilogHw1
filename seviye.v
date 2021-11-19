`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 11:13:17 PM
// Design Name: 
// Module Name: seviye
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


module seviye(
    input [3:0]dugum,
    output [2:0] dugumun_seviyesi
    );
    
    wire k0n,k1n,k2n,k3n,w1,w2,w3,w4,w5,w6,w7,w8,w9;

    not(k0n,dugum[0]);
    not(k1n,dugum[1]);
    not(k2n,dugum[2]);
    not(k3n,dugum[3]);
    
    and(dugumun_seviyesi[2],dugum[3],dugum[2],dugum[1]);
    
    and(w1,k3n,dugum[2]);
    and(w2,k2n,dugum[3]);
    and(w3,k1n,dugum[2]);
    and(w4,k3n,dugum[1],dugum[0]);
    or(dugumun_seviyesi[1],w1,w2,w3,w4);
    
    and(w5,k1n,dugum[3]);
    and(w7,k1n,k2n,dugum[0]);
    and(w8,k0n,k2n,dugum[1]);
    and(w9,k3n,dugum[2],dugum[1],dugum[0]);
    
    or(dugumun_seviyesi[0],w5,w2,w7,w8,w9);
  
endmodule
