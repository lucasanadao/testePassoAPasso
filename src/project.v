/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_teste_final (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

assign uo_out = ui_in[3:0] + ui_in[7:4]; // Sum of the first 4 bits and the last 4 bits of ui_in
assign uio_out = 8'b0; // All outputs set to 0
assign uio_oe = ena ? 8'b11111111 : 8'b0; // Enable output path if ena is high

endmodule
