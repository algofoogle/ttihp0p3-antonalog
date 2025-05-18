module rgb_buffers (VPWR,
    VGND,
    b,
    db,
    dg,
    dr,
    g,
    r);
 inout VPWR;
 inout VGND;
 output [7:0] b;
 input [7:0] db;
 input [7:0] dg;
 input [7:0] dr;
 output [7:0] g;
 output [7:0] r;


 sg13g2_buf_8 \rgb_buffer_cell[0]  (.A(db[0]),
    .X(b[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[10]  (.A(dg[2]),
    .X(g[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[11]  (.A(dg[3]),
    .X(g[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[12]  (.A(dg[4]),
    .X(g[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[13]  (.A(dg[5]),
    .X(g[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[14]  (.A(dg[6]),
    .X(g[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[15]  (.A(dg[7]),
    .X(g[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[16]  (.A(dr[0]),
    .X(r[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[17]  (.A(dr[1]),
    .X(r[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[18]  (.A(dr[2]),
    .X(r[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[19]  (.A(dr[3]),
    .X(r[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[1]  (.A(db[1]),
    .X(b[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[20]  (.A(dr[4]),
    .X(r[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[21]  (.A(dr[5]),
    .X(r[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[22]  (.A(dr[6]),
    .X(r[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[23]  (.A(dr[7]),
    .X(r[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[2]  (.A(db[2]),
    .X(b[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[3]  (.A(db[3]),
    .X(b[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[4]  (.A(db[4]),
    .X(b[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[5]  (.A(db[5]),
    .X(b[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[6]  (.A(db[6]),
    .X(b[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[7]  (.A(db[7]),
    .X(b[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[8]  (.A(dg[0]),
    .X(g[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 \rgb_buffer_cell[9]  (.A(dg[1]),
    .X(g[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_3_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_3_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_5_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_5_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_6_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_6_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_7_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_7_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_8_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_8_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_9_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_9_17 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_10_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_11_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_11_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_11_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_12_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_12_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_12_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_13_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_13_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_14_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_14_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_15_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_15_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_16_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_16_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_17_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_17_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_18_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_18_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_19_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_19_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_20_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_20_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_21_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_21_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_21_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_22_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_22_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_22_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_23_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_23_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_24_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_24_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_25_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_25_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_26_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_26_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_27_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_27_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_28_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_28_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_29_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_29_15 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_29_19 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_30_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_30_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_31_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_31_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_31_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_32_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_32_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_32_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_33_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_33_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_33_14 (.VDD(VPWR),
    .VSS(VGND));
endmodule
