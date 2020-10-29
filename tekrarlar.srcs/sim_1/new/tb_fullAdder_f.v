`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 15:46:17
// Design Name: 
// Module Name: tb_fullAdder_f
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


module tb_fullAdder_f(
 
    );
    
    reg A, B, Cin;
    wire S, Cout;
    
    f_fullAdder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
    initial begin
        A = 1'b0; B = 1'b0; Cin = 1'b0;
        #50;
        
        A = 1'b0; B = 1'b0; Cin = 1'b1;
        #50;
        
        A = 1'b0; B = 1'b1; Cin = 1'b0;
        #50;
        
        A = 1'b0; B = 1'b1; Cin = 1'b1;
        #50;
        
        A = 1'b1; B = 1'b0; Cin = 1'b0;
        #50;
        
        A = 1'b1; B = 1'b0; Cin = 1'b1;
        #50;
        
        A = 1'b1; B = 1'b1; Cin = 1'b0;
        #50;
        
        A = 1'b1; B = 1'b1; Cin = 1'b1;
        #50;       
    end
endmodule
