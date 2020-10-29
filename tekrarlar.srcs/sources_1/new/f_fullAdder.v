`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 15:28:03
// Design Name: 
// Module Name: f_fullAdder
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


module f_fullAdder(
    input A, B, Cin,
    output S, Cout
    );
    
    wire h1_carry_out, h1_sum;  // 2 adet half-adder kullanilir. semada gorulen cikislar
    wire h2_carry_out;          // icin olusturulan wire
    
    f_halfAdder h1(.a(A), .b(B), .sum(h1_sum), .carry_out(h1_carry_out));
    f_halfAdder h2(.a(h1_sum), .b(Cin), .sum(S), .carry_out(h2_carry_out));
    
    or(Cout, h1_carry_out, h2_carry_out);
    
endmodule
