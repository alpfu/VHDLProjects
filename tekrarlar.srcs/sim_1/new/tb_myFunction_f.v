`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2018 10:52:09
// Design Name: 
// Module Name: tb_myFunction_f
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


module tb_myFunction_f(
    // testbench modulunde input-output olmaz. asil modulun input-output portlarina deger yollariz
    );
    
    reg a, b, c;
    wire y;
    
    f_myFunction uut(
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );
    
    initial begin
        a = 0; b = 0; c = 0; #50;
        c = 1; #50;
        b = 1; c = 0; #50;
        c = 1; #50;
        a = 1; b = 0; c = 0; #50;
        c = 1; #50;
        b = 1; c = 0; #50;
        c = 1; #50;
    end
    
endmodule
