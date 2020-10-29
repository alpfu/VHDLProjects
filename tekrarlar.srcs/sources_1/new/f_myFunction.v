`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2018 10:49:13
// Design Name: 
// Module Name: f_myFunction
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


module f_myFunction(
    input a, b, c,
    output y
    );
    
    assign y = (~a & ~b & ~c | a & ~b & ~c | a & ~b & c);
    //   y = (not a) and (not b) OR a and (not b) and (not c) OR a and (not b) and c
endmodule