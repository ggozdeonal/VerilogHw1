`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 12:57:26 AM
// Design Name: 
// Module Name: asansor
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


module asansor(
    input [1:0] bulundugu_kat,
    input [1:0] buton,
    output [1:0] durdugu_kat
    );
    
    wire b0n,b1n,k0n,w1,w2,w3,w4,w5,w6,w7,w8;
    
    not(b1n,buton[1]);
    not(b0n,buton[0]);
    not(k0n,bulundugu_kat[0]);
    
    or(w1,bulundugu_kat[0],bulundugu_kat[1],buton[0]);
    and(w2,w1,b1n);
    and(w3,bulundugu_kat[0],bulundugu_kat[1],buton[0]);
    or(durdugu_kat[1],w2,w3);
    
    and(w4,k0n,b1n);
    and(w5,b1n,buton[0]);
    and(w6,b0n,bulundugu_kat[1],bulundugu_kat[0]);
    and(w7,buton[0],bulundugu_kat[1],k0n);
    or(durdugu_kat[0],w4,w5,w6,w7);
    
endmodule
