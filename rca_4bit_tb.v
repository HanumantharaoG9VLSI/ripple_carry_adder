`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2023 22:33:52
// Design Name: 
// Module Name: rca_4bit_tb
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


module rca_4bit_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
rca_4bit uut(cout,sum,a,b,cin);
initial begin
$monitor($time,"cout=%b,sum=%b,a=%b,b=%b,cin=%b",cout,sum,c,b,cin);
a=0;
b=0;
cin=0;
#100 a=~a;
#100 b=~b;
#100 cin=~cin;
end
endmodule

