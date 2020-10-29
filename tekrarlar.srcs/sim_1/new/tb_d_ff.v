`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2018 21:04:16
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff(

    );
    
    reg clk, rst;
    reg[3:0] d;
    wire[3:0] q;
    
    d_ff uut(
        .clk(clk),
        .d(d),
        .rst(rst),
        .q(q)
    );
    
    initial begin
        d  = 4'b1111;
        rst = 1'b1;
        #100;
        rst = 1'b0;
        clk = 1'b0;
        forever #40 d = ~d;
        
    end   
     
    always #10 clk = ~clk;   
endmodule