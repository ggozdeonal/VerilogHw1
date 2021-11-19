`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 11:56:59 PM
// Design Name: 
// Module Name: fark
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



module fark(
    input [3:0] dugum_1,
    input [1:0] yon_1,
    input [3:0] dugum_2,
    input [1:0] yon_2,
    output [1:0] seviye_farki
    );
    
    wire [3:0] hedef_dugumu1;
    wire [3:0] hedef_dugumu2;
    wire [2:0] dugum1_seviyesi;
    wire [2:0] dugum2_seviyesi;
    wire s20n,s21n,s22n,s10n,s11n,s12n,w1,w2,w3,w4,w5,w6;
    
    binary b1(.kaynak_dugumu(dugum_1),
    .yon(yon_1),
    .hedef_dugumu(hedef_dugumu1)
    );
   
    binary b2(.kaynak_dugumu(dugum_2),
    .yon(yon_2),
    .hedef_dugumu(hedef_dugumu2)
    );
    seviye s1(.dugum(hedef_dugumu1),
    .dugumun_seviyesi(dugum1_seviyesi)
    );
    
    seviye s2(.dugum(hedef_dugumu2),
    .dugumun_seviyesi(dugum2_seviyesi)
    );
    
    not(s20n,dugum2_seviyesi[0]);
    not(s21n,dugum2_seviyesi[1]);
    not(s22n,dugum2_seviyesi[2]);
    not(s10n,dugum1_seviyesi[0]);
    not(s11n,dugum1_seviyesi[1]);
    not(s12n,dugum1_seviyesi[2]);
    
    and(w1,s12n,dugum1_seviyesi[1],s10n,dugum2_seviyesi[2],s21n,s20n);
    and(w2,dugum1_seviyesi[2],s11n,s10n,dugum2_seviyesi[1],s22n,s20n);
    or(seviye_farki[1],w1,w2);
    
    and(w3,s12n,dugum1_seviyesi[1],s10n,s22n,dugum2_seviyesi[1],dugum2_seviyesi[0]);
    and(w4,s12n,dugum1_seviyesi[1],dugum1_seviyesi[0],s22n,dugum2_seviyesi[1],s20n);
    and(w5,s12n,dugum1_seviyesi[1],dugum1_seviyesi[0],dugum2_seviyesi[2],s21n,s20n);
    and(w6,dugum1_seviyesi[2],s11n,s10n,dugum2_seviyesi[1],dugum2_seviyesi[0],s22n);
    or(seviye_farki[0],w3,w4,w5,w6);
    
endmodule
