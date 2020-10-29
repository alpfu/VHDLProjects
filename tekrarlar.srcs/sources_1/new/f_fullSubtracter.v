`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 20:04:15
// Design Name: 
// Module Name: f_fullSubtracter
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


module f_fullSubtracter(
    input A, B, Bin,
    output D, Bout
    );
    
    wire An, Bn, BinN;
    not(An, A);
    not(Bn, B);
    not(BinN, Bin);
    
    wire BxBin, AnBxBin, ABnBinN, ABBin;
    xor(BxBin, B, Bin);
    and(AnBxBin, An, BxBin);
    and(ABnBinN, A, Bn, BinN);
    and(ABBin, A, B, Bin);
    or(D, AnBxBin, ABnBinN, ABBin);
    
    wire AnBnBin, AnBBinN, AnBBin;
    and(AnBnBin, An, Bn, Bin);
    and(AnBBinN, An, B, BinN);
    and(AnBBin, An, B, Bin);
    or(Bout, AnBnBin, AnBBinN, AnBBin, ABBin);
endmodule
