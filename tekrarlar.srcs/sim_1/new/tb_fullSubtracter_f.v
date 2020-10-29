`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 20:13:27
// Design Name: 
// Module Name: tb_fullSubtracter_f
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


module tb_fullSubtracter_f(

    );
    
    reg a, b, bin;
    wire d, bout;
    
    f_fullSubtracter uut(
        .A(a),
        .B(b),
        .Bin(bin),
        .D(d),
        .Bout(bout)
    );
    
    initial begin
        a = 1'b0; b = 1'b0; bin = 1'b0; #50;
        a = 1'b0; b = 1'b0; bin = 1'b1; #50;
        a = 1'b0; b = 1'b1; bin = 1'b0; #50;
        a = 1'b0; b = 1'b1; bin = 1'b1; #50;
        a = 1'b1; b = 1'b0; bin = 1'b0; #50;
        a = 1'b1; b = 1'b0; bin = 1'b1; #50;
        a = 1'b1; b = 1'b1; bin = 1'b0; #50;
        a = 1'b1; b = 1'b1; bin = 1'b1; #50;        
    end
endmodule
