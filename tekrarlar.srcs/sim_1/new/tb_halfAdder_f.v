`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2018 13:56:13
// Design Name: 
// Module Name: tb_halfAdder_f
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


module tb_halfAdder_f(

    );
    
    reg a, b;
    wire sum, carry_out;
    
    f_halfAdder uut(    // ana modulun inputlarina ve outputlarina degerleri baglamak
        .a(a),          // .a = ana moduldeki a inputu (a) = reg a'nin baglanmasi
        .b(b),
        .sum(sum),
        .carry_out(carry_out)
    );
    
    initial begin   // testcase olusturmak. tum ihtimallerin yazilmis hali
        a = 1'b0; b = 1'b0;
        #50;    // case arasi 50 ns bekleme suresi

        a = 1'b0; b = 1'b1;
        #50;
        
        a = 1'b1; b = 1'b0;
        #50;
        
        a = 1'b1; b = 1'b1;
        #50;        
    end
endmodule
