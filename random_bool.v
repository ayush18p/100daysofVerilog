`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 14:11:27
// Design Name: 
// Module Name: random_bool
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


module random_bool(
    input a,
    input b,
    input c,
    input d,
    output out
    );
    //abc+a'c'+d
    wire w1,w2,w3,w4,w5,w6;
    and (w1,a,b);
    and (w2,w1,c);
    not (w3,a);
    not (w4,b);
    and (w5,w4,w3);
    or (w6,w5,d);
    or (out,w2,w6);
endmodule
