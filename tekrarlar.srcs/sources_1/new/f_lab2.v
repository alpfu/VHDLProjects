`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 13:07:38
// Design Name: 
// Module Name: f_lab2
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


module f_lab2(
    input A, B, C, D,
    output F
    );
    
    wire An, Bn, Cn;    // ara deger tanimlamak icin wire kullandik
    not(An, A);         // bit degerinin tersini alir
    not(Bn, B);
    not(Cn, C);
    
    wire AnBC;
    and(AnBC, An, B, C);    // and islemi
    
    wire AD;
    and(AD, A, D);   
    
    wire CnD;
    and(CnD, Cn, D);
    
    or(F, AnBC, Bn, AD, CnD);   // tum olusturulanlar or islemine girer ve output'a atilir
endmodule
