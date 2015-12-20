//
//
//

module prom_2b(
	       input 		clk,
	       input [7:0 ] 	a,
	       output reg [3:0] d
	       );

`ifdef async
   always @(a)
     case (a)
`include "../roms/v3/rom_2p.v"
     endcase
`endif

   always @(posedge clk)
     case (a)
     	8'h00: d <= 4'b0000;
	8'h01: d <= 4'b0000;
	8'h02: d <= 4'b0000;
	8'h03: d <= 4'b0000;
	8'h04: d <= 4'b0000;
	8'h05: d <= 4'b0000;
	8'h06: d <= 4'b0000;
	8'h07: d <= 4'b0000;
	8'h08: d <= 4'b0000;
	8'h09: d <= 4'b0000;
	8'h0a: d <= 4'b0000;
	8'h0b: d <= 4'b0000;
	8'h0c: d <= 4'b0000;
	8'h0d: d <= 4'b0000;
	8'h0e: d <= 4'b0000;
	8'h0f: d <= 4'b0000;
	8'h10: d <= 4'b0000;
	8'h11: d <= 4'b0000;
	8'h12: d <= 4'b0000;
	8'h13: d <= 4'b0000;
	8'h14: d <= 4'b0000;
	8'h15: d <= 4'b0000;
	8'h16: d <= 4'b0000;
	8'h17: d <= 4'b0000;
	8'h18: d <= 4'b0000;
	8'h19: d <= 4'b0000;
	8'h1a: d <= 4'b0000;
	8'h1b: d <= 4'b0000;
	8'h1c: d <= 4'b0000;
	8'h1d: d <= 4'b0000;
	8'h1e: d <= 4'b0000;
	8'h1f: d <= 4'b0000;
	8'h20: d <= 4'b0000;
	8'h21: d <= 4'b0000;
	8'h22: d <= 4'b0000;
	8'h23: d <= 4'b0000;
	8'h24: d <= 4'b0000;
	8'h25: d <= 4'b0000;
	8'h26: d <= 4'b0000;
	8'h27: d <= 4'b0000;
	8'h28: d <= 4'b0000;
	8'h29: d <= 4'b0000;
	8'h2a: d <= 4'b0000;
	8'h2b: d <= 4'b0000;
	8'h2c: d <= 4'b0000;
	8'h2d: d <= 4'b0000;
	8'h2e: d <= 4'b0000;
	8'h2f: d <= 4'b0000;
	8'h30: d <= 4'b0000;
	8'h31: d <= 4'b0000;
	8'h32: d <= 4'b0000;
	8'h33: d <= 4'b0000;
	8'h34: d <= 4'b0000;
	8'h35: d <= 4'b0000;
	8'h36: d <= 4'b0000;
	8'h37: d <= 4'b0000;
	8'h38: d <= 4'b0000;
	8'h39: d <= 4'b0000;
	8'h3a: d <= 4'b0000;
	8'h3b: d <= 4'b0000;
	8'h3c: d <= 4'b0000;
	8'h3d: d <= 4'b0000;
	8'h3e: d <= 4'b0000;
	8'h3f: d <= 4'b0000;
	8'h40: d <= 4'b0000;
	8'h41: d <= 4'b0000;
	8'h42: d <= 4'b0000;
	8'h43: d <= 4'b0000;
	8'h44: d <= 4'b0000;
	8'h45: d <= 4'b0000;
	8'h46: d <= 4'b0000;
	8'h47: d <= 4'b0000;
	8'h48: d <= 4'b0000;
	8'h49: d <= 4'b0000;
	8'h4a: d <= 4'b0000;
	8'h4b: d <= 4'b0000;
	8'h4c: d <= 4'b0000;
	8'h4d: d <= 4'b0000;
	8'h4e: d <= 4'b0000;
	8'h4f: d <= 4'b0000;
	8'h50: d <= 4'b0000;
	8'h51: d <= 4'b0000;
	8'h52: d <= 4'b0000;
	8'h53: d <= 4'b0000;
	8'h54: d <= 4'b0000;
	8'h55: d <= 4'b0000;
	8'h56: d <= 4'b0000;
	8'h57: d <= 4'b0000;
	8'h58: d <= 4'b0000;
	8'h59: d <= 4'b0000;
	8'h5a: d <= 4'b0000;
	8'h5b: d <= 4'b0000;
	8'h5c: d <= 4'b0000;
	8'h5d: d <= 4'b0001;//xxx
	8'h5e: d <= 4'b0001;
	8'h5f: d <= 4'b0100;
	8'h60: d <= 4'b0000;
	8'h61: d <= 4'b0000;
	8'h62: d <= 4'b0000;
	8'h63: d <= 4'b0000;
	8'h64: d <= 4'b0000;
	8'h65: d <= 4'b0000;
	8'h66: d <= 4'b0000;
	8'h67: d <= 4'b0000;
	8'h68: d <= 4'b0000;
	8'h69: d <= 4'b0000;
	8'h6a: d <= 4'b0000;
	8'h6b: d <= 4'b0000;
	8'h6c: d <= 4'b0000;
	8'h6d: d <= 4'b0000;
	8'h6e: d <= 4'b0000;
	8'h6f: d <= 4'b0000;
	8'h70: d <= 4'b0000;
	8'h71: d <= 4'b0000;
	8'h72: d <= 4'b0000;
	8'h73: d <= 4'b0000;
	8'h74: d <= 4'b0000;
	8'h75: d <= 4'b0000;
	8'h76: d <= 4'b0000;
	8'h77: d <= 4'b0000;
	8'h78: d <= 4'b0000;
	8'h79: d <= 4'b0000;
	8'h7a: d <= 4'b0000;
	8'h7b: d <= 4'b0000;
	8'h7c: d <= 4'b0000;
	8'h7d: d <= 4'b0000;
	8'h7e: d <= 4'b0000;
	8'h7f: d <= 4'b0000;
	8'h80: d <= 4'b0000;
	8'h81: d <= 4'b0000;
	8'h82: d <= 4'b0000;
	8'h83: d <= 4'b0000;
	8'h84: d <= 4'b0000;
	8'h85: d <= 4'b0000;
	8'h86: d <= 4'b0000;
	8'h87: d <= 4'b0000;
	8'h88: d <= 4'b0000;
	8'h89: d <= 4'b0000;
	8'h8a: d <= 4'b0000;
	8'h8b: d <= 4'b0000;
	8'h8c: d <= 4'b0000;
	8'h8d: d <= 4'b0000;
	8'h8e: d <= 4'b0000;
	8'h8f: d <= 4'b0000;
	8'h90: d <= 4'b0000;
	8'h91: d <= 4'b0000;
	8'h92: d <= 4'b0000;
	8'h93: d <= 4'b0000;
	8'h94: d <= 4'b0000;
	8'h95: d <= 4'b0000;
	8'h96: d <= 4'b0000;
	8'h97: d <= 4'b0000;
	8'h98: d <= 4'b0000;
	8'h99: d <= 4'b0000;
	8'h9a: d <= 4'b0000;
	8'h9b: d <= 4'b0000;
	8'h9c: d <= 4'b0000;
	8'h9d: d <= 4'b0000;
	8'h9e: d <= 4'b0000;
	8'h9f: d <= 4'b0000;
	8'ha0: d <= 4'b0000;
	8'ha1: d <= 4'b0000;
	8'ha2: d <= 4'b0000;
	8'ha3: d <= 4'b0000;
	8'ha4: d <= 4'b0000;
	8'ha5: d <= 4'b0000;
	8'ha6: d <= 4'b0000;
	8'ha7: d <= 4'b0000;
	8'ha8: d <= 4'b0000;
	8'ha9: d <= 4'b0000;
	8'haa: d <= 4'b0000;
	8'hab: d <= 4'b0000;
	8'hac: d <= 4'b0000;
	8'had: d <= 4'b0000;
	8'hae: d <= 4'b0000;
	8'haf: d <= 4'b0000;
	8'hb0: d <= 4'b0000;
	8'hb1: d <= 4'b0000;
	8'hb2: d <= 4'b0000;
	8'hb3: d <= 4'b0000;
	8'hb4: d <= 4'b0000;
	8'hb5: d <= 4'b0000;
	8'hb6: d <= 4'b0000;
	8'hb7: d <= 4'b0000;
	8'hb8: d <= 4'b0000;
	8'hb9: d <= 4'b0000;
	8'hba: d <= 4'b0000;
	8'hbb: d <= 4'b0000;
	8'hbc: d <= 4'b0000;
	8'hbd: d <= 4'b0000;
	8'hbe: d <= 4'b0000;
	8'hbf: d <= 4'b0000;
	8'hc0: d <= 4'b0000;
	8'hc1: d <= 4'b0000;
	8'hc2: d <= 4'b0000;
	8'hc3: d <= 4'b0000;
	8'hc4: d <= 4'b0000;
	8'hc5: d <= 4'b0000;
	8'hc6: d <= 4'b0000;
	8'hc7: d <= 4'b0000;
	8'hc8: d <= 4'b0000;
	8'hc9: d <= 4'b0000;
	8'hca: d <= 4'b0000;
	8'hcb: d <= 4'b0000;
	8'hcc: d <= 4'b0000;
	8'hcd: d <= 4'b0000;
	8'hce: d <= 4'b0000;
	8'hcf: d <= 4'b0000;
	8'hd0: d <= 4'b0000;
	8'hd1: d <= 4'b0000;
	8'hd2: d <= 4'b0000;
	8'hd3: d <= 4'b0000;
	8'hd4: d <= 4'b0000;
	8'hd5: d <= 4'b0000;
	8'hd6: d <= 4'b0000;
	8'hd7: d <= 4'b0000;
	8'hd8: d <= 4'b0000;
	8'hd9: d <= 4'b0000;
	8'hda: d <= 4'b0000;
	8'hdb: d <= 4'b0000;
	8'hdc: d <= 4'b0100;
	8'hdd: d <= 4'b0100;
	8'hde: d <= 4'b0100;
	8'hdf: d <= 4'b0100;
	8'he0: d <= 4'b0100;
	8'he1: d <= 4'b0100;
	8'he2: d <= 4'b0100;
	8'he3: d <= 4'b0100;
	8'he4: d <= 4'b0100;
	8'he5: d <= 4'b0100;
	8'he6: d <= 4'b0100;
`ifdef xxx
	8'he7: d <= 4'b0110;
	8'he8: d <= 4'b0110;
	8'he9: d <= 4'b0110;
	8'hea: d <= 4'b0110;
	8'heb: d <= 4'b0110;
	8'hec: d <= 4'b0110;
	8'hed: d <= 4'b0110;
	8'hee: d <= 4'b0110;
	8'hef: d <= 4'b0110;
	8'hf0: d <= 4'b0110;
	8'hf1: d <= 4'b0110;
	8'hf2: d <= 4'b0110;
	8'hf3: d <= 4'b0100;
	8'hf4: d <= 4'b0100;
	8'hf5: d <= 4'b0100;
	8'hf6: d <= 4'b0100;
	8'hf7: d <= 4'b0100;
	8'hf8: d <= 4'b0100;
	8'hf9: d <= 4'b0100;
	8'hfa: d <= 4'b0100;
	8'hfb: d <= 4'b0100;
	8'hfc: d <= 4'b0100;
	8'hfd: d <= 4'b0100;
	8'hfe: d <= 4'b0100;
	8'hff: d <= 4'b0000;
`else
	8'he7: d <= 4'b0100;
	8'he8: d <= 4'b0100;
	8'he9: d <= 4'b0100;
	8'hea: d <= 4'b0100;
	8'heb: d <= 4'b0100;
	8'hec: d <= 4'b0100;
	8'hed: d <= 4'b0100;
	8'hee: d <= 4'b0100;
	8'hef: d <= 4'b0100;
	8'hf0: d <= 4'b0100;
	8'hf1: d <= 4'b0100;
	8'hf2: d <= 4'b0100;
	8'hf3: d <= 4'b0100;
	8'hf4: d <= 4'b0100;
	8'hf5: d <= 4'b0100;
	8'hf6: d <= 4'b0100;
	8'hf7: d <= 4'b0100;
	8'hf8: d <= 4'b0100;
	8'hf9: d <= 4'b0100;
	8'hfa: d <= 4'b0110;
	8'hfb: d <= 4'b0110;
	8'hfc: d <= 4'b0110;
	8'hfd: d <= 4'b0110;
	8'hfe: d <= 4'b0100;
	8'hff: d <= 4'b0000;
`endif
     endcase
   
endmodule // prom_2b
