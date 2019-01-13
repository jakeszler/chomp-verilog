`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:12 01/09/2019 
// Design Name: 
// Module Name:    Mat_mult 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//Module for calculating Res = A*B
//Where A,B and C are 2 by 2 matrices.
module Mat_mult(A,B,clk,Res);
	parameter widthbig = 127; 
	parameter width = 31;
    //input and output ports.
    //The size 32 bits which is 2*2=4 elements,each of which is 8 bits wide.    
    input signed [127:0] A;
    input signed[127:0] B;
    output signed [127:0] Res;
    //internal variables    
    reg signed [127:0] Res;
    reg signed [31:0] A1 [0:1][0:1];
    reg signed [31:0] B1 [0:1][0:1];
    reg signed [31:0] Res1 [0:1][0:1];  
	 reg signed [31:0]temp1= 32'd25;
	 reg signed [31:0]temp2 = 32'd5;
	 	 reg signed go = 1'b1;
    integer i,j,k;
	 wire [63:0] divout;
	 wire valid;
    input clk;
	div divider (
  .aclk(clk), // input aclk
  .s_axis_divisor_tvalid(go), // input s_axis_divisor_tvalid
  .s_axis_divisor_tdata(temp2), // input [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(go), // input s_axis_dividend_tvalid
  .s_axis_dividend_tdata(temp1), // input [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(divout) // output [63 : 0] m_axis_dout_tdata
		);	 
    always@ (A or B)
    begin
    //Initialize the matrices-convert 1 D to 3D arrays
        {A1[0][0],A1[0][1],A1[1][0],A1[1][1]} = A;
        {B1[0][0],B1[0][1],B1[1][0],B1[1][1]} = B;
        i = 0;
        j = 0;
        k = 0;
        {Res1[0][0],Res1[0][1],Res1[1][0],Res1[1][1]} = 128'd0; //initialize to zeros.
        //Matrix multiplication
        for(i=0;i < 2;i=i+1)
            for(j=0;j < 2;j=j+1)
                for(k=0;k < 2;k=k+1)
                    Res1[i][j] = Res1[i][j] + (A1[i][k] * B1[k][j]);
        //final output assignment - 3D array to 1D array conversion.            
        Res = {Res1[0][0],Res1[0][1],Res1[1][0],Res1[1][1]};     
    end 

endmodule