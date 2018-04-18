`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 4/10/2016
//Name of code : dependency_check_block_tb
//Description :  Test bench
////////////////////////////////////////////////////////////////////////////////

//Test bench
module dependency_check_block_tb;

	// Inputs
	reg [19:0] ins;
	reg clk;
	reg reset;

	// Outputs
	wire [1:0] mux_sel_a;
	wire [1:0] mux_sel_b;
	wire imm_sel;
	wire [7:0] imm;
	wire mem_en_dec;
	wire mem_rw_dec;
	wire mem_mux_sel_dec;
	wire [4:0] RW_dec;
	wire [4:0] op_dec;

	// Instantiate the Unit Under Test (UUT)
	dependency_check_block uut (
		.mux_sel_a(mux_sel_a), 
		.mux_sel_b(mux_sel_b), 
		.imm_sel(imm_sel), 
		.imm(imm), 
		.mem_en_dec(mem_en_dec), 
		.mem_rw_dec(mem_rw_dec), 
		.mem_mux_sel_dec(mem_mux_sel_dec), 
		.RW_dec(RW_dec), 
		.op_dec(op_dec), 
		.ins(ins), 
		.clk(clk), 
		.reset(reset)
	);

	always #500 clk = ~clk;			//clock cycle changes per 500ns
	initial begin
		// Initialize Inputs
		ins = 0;
		clk = 0;
		reset = 1;//reset is 1 at 0ns
		
		#200; //reset is 0 at 200ns
      reset = 0;
		
		#600;		//reset is 1 at 800ns
		reset=1;
		
		#200;		//ins changes at 1000ns
		ins=20'b00000000010001000011;
		
		#1000;	//ins changes at 2000ns
		ins=20'b10100001000000100000;
		
		#2000;	//ins changes at 4000ns
		ins=20'b00100001010000100100;
		
		#1000;	//ins changes at 5000ns
		ins=20'b01101001100000100101;

	end
      
endmodule

