`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 20:57:06
// Design Name: 
// Module Name: tb_3BitSubtracter_f
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


module tb_3BitSubtracter_f(

    );
    
    reg[2:0] A;
    reg[2:0] B;
    reg Bin;
    wire[2:0] D;
    wire Bout;
    
    f_3BitSubtracter uut(
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );
    
    initial begin
        A = 3'b111; B = 3'b101; Bin = 1'b0; #50; // 7-5=2    
        A = 3'b100; B = 3'b001; Bin = 1'b0; #50; // 4-1=3
        A = 3'b110; B = 3'b010; Bin = 1'b0; #50; // 6-2=4
        A = 3'b011; B = 3'b010; Bin = 1'b0; #50; // 3-2=1
    end
    
endmodule
