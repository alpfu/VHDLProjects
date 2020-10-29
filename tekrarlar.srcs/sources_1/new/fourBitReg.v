`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2018 00:49:07
// Design Name: 
// Module Name: fourBitReg
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


module fourBitReg(
    input clk, rst, en,
    input[3:0] d,
    output reg[3:0] q
    );
    
    always@(posedge clk, posedge rst, posedge en) begin
        if(en == 1'b0) begin
            q = 4'bxxxx;
        end
        else begin
            if(rst == 1'b1) begin
                q = 4'b0000;
            end
            else begin
                q = d;
            end
        end
    end
    
endmodule
