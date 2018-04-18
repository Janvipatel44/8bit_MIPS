`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 30/8/2016
//Name of code : Register_bank_tb
//Description : Test bench
////////////////////////////////////////////////////////////////////////////////

module Register_bank_tb;

	// Inputs
	reg [19:0] ins;
	reg [4:0] RW_dm;
	reg [7:0] ans_ex;
	reg [7:0] mux_ans_dm;
	reg [7:0] ans_wb;
	reg [7:0] imm;
	reg [1:0] mux_sel_a;
	reg [1:0] mux_sel_b;
	reg imm_sel;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] A;
	wire [7:0] B;

	// Instantiate the Unit Under Test (UUT)
	Register_bank uut (
		.A(A), 
		.B(B), 
		.ins(ins), 
		.RW_dm(RW_dm), 
		.ans_ex(ans_ex), 
		.mux_ans_dm(mux_ans_dm), 
		.ans_wb(ans_wb), 
		.imm(imm), 
		.mux_sel_a(mux_sel_a), 
		.mux_sel_b(mux_sel_b), 
		.imm_sel(imm_sel), 
		.clk(clk), 
		.reset(reset)
	);

	always#500 clk=~clk;	//clock cycle changes per 500ns
	
	initial begin
		// Initialize Inputs
		ins = 20'b00000001010011000101;
		RW_dm = 5'h05;
		ans_ex = 8'h01;
		mux_ans_dm = 8'h02;
		ans_wb = 8'h03;
		imm = 8'h04;
		mux_sel_a = 0;
		mux_sel_b = 0;
		imm_sel = 0;
		clk = 0;
		reset = 1;	//reset is 1 at 0ns

		#200;	
			reset=0;	//reset is 0 at 200ns
		  
		#600;
			reset=1;	//reset is 1 at 800ns
		
		#900;
			RW_dm = 5'h06;		//change occured at 1700ns
			mux_ans_dm = 8'h05;	//change occured at 1700ns

		#1000;
			RW_dm = 5'h07;		//change occured at 2700ns
			mux_sel_a = 1;		//change occured at 2700ns
			
		#1000;
			mux_sel_a = 2;		//change occured at 3700ns
			mux_sel_b = 3;		//change occured at 3700ns
			
		#1000;
			imm_sel=1;		//change occured at 4700ns
		

	end
      
endmodule
