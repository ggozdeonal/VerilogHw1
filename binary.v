`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 09:56:57 PM
// Design Name: 
// Module Name: binary
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


module binary(
    input [3:0]kaynak_dugumu,
    input [1:0] yon,
    output [3:0] hedef_dugumu
    );
    
    wire k0n,k1n,y0n,y1n,w1,w2,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14;

    or(w1,yon[0],yon[1]);
    and(w2,w1,kaynak_dugumu[0]);
    or(hedef_dugumu[3],w2,kaynak_dugumu[1]);

    not(k0n,kaynak_dugumu[0]);
    not(k1n,kaynak_dugumu[1]);
    not(y0n,yon[0]);
    not(y1n,yon[1]);
    and(w4,k0n,yon[0]);
    and(w5,kaynak_dugumu[0],y0n,y1n);
    and(w6,k0n,yon[1]);
    and(w12,kaynak_dugumu[0],kaynak_dugumu[1]);
    or(hedef_dugumu[2],w4,w5,w6,w12);

    and(w7,y0n,y1n);
    and(w8,yon[0],yon[1],k1n);
    and(w13,kaynak_dugumu[0],kaynak_dugumu[1]);
    or(hedef_dugumu[1],w7,w8,w13);

    and(w9,k1n,y0n);
    and(w10,kaynak_dugumu[1],yon[1]);
    and(w11,k0n,y0n);
    and(w14,kaynak_dugumu[0],kaynak_dugumu[1],yon[0]);
    or(hedef_dugumu[0],w9,w10,w11,w14);

endmodule
