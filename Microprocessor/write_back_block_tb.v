`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 4/10/2016
//Name of code : write_back_block_tb
//Description : Test bench
//////////////////////////////////////////////////////////////////////////////////

module write_back_block_tb;

	// Inputs
	reg [7:0] mux_ans_dm;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] ans_wb;

	// Instantiate the Unit Under Test (UUT)
	write_back_block uut (
		.mux_ans_dm(mux_ans_dm), 
		.clk(clk), 
		.reset(reset), 
		.ans_wb(ans_wb)
	);

	always #500 clk=~clk;	//clock cycle changes per 500ns
	initial begin
		// Initialize Inputs
		mux_ans_dm = 8'hFF;
		clk = 0;
		reset = 1;

		//reset changes at 200 ns
		#200;
      reset = 0;

		//reset changes at 700ns
		#500;
		reset = 1;
		
		//reset changes at 2000ns
		#1300;
		mux_ans_dm=8'h0F;
		
	end
endmodule

