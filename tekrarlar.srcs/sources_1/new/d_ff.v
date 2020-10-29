`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2018 20:45:48
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input clk, rst,
    input[3:0] d,
    output reg[3:0] q
    );
    
    always@(posedge clk, posedge rst) begin
        if(rst == 1'b1) begin
            q = 4'b0000;
        end
        else begin
            q = d;
        end
    end
endmodule
