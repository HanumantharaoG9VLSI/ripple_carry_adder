`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2023 22:15:27
// Design Name: 
// Module Name: rca_4bit
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


module rca_4bit(cout,sum,a,b,cin);
output cout;
output [3:0]sum;
input [3:0]a,b;
input cin;
wire [3:0]c;
//instantiation
full_adder fa0(sum[0],c[0],a[0],b[0],cin);
full_adder fa1(sum[1],c[1],a[1],b[1],c[0]);
full_adder fa2(sum[2],c[2],a[2],b[2],c[1]);
full_adder fa3(sum[3],cout,a[3],b[3],c[2]);
endmodule
