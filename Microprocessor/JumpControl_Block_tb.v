`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 16/9/2016
//Name of code : JumpControl_block_tb
//Description :  Test bench
////////////////////////////////////////////////////////////////////////////////

module JumpControl_Block_tb;

	// Inputs
	reg [19:0] ins;
	reg clk;
	reg interrupt;
	reg [7:0] current_address;
	reg [3:0] flag_ex;
	reg reset;

	// Outputs
	wire pc_mux_sel;
	wire [7:0] jmp_loc;

	// Instantiate the Unit Under Test (UUT)
	JumpControl_Block uut (
		.pc_mux_sel(pc_mux_sel), 
		.jmp_loc(jmp_loc), 
		.ins(ins), 
		.clk(clk), 
		.interrupt(interrupt), 
		.current_address(current_address), 
		.flag_ex(flag_ex), 
		.reset(reset)
	);

	always #500 clk=~clk;	//clock cycle changes per 500ns
	
	initial begin
		// Initialize Inputs at 0ns
		ins = 20'h00000;
		clk = 0;
		interrupt = 0;
		current_address = 8'h01;
		flag_ex = 4'h8;	
		reset = 1;	//reset is 1 at 0ns

		#200;	//reset is 0 at 200ns
		reset=0;
		
		#600;	//reset is 1 at 800ns
		reset=1;
		
		#900;	//interrupt is 1 at 1700ns
		interrupt=1;
		
		#1000;		//interrupt is 0 and ins changes at 2700ns
		interrupt=0;
		ins=20'h00008;
		
		#1000;		//ins and current_address change at 3700ns
		ins=20'hc0008;
		current_address=8'h04;
		
		#1000;	//ins changes at 4700ns
		ins=20'h80008;
		
		#1000;	//ins changes at 5700ns
		ins=20'hf8008;
		
		#1000;	//flag_ex changes at 6700ns
		flag_ex=4'ha;
		

	end
      
endmodule

