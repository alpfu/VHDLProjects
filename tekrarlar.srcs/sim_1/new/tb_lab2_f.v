`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 13:18:58
// Design Name: 
// Module Name: tb_lab2_f
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


module tb_lab2_f(

    );
    
    reg A, B, C, D;
    wire F;
    
    f_lab2 uut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .F(F)
    );
    
    initial begin
        A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
        #50;
        
        A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
        #50;
        
        A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
        #50;
        
        A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
        #50;
        
        A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
        #50;
        
        A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
        #50;
        
        A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
        #50;
        
        A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
        #50;
        
        A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
        #50;
        
        A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
        #50;
        
        A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
        #50;
        
        A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1;
        #50;
        
        A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0;
        #50;
        
        A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1;
        #50;
        
        A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0;
        #50;
        
        A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
        #50;
    end
endmodule
