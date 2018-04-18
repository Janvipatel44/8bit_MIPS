`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 30/8/2016
//Name of code : Data_memory_tb
//Description : Test bench
////////////////////////////////////////////////////////////////////////////////

module Data_memory_tb;

	// Inputs
	reg [7:0] ans_ex;
	reg [7:0] B_Bypass;
	reg [4:0] RW_ex;
	reg mem_en_ex;
	reg mem_rw_ex;
	reg mem_mux_sel_ex;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] mux_ans_dm;
	wire [4:0] RW_dm;

	// Instantiate the Unit Under Test (UUT)
	Data_memory uut (
		.mux_ans_dm(mux_ans_dm), 
		.RW_dm(RW_dm), 
		.ans_ex(ans_ex), 
		.B_Bypass(B_Bypass), 
		.RW_ex(RW_ex), 
		.mem_en_ex(mem_en_ex), 
		.mem_rw_ex(mem_rw_ex), 
		.mem_mux_sel_ex(mem_mux_sel_ex), 
		.clk(clk), 
		.reset(reset)
	);

	always#500 clk=~clk;	//clock cycle changes per 500ns
	
	initial begin
		// Initialize Inputs
		ans_ex = 8'h05;
		B_Bypass = 8'h50;
		RW_ex = 5'h1f;
		mem_en_ex = 0;
		mem_rw_ex = 0;
		mem_mux_sel_ex = 1;
		clk = 0;
		reset = 1;	//reset is 1 at 0ns

		#200;
			reset=0;	//reset is 0 at 200ns
		  
		#600;	
			reset=1;	//reaet is 1 at 800ns
			
		#1200;
			mem_en_ex=1;	//change occured at 2000ns
			
		#1000;
			mem_rw_ex=1;	//change occured at 3000ns
			
		#1000;
			mem_rw_ex=0;	//change occured at 4000ns
			
		#1000;
			mem_mux_sel_ex=0;	//change occured at 5000ns
			

	end
      
endmodule


