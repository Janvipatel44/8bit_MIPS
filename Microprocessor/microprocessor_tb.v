`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 16/8/2016
//Name of code : microprocessor_tb
//Description : Test bench
//////////////////////////////////////////////////////////////////////////////////

module microprocessor_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] data_in;
	reg [4:0] op_dec;
	reg clk;
	reg mem_en_dec;
	reg mem_rw_dec;
	reg mem_mux_sel_dec;
	reg [4:0] RW_dec;
	reg reset;

	// Outputs
	wire [7:0] ans_ex;
	wire [7:0] data_out;
	wire [7:0] B_Bypass;
	wire mem_en_ex;
	wire mem_rw_ex;
	wire mem_mux_sel_ex;
	wire [4:0] RW_ex;
	wire [3:0] flag_ex;

	// Instantiate the Unit Under Test (UUT)
	microprocessor uut (
		.ans_ex(ans_ex), 
		.data_out(data_out), 
		.B_Bypass(B_Bypass), 
		.mem_en_ex(mem_en_ex), 
		.mem_rw_ex(mem_rw_ex), 
		.mem_mux_sel_ex(mem_mux_sel_ex), 
		.RW_ex(RW_ex), 
		.A(A), 
		.B(B), 
		.data_in(data_in), 
		.op_dec(op_dec), 
		.clk(clk), 
		.mem_en_dec(mem_en_dec), 
		.mem_rw_dec(mem_rw_dec), 
		.mem_mux_sel_dec(mem_mux_sel_dec), 
		.RW_dec(RW_dec), 
		.reset(reset), 
		.flag_ex(flag_ex)
	);

	always #500 clk=~clk; //clock cycle changes per 500ns
	
	initial begin
		// Initialize Inputs
		A=8'h40;
		B=8'hC0;
		data_in=8'h08;
		clk = 0;
		mem_en_dec = 0;
		mem_rw_dec = 0;
		mem_mux_sel_dec = 0;
		RW_dec = 5;
		reset = 1;  //reset is 1 at 0us
		
		#200;
		reset=0; //reset is 0 at 0.2us
		
		#600;
		reset=1; //reset is 1 at 0.8us

		//opcode changes per 1000ns
		#200;
		op_dec=5'b00000;
		
		#1000;
		op_dec=5'b00001;
		
		#1000;
		op_dec=5'b00010;
		
		#1000;
		op_dec=5'b00100;
		
		#1000;
		op_dec=5'b00101;
		
		#1000;
		op_dec=5'b00110;
		
		#1000;
		op_dec=5'b00111;
		
		#1000;
		op_dec=5'b01000;
		
		#1000;
		op_dec=5'b01001;
		
		#1000;
		op_dec=5'b01010;
		
		#1000;
		op_dec=5'b01100;
		
		#1000;
		op_dec=5'b01101;
		
		#1000;
		op_dec=5'b01110;
		
		#1000;
		op_dec=5'b01111;
		
		#1000;
		op_dec=5'b10000;
		
		#1000;
		op_dec=5'b10001;
		
		#1000;
		op_dec=5'b10100;
		
		#1000;
		op_dec=5'b10101;
		
		#1000;
		op_dec=5'b10110;
		
		#1000;
		op_dec=5'b10111;
		
		#1000;
		op_dec=5'b11000;
		
		#1000;
		op_dec=5'b11001;		
		A=8'hC0;
		B=8'h01;
		mem_en_dec = 1;
		mem_rw_dec = 1;
		mem_mux_sel_dec = 1;
		RW_dec = 10;
		
		#1000;
		op_dec=5'b11010;
		
		#1000;
		op_dec=5'b11011;
		
		#1000;
		op_dec=5'b11100;
		
		#1000;
		op_dec=5'b11101;
		
		#1000;
		op_dec=5'b11110;
		
		#1000;
		op_dec=5'b11111;
		
	
		// Add stimulus here

	end
      
      
endmodule
