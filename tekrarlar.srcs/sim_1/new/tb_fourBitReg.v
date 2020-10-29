`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2018 01:00:15
// Design Name: 
// Module Name: tb_fourBitReg
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


module tb_fourBitReg(

    );
    
    reg clk, rst, en;
    reg[3:0] d;
    wire[3:0] q;
    
    fourBitReg uut(
        .clk(clk),
        .rst(rst),
        .en(en),
        .d(d),
        .q(q)
    );
    
    initial begin
        clk = 0;
        en = 0;
        rst = 0;
        #100;
        en = 1;
        rst = 1;
        #100;
        rst = 0;
        d = 4'b0101;    // 5
        #30;
        d = 4'b1010;    // a
        #30;
        d = 4'b1111;    //f
        #30;
        d = 4'b1101;    //d
    end
    
    always #10 clk = ~clk;
endmodule
