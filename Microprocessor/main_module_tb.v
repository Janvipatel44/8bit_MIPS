`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 11/10/2016
//Name of code : main_module_tb
//Description : Test banch
//////////////////////////////////////////////////////////////////////////////////

module main_module_tb;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg interrupt;
	reg reset;

	// Outputs
	wire [7:0] data_out;
	wire [19:0] ins;
	wire [7:0] A;
	wire [7:0] B;
	wire [7:0] current_address;
	wire [7:0] ans_ex;
	wire [7:0] mux_ans_dm;
	wire [7:0] ans_wb;

	// Instantiate the Unit Under Test (UUT)
	main_module uut (
		.data_out(data_out), 
		.ins(ins), 
		.A(A), 
		.B(B), 
		.current_address(current_address), 
		.ans_ex(ans_ex), 
		.mux_ans_dm(mux_ans_dm), 
		.ans_wb(ans_wb), 
		.data_in(data_in), 
		.clk(clk), 
		.interrupt(interrupt), 
		.reset(reset)
	);

	always
	#500 clk = ~clk;		//clock cycle changes per 500ns
	initial
		begin
		   // Initialize Inputs
			data_in = 0;		
			interrupt = 0;
			clk = 0;
			reset = 1;
			//reset changes at 200ns
			#200; reset = 0;
			//reset changes at 700ns
			#500; reset = 1;
		end
		
      
endmodule

