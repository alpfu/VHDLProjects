`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 13:52:39
// Design Name: 
// Module Name: f_halfAdder
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


module f_halfAdder(
    input a, b,
    output sum, carry_out
    );
    
    xor(sum, a, b);
    and(carry_out, a, b);
endmodule
