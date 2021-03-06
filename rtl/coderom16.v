//
// foodfight
// code eeprom
// Brad Parker <brad@heeltoe.com> 5/2014
//

//`define ROM_INIT
//`define ROM_READMEMB
`define ROM_CASE

module coderom16(
		 input 	       clk,
		 input [12:0]  a,
		 output [15:0] out,
		 input 	       ce0,
		 input 	       ce1,
		 input 	       ce2,
		 input 	       ce3
	       );

//-----------------------------------------------------------------------------

`ifdef ROM_INIT
   reg [7:0] rom0h[0:8191];
   reg [7:0] rom1h[0:8191];
   reg [7:0] rom2h[0:8191];
   reg [7:0] rom3h[0:8191];
   reg [7:0] rom0l[0:8191];
   reg [7:0] rom1l[0:8191];
   reg [7:0] rom2l[0:8191];
   reg [7:0] rom3l[0:8191];
   reg [7:0] d0h, d1h, d2h, d3h;
   reg [7:0] d0l, d1l, d2l, d3l;

  `include "../roms/v3/rom_code_init.v"

`ifdef NO_ROM_INIT
   integer   i;
   initial begin
      	rom0h[0] = 8'h00; // 0x0000
	rom0l[0] = 8'h01; // 0x0000
	rom0h[1] = 8'h75; // 0x0001
	rom0l[1] = 8'h78; // 0x0001

	rom0h[2] = 8'h00; // 0x0002
      	rom0l[2] = 8'h00; // 0x0002
	rom0h[3] = 8'h00; // 0x0003
	rom0l[3] = 8'h8c; // 0x0003

      for (i = 70; i < 256; i = i + 1)
	begin
	   rom0h[i] = 8'h60;
	   rom0l[i] = 8'hfe;
	end
   end
`endif

   assign out =
	       ~ce0 ? { d0h, d0l } :
	       ~ce1 ? { d1h, d1l } :
	       ~ce2 ? { d2h, d2l } :
	       ~ce3 ? { d3h, d3l } :
	       16'b0;
   
   always @(posedge clk)
     begin
	d0h <= rom0h[a];
	d1h <= rom1h[a];
	d2h <= rom2h[a];
	d3h <= rom3h[a];
     end

   always @(posedge clk)
     begin
	d0l <= rom0l[a];
	d1l <= rom1l[a];
	d2l <= rom2l[a];
	d3l <= rom3l[a];
     end

`ifdef debug_rom
   always @(negedge ce0 or negedge ce1 or negedge ce2 or negedge ce3 or a)
     begin
	if (~ce0) $display("rom: read0 %x -> %x", a, { rom0h[a], rom0l[a] });
	if (~ce1) $display("rom: read1 %x -> %x", a, { rom1h[a], rom1l[a] });
	if (~ce2) $display("rom: read2 %x -> %x", a, { rom2h[a], rom2l[a] });
	if (~ce3) $display("rom: read3 %x -> %x", a, { rom3h[a], rom3l[a] });
     end
`endif
`endif //ROM_ARRAY

//-----------------------------------------------------------------------------

`ifdef ROM_READMEMB
   reg [7:0] rom0h[0:8191];
   reg [7:0] rom1h[0:8191];
   reg [7:0] rom2h[0:8191];
   reg [7:0] rom3h[0:8191];
   reg [7:0] rom0l[0:8191];
   reg [7:0] rom1l[0:8191];
   reg [7:0] rom2l[0:8191];
   reg [7:0] rom3l[0:8191];
   reg [7:0] d0h, d1h, d2h, d3h;
   reg [7:0] d0l, d1l, d2l, d3l;
   integer r, file;
   
   initial
     begin
	r = $readmemb("../roms/v3/136020-302.9c", rom0l[0]); $display("rom: rom0l read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-301.8c", rom0h[0]); $display("rom: rom0h read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-204.9d", rom1l[0]); $display("rom: rom1l read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-303.8d", rom1h[0]); $display("rom: rom1h read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-306.9e", rom2l[0]); $display("rom: rom2l read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-305.8e", rom2h[0]); $display("rom: rom2h read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-208.9f", rom3l[0]); $display("rom: rom3l read %0d entries \n", r);
	r = $readmemb("../roms/v3/136020-307.8f", rom3h[0]); $display("rom: rom3h read %0d entries \n", r);

	$display("rom: rom0 %x %x %x %x",
		 { rom0h[0], rom0l[0] }, { rom0h[1], rom0l[1] }, { rom0h[2], rom0l[2] }, { rom0h[3], rom0l[3] });
	$display("rom: rom1 %x", { rom1h[0], rom1l[0] });
	$display("rom: rom2 %x", { rom2h[0], rom2l[0] });
	$display("rom: rom3 %x", { rom3h[0], rom3l[0] });
     end

   assign out =
	       ~ce0 ? { d0h, d0l } :
	       ~ce1 ? { d1h, d1l } :
	       ~ce2 ? { d2h, d2l } :
	       ~ce3 ? { d3h, d3l } :
	       16'b0;
   
   always @(posedge clk)
     begin
	d0h <= rom0h[a];
	d1h <= rom1h[a];
	d2h <= rom2h[a];
	d3h <= rom3h[a];
     end

   always @(posedge clk)
     begin
	d0l <= rom0l[a];
	d1l <= rom1l[a];
	d2l <= rom2l[a];
	d3l <= rom3l[a];
     end

`endif
   
//-----------------------------------------------------------------------------

`ifdef ROM_CASE
`ifdef SIMULATION
 `include "../roms/v3/rom_code_case.v.patched"
`else
 `include "../roms/v3/rom_code_case.v"
`endif
`endif
   
endmodule // coderom
