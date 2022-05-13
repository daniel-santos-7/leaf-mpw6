`default_nettype none

`timescale 1 ns / 1 ps

module leaf_chip_tb;
	reg clock;
	reg RSTB;
	reg CSB;
	reg power1, power2;
	reg power3, power4;

	wire gpio;
	wire [37:0] mprj_io;

	wire mprj_rx;
	wire mprj_tx;

	assign mprj_io[0] = mprj_rx;
	assign mprj_tx = mprj_io[1];

	// always #12.5 clock <= (clock === 1'b0);
	always #10 clock <= (clock === 1'b0);

	initial begin
		clock = 0;
	end

	initial begin
		$dumpfile("leaf_chip.vcd");
		$dumpvars(0, leaf_chip_tb);

		repeat (100) begin
			repeat (1000) @(posedge clock);
		end

		$display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test Mega-Project IO Ports (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test Mega-Project IO Ports (RTL) Failed");
		`endif
		$display("%c[0m",27);
		$finish;
	end

	initial begin
		wait(mprj_tx == 1'b1);
		wait(mprj_tx == 1'b0);
		
		`ifdef GL
	    	$display("Monitor: Test 1 Mega-Project IO (GL) Passed");
		`else
		    $display("Monitor: Test 1 Mega-Project IO (RTL) Passed");
		`endif
	    $finish;
	end

	initial begin
		RSTB <= 1'b0;
		CSB  <= 1'b1;
		#2000;
		RSTB <= 1'b1;
		#300000;
		CSB = 1'b0;
	end

	initial begin
		power1 <= 1'b0;
		power2 <= 1'b0;
		power3 <= 1'b0;
		power4 <= 1'b0;
		#100;
		power1 <= 1'b1;
		#100;
		power2 <= 1'b1;
		#100;
		power3 <= 1'b1;
		#100;
		power4 <= 1'b1;
	end

	reg [31:0] sw [0:2];
	reg [31:0] instr;
	reg [9:0] frame;
	reg tx;
	integer i, j, k;

	localparam LOAD_CMD = 8'h77;
	localparam PROGRAM_SIZE = 8'h0c;
	localparam UART_BAUD = 434;

	assign mprj_rx = tx;

	initial begin

		sw[0] = 32'h04100293;
		sw[1] = 32'h00500623;
		sw[2] = 32'h0000006f;
		
		tx <= 1'b1;
		
		wait(mprj_tx == 1'b1);

		frame = {1'b1, LOAD_CMD, 1'b0};
		$display("load cmd");
		for (k = 0; k < 10; k = k+1) begin
			tx <= frame[k];
			repeat (UART_BAUD) @(posedge clock);
		end

		frame = {1'b1, PROGRAM_SIZE, 1'b0};
		for (k = 0; k < 10; k = k+1) begin
			tx <= frame[k];
			repeat (UART_BAUD) @(posedge clock);
		end

		for (i = 0; i < 3; i = i+1) begin
			instr = sw[i];
			for (j = 0; j < 4; j = j+1) begin
				frame = {1'b1, instr[j*8+:8], 1'b0};
				for (k = 0; k < 10; k = k+1) begin
					tx <= frame[k];
					repeat (UART_BAUD) @(posedge clock);
				end
			end
		end

	end

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;

	wire VDD3V3;
	wire VDD1V8;
	wire VSS;
	
	assign VDD3V3 = power1;
	assign VDD1V8 = power2;
	assign VSS = 1'b0;

	caravel uut (
		.vddio	  (VDD3V3),
		.vddio_2  (VDD3V3),
		.vssio	  (VSS),
		.vssio_2  (VSS),
		.vdda	  (VDD3V3),
		.vssa	  (VSS),
		.vccd	  (VDD1V8),
		.vssd	  (VSS),
		.vdda1    (VDD3V3),
		.vdda1_2  (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1	  (VSS),
		.vssa1_2  (VSS),
		.vssa2	  (VSS),
		.vccd1	  (VDD1V8),
		.vccd2	  (VDD1V8),
		.vssd1	  (VSS),
		.vssd2	  (VSS),
		.clock    (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.resetb	  (RSTB)
	);

	spiflash #(
		.FILENAME("leaf_chip.hex")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),
		.io3()
	);

endmodule
`default_nettype wire
