`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//Group no: B04
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 19/8/2016
//Name of code : progcount_im_block_tb
//Description : Test bench
//////////////////////////////////////////////////////////////////////////////////

module progcount_im_block_tb;

	// Inputs
	reg [7:0] jmp_loc;
	reg pc_mux_sel;
	reg stall;
	reg stall_pm;
	reg reset;
	reg clk;

	// Outputs
	wire [19:0] ins;
	wire [19:0] ins_pm;
	wire [7:0] current_address;

	// Instantiate the Unit Under Test (UUT)
	progcount_im_block uut (
		.ins(ins), 
		.ins_pm(ins_pm), 
		.current_address(current_address), 
		.jmp_loc(jmp_loc), 
		.pc_mux_sel(pc_mux_sel), 
		.stall(stall), 
		.stall_pm(stall_pm), 
		.reset(reset), 
		.clk(clk)
	);

	always #5 clk=~clk; //clock cycle changes per 5ns
	 
	initial begin
		// Initialize Inputs
		jmp_loc = 0;
		pc_mux_sel = 1;
		stall = 0;
		stall_pm = 0;
		reset = 1;//reset is 1 at 0ns
	   clk = 0;
		
      #2;
		reset = 0;//reset is 1 at 2ns
		
		#5;
		reset = 1;//reset is 1 at 7ns
		
		#3;//change occured at 10ns
		jmp_loc = 8'b00001000;
		pc_mux_sel = 0;
       
		#30;//change occured at 40ns
		stall = 1;
		
		#20;//change occured at 60ns
		stall = 0;
		
		#10;//change occured at 70ns
		pc_mux_sel = 1;
	

	end
      
endmodule



