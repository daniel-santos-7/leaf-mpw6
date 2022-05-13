module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire zero_;
 wire tx;

 leaf_chip mprj (.clk(wb_clk_i),
    .reset(wb_rst_i),
    .rx(io_in[0]),
    .tx(tx),
    .vccd1(vccd1),
    .vssd1(vssd1));
 assign io_oeb[0] = wb_rst_i;
 assign io_oeb[10] = wb_rst_i;
 assign io_oeb[11] = wb_rst_i;
 assign io_oeb[12] = wb_rst_i;
 assign io_oeb[13] = wb_rst_i;
 assign io_oeb[14] = wb_rst_i;
 assign io_oeb[15] = wb_rst_i;
 assign io_oeb[16] = wb_rst_i;
 assign io_oeb[17] = wb_rst_i;
 assign io_oeb[18] = wb_rst_i;
 assign io_oeb[19] = wb_rst_i;
 assign io_oeb[1] = wb_rst_i;
 assign io_oeb[20] = wb_rst_i;
 assign io_oeb[21] = wb_rst_i;
 assign io_oeb[22] = wb_rst_i;
 assign io_oeb[23] = wb_rst_i;
 assign io_oeb[24] = wb_rst_i;
 assign io_oeb[25] = wb_rst_i;
 assign io_oeb[26] = wb_rst_i;
 assign io_oeb[27] = wb_rst_i;
 assign io_oeb[28] = wb_rst_i;
 assign io_oeb[29] = wb_rst_i;
 assign io_oeb[2] = wb_rst_i;
 assign io_oeb[30] = wb_rst_i;
 assign io_oeb[31] = wb_rst_i;
 assign io_oeb[32] = wb_rst_i;
 assign io_oeb[33] = wb_rst_i;
 assign io_oeb[34] = wb_rst_i;
 assign io_oeb[35] = wb_rst_i;
 assign io_oeb[36] = wb_rst_i;
 assign io_oeb[37] = wb_rst_i;
 assign io_oeb[3] = wb_rst_i;
 assign io_oeb[4] = wb_rst_i;
 assign io_oeb[5] = wb_rst_i;
 assign io_oeb[6] = wb_rst_i;
 assign io_oeb[7] = wb_rst_i;
 assign io_oeb[8] = wb_rst_i;
 assign io_oeb[9] = wb_rst_i;
 assign io_out[0] = zero_;
 assign io_out[10] = zero_;
 assign io_out[11] = zero_;
 assign io_out[12] = zero_;
 assign io_out[13] = zero_;
 assign io_out[14] = zero_;
 assign io_out[15] = zero_;
 assign io_out[16] = zero_;
 assign io_out[17] = zero_;
 assign io_out[18] = zero_;
 assign io_out[19] = zero_;
 assign io_out[1] = tx;
 assign io_out[20] = zero_;
 assign io_out[21] = zero_;
 assign io_out[22] = zero_;
 assign io_out[23] = zero_;
 assign io_out[24] = zero_;
 assign io_out[25] = zero_;
 assign io_out[26] = zero_;
 assign io_out[27] = zero_;
 assign io_out[28] = zero_;
 assign io_out[29] = zero_;
 assign io_out[2] = zero_;
 assign io_out[30] = zero_;
 assign io_out[31] = zero_;
 assign io_out[32] = zero_;
 assign io_out[33] = zero_;
 assign io_out[34] = zero_;
 assign io_out[35] = zero_;
 assign io_out[36] = zero_;
 assign io_out[37] = zero_;
 assign io_out[3] = zero_;
 assign io_out[4] = zero_;
 assign io_out[5] = zero_;
 assign io_out[6] = zero_;
 assign io_out[7] = zero_;
 assign io_out[8] = zero_;
 assign io_out[9] = zero_;
 assign la_data_out[0] = zero_;
 assign la_data_out[100] = zero_;
 assign la_data_out[101] = zero_;
 assign la_data_out[102] = zero_;
 assign la_data_out[103] = zero_;
 assign la_data_out[104] = zero_;
 assign la_data_out[105] = zero_;
 assign la_data_out[106] = zero_;
 assign la_data_out[107] = zero_;
 assign la_data_out[108] = zero_;
 assign la_data_out[109] = zero_;
 assign la_data_out[10] = zero_;
 assign la_data_out[110] = zero_;
 assign la_data_out[111] = zero_;
 assign la_data_out[112] = zero_;
 assign la_data_out[113] = zero_;
 assign la_data_out[114] = zero_;
 assign la_data_out[115] = zero_;
 assign la_data_out[116] = zero_;
 assign la_data_out[117] = zero_;
 assign la_data_out[118] = zero_;
 assign la_data_out[119] = zero_;
 assign la_data_out[11] = zero_;
 assign la_data_out[120] = zero_;
 assign la_data_out[121] = zero_;
 assign la_data_out[122] = zero_;
 assign la_data_out[123] = zero_;
 assign la_data_out[124] = zero_;
 assign la_data_out[125] = zero_;
 assign la_data_out[126] = zero_;
 assign la_data_out[127] = zero_;
 assign la_data_out[12] = zero_;
 assign la_data_out[13] = zero_;
 assign la_data_out[14] = zero_;
 assign la_data_out[15] = zero_;
 assign la_data_out[16] = zero_;
 assign la_data_out[17] = zero_;
 assign la_data_out[18] = zero_;
 assign la_data_out[19] = zero_;
 assign la_data_out[1] = zero_;
 assign la_data_out[20] = zero_;
 assign la_data_out[21] = zero_;
 assign la_data_out[22] = zero_;
 assign la_data_out[23] = zero_;
 assign la_data_out[24] = zero_;
 assign la_data_out[25] = zero_;
 assign la_data_out[26] = zero_;
 assign la_data_out[27] = zero_;
 assign la_data_out[28] = zero_;
 assign la_data_out[29] = zero_;
 assign la_data_out[2] = zero_;
 assign la_data_out[30] = zero_;
 assign la_data_out[31] = zero_;
 assign la_data_out[32] = zero_;
 assign la_data_out[33] = zero_;
 assign la_data_out[34] = zero_;
 assign la_data_out[35] = zero_;
 assign la_data_out[36] = zero_;
 assign la_data_out[37] = zero_;
 assign la_data_out[38] = zero_;
 assign la_data_out[39] = zero_;
 assign la_data_out[3] = zero_;
 assign la_data_out[40] = zero_;
 assign la_data_out[41] = zero_;
 assign la_data_out[42] = zero_;
 assign la_data_out[43] = zero_;
 assign la_data_out[44] = zero_;
 assign la_data_out[45] = zero_;
 assign la_data_out[46] = zero_;
 assign la_data_out[47] = zero_;
 assign la_data_out[48] = zero_;
 assign la_data_out[49] = zero_;
 assign la_data_out[4] = zero_;
 assign la_data_out[50] = zero_;
 assign la_data_out[51] = zero_;
 assign la_data_out[52] = zero_;
 assign la_data_out[53] = zero_;
 assign la_data_out[54] = zero_;
 assign la_data_out[55] = zero_;
 assign la_data_out[56] = zero_;
 assign la_data_out[57] = zero_;
 assign la_data_out[58] = zero_;
 assign la_data_out[59] = zero_;
 assign la_data_out[5] = zero_;
 assign la_data_out[60] = zero_;
 assign la_data_out[61] = zero_;
 assign la_data_out[62] = zero_;
 assign la_data_out[63] = zero_;
 assign la_data_out[64] = zero_;
 assign la_data_out[65] = zero_;
 assign la_data_out[66] = zero_;
 assign la_data_out[67] = zero_;
 assign la_data_out[68] = zero_;
 assign la_data_out[69] = zero_;
 assign la_data_out[6] = zero_;
 assign la_data_out[70] = zero_;
 assign la_data_out[71] = zero_;
 assign la_data_out[72] = zero_;
 assign la_data_out[73] = zero_;
 assign la_data_out[74] = zero_;
 assign la_data_out[75] = zero_;
 assign la_data_out[76] = zero_;
 assign la_data_out[77] = zero_;
 assign la_data_out[78] = zero_;
 assign la_data_out[79] = zero_;
 assign la_data_out[7] = zero_;
 assign la_data_out[80] = zero_;
 assign la_data_out[81] = zero_;
 assign la_data_out[82] = zero_;
 assign la_data_out[83] = zero_;
 assign la_data_out[84] = zero_;
 assign la_data_out[85] = zero_;
 assign la_data_out[86] = zero_;
 assign la_data_out[87] = zero_;
 assign la_data_out[88] = zero_;
 assign la_data_out[89] = zero_;
 assign la_data_out[8] = zero_;
 assign la_data_out[90] = zero_;
 assign la_data_out[91] = zero_;
 assign la_data_out[92] = zero_;
 assign la_data_out[93] = zero_;
 assign la_data_out[94] = zero_;
 assign la_data_out[95] = zero_;
 assign la_data_out[96] = zero_;
 assign la_data_out[97] = zero_;
 assign la_data_out[98] = zero_;
 assign la_data_out[99] = zero_;
 assign la_data_out[9] = zero_;
 assign user_irq[0] = zero_;
 assign user_irq[1] = zero_;
 assign user_irq[2] = zero_;
 assign wbs_ack_o = wbs_stb_i;
 assign wbs_dat_o[0] = zero_;
 assign wbs_dat_o[10] = zero_;
 assign wbs_dat_o[11] = zero_;
 assign wbs_dat_o[12] = zero_;
 assign wbs_dat_o[13] = zero_;
 assign wbs_dat_o[14] = zero_;
 assign wbs_dat_o[15] = zero_;
 assign wbs_dat_o[16] = zero_;
 assign wbs_dat_o[17] = zero_;
 assign wbs_dat_o[18] = zero_;
 assign wbs_dat_o[19] = zero_;
 assign wbs_dat_o[1] = zero_;
 assign wbs_dat_o[20] = zero_;
 assign wbs_dat_o[21] = zero_;
 assign wbs_dat_o[22] = zero_;
 assign wbs_dat_o[23] = zero_;
 assign wbs_dat_o[24] = zero_;
 assign wbs_dat_o[25] = zero_;
 assign wbs_dat_o[26] = zero_;
 assign wbs_dat_o[27] = zero_;
 assign wbs_dat_o[28] = zero_;
 assign wbs_dat_o[29] = zero_;
 assign wbs_dat_o[2] = zero_;
 assign wbs_dat_o[30] = zero_;
 assign wbs_dat_o[31] = zero_;
 assign wbs_dat_o[3] = zero_;
 assign wbs_dat_o[4] = zero_;
 assign wbs_dat_o[5] = zero_;
 assign wbs_dat_o[6] = zero_;
 assign wbs_dat_o[7] = zero_;
 assign wbs_dat_o[8] = zero_;
 assign wbs_dat_o[9] = zero_;
endmodule
