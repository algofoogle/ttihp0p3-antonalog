# GDS files

*   `controller.gds` is the digital PnR block for the VGA controller, which gets placed as a cell in the main `tt_um_algofoogle_antonalog.mag` layout.
*   `controller-fixed-tiehi.gds` is a hack with modified `sg13g2_tiehi` cells that include extra contacts (reflecting what `tielo` already has) in an aim to fix extraction for LVS/simulation -- see [here](https://github.com/IHP-GmbH/IHP-Open-PDK/issues/487) for more info about the issue. I will temporarily replace my `controller_0` cell in `tt_um_algofoogle_antonalog.mag`, in order to do PEX to a SPICE netlist for simulation.
*   `rhigh.gds` is a single 1&mu;m &times; 6&mu;m resistor layout that is used for building up my RDAC.
*   `rgb_buffers.gds` is another tiny digital block that just has `sg13g2_buf_8` cells in it for providing consistent buffered outputs to the RDAC inputs.
*   `tt_um_algofoogle_antonalog.gds` is the main GDS of the Tiny Tapeout project tile, included in the TTIHP0p3 chip for fabrication.
