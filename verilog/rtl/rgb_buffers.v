`default_nettype none

// This is a simple tall strip macro that provides chunky buffer cells.
// They buffer the digital outputs from the 'controller' block
// (dr, dg, db) to give them all an equal, strong drive (as r, g, b).
// In turn, the r/g/b signals will connect to their respective DACs.
// This macro is hardened separately in OpenLane (as rgb_buffers).

module rgb_buffers(
    input wire [7:0] dr,
    input wire [7:0] dg,
    input wire [7:0] db,
    output wire [7:0] r,
    output wire [7:0] g,
    output wire [7:0] b
);

  (* keep_hierarchy *) sg13g2_buf_8 rgb_buffer_cell [23:0] (.A({dr,dg,db}), .X({r,g,b}));

endmodule
