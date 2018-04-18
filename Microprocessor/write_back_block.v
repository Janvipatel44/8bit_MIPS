`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 11/10/2016
//Name of code : write_back_block
//Description :  write back
//////////////////////////////////////////////////////////////////////////////////

module write_back_block(mux_ans_dm,clk,reset,ans_wb);

//input variable declaration
input [7:0]mux_ans_dm;
input clk,reset;

//output variable declaration
output reg [7:0]ans_wb;

//body of code starts from here

//register block
always@(posedge clk)	//Value will change at the positive edge of the clock
begin
		if(reset==1'b1)		//if reset is 1 only then value will be stored/changed
			ans_wb<=mux_ans_dm;
		else						//if reset is 0 only then value will be zero
			ans_wb<=8'b00000000;
end

endmodule //body of code ends here
