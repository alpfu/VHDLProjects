`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 20:46:34
// Design Name: 
// Module Name: f_3BitSubtracter
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


module f_3BitSubtracter(
    input[2:0] A,
    input[2:0] B,
    input Bin,
    output[2:0] D,
    output Bout
    );
    
    wire fs1out, fs2out;    // fs1out ---> fs2in fs2out ---> fs3in
    
    f_fullSubtracter fs1(.A(A[0]), .B(B[0]), .Bin(Bin), .D(D[0]), .Bout(fs1out));
    f_fullSubtracter fs2(.A(A[1]), .B(B[1]), .Bin(fs1out), .D(D[1]), .Bout(fs2out));
    f_fullSubtracter fs3(.A(A[2]), .B(B[2]), .Bin(fs2out), .D(D[2]), .Bout(Bout));
endmodule
