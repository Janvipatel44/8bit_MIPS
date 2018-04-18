`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 2/9/2016
//Name of code : StallControl_block_tb
//Description :  Test bench
////////////////////////////////////////////////////////////////////////////////

//Test bench
module StallControl_Block_tb;

	// Inputs
	reg [19:0] ins_pm;
	reg clk;
	reg reset;

	// Outputs
	wire stall;
	wire stall_pm;

	// Instantiate the Unit Under Test (UUT)
	StallControl_Block uut (
		.stall(stall), 
		.stall_pm(stall_pm), 
		.ins_pm(ins_pm), 
		.clk(clk), 
		.reset(reset)
	);

	 always #500 clk = ~clk; //clock cycle changes per 500ns
	
	initial begin
		// Initialize Inputs
		ins_pm = 20'h00000;
		clk = 0;
		reset = 1; //reset is 1 at 0ns
		
		#200; //reset is 0 at 200ns
      reset = 0;
		
		#500; //reset is 1 at 700ns
		reset = 1;
		   
		#900; //ins_pm is changing at 1600ns
		ins_pm = 20'ha0000;
		
		#2000; //ins_pm is changing at 3600ns
		ins_pm = 20'h00000;
		
		#1000; //ins_pm is changing at 4600ns
		ins_pm = 20'hf0000;
		
		#3000; //ins_pm is changing at 7600ns
		ins_pm = 20'h00000;
		
		#1000; //ins_pm is changing at 8600ns
		ins_pm = 20'h88000;
		
	end
      
endmodule


      


