// Verilog netlist produced by program LSE :  version Diamond Version 3.9.0.99.2
// Netlist written on Mon Jun 19 22:59:56 2017
//
// Verilog Description of module blinky
//

module blinky (LED) /* synthesis syn_module_defined=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(1[8:14])
    output [7:0]LED;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(9[9:16])
    
    wire GND_net, VCC_net, n28, n27, n26, LED_c, n298, n299, 
        n300;
    wire [27:0]count;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(8[13:18])
    
    wire n122, n386, n25, n24, n23, n22, n121, n21, n20, n381, 
        n120, n19, n384, n383, n372, n375, n18, n17, n374, 
        n380, n16, n379, n382, n378, n377, n15, n14, n13, 
        n371, n376, n273, n12, n11, n373, n10, n406, n145, 
        n144, n9, n143, n142, n141, n140, n139, n138, n137, 
        n136, n135, n134, n133, n132, n131, n130, n129, n128, 
        n127, n126, n125, n124, n123, n119, n118, n8;
    
    VHI i2 (.Z(VCC_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    LUT4 count_27__bdd_4_lut (.A(count[27]), .B(count[24]), .C(count[26]), 
         .D(count[25]), .Z(n298)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam count_27__bdd_4_lut.init = 16'hc9ad;
    LUT4 i4_4_lut (.A(n406), .B(count[26]), .C(count[25]), .D(n386), 
         .Z(n273)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i174_2_lut_rep_1 (.A(count[27]), .B(count[24]), .Z(n406)) /* synthesis lut_function=(A (B)) */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(36[4] 69[11])
    defparam i174_2_lut_rep_1.init = 16'h8888;
    LUT4 count_27__I_0_10_Mux_1_i15_4_lut_4_lut (.A(count[24]), .B(count[25]), 
         .C(count[26]), .D(count[27]), .Z(n299)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam count_27__I_0_10_Mux_1_i15_4_lut_4_lut.init = 16'hd703;
    CCU2D count_36_add_4_3 (.A0(n27), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n26), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n371), 
          .COUT(n372), .S0(n144), .S1(n143));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_3.INIT0 = 16'hfaaa;
    defparam count_36_add_4_3.INIT1 = 16'hfaaa;
    defparam count_36_add_4_3.INJECT1_0 = "NO";
    defparam count_36_add_4_3.INJECT1_1 = "NO";
    FD1S3IX count_36__i27 (.D(n118), .CK(osc_clk), .CD(n273), .Q(count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i27.GSR = "ENABLED";
    CCU2D count_36_add_4_9 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n374), 
          .COUT(n375), .S0(n138), .S1(n137));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_9.INIT0 = 16'hfaaa;
    defparam count_36_add_4_9.INIT1 = 16'hfaaa;
    defparam count_36_add_4_9.INJECT1_0 = "NO";
    defparam count_36_add_4_9.INJECT1_1 = "NO";
    CCU2D count_36_add_4_21 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n380), 
          .COUT(n381), .S0(n126), .S1(n125));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_21.INIT0 = 16'hfaaa;
    defparam count_36_add_4_21.INIT1 = 16'hfaaa;
    defparam count_36_add_4_21.INJECT1_0 = "NO";
    defparam count_36_add_4_21.INJECT1_1 = "NO";
    CCU2D count_36_add_4_7 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n373), 
          .COUT(n374), .S0(n140), .S1(n139));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_7.INIT0 = 16'hfaaa;
    defparam count_36_add_4_7.INIT1 = 16'hfaaa;
    defparam count_36_add_4_7.INJECT1_0 = "NO";
    defparam count_36_add_4_7.INJECT1_1 = "NO";
    CCU2D count_36_add_4_19 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n379), 
          .COUT(n380), .S0(n128), .S1(n127));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_19.INIT0 = 16'hfaaa;
    defparam count_36_add_4_19.INIT1 = 16'hfaaa;
    defparam count_36_add_4_19.INJECT1_0 = "NO";
    defparam count_36_add_4_19.INJECT1_1 = "NO";
    CCU2D count_36_add_4_29 (.A0(count[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n384), .S0(n118));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_29.INIT0 = 16'hfaaa;
    defparam count_36_add_4_29.INIT1 = 16'h0000;
    defparam count_36_add_4_29.INJECT1_0 = "NO";
    defparam count_36_add_4_29.INJECT1_1 = "NO";
    CCU2D count_36_add_4_17 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n378), 
          .COUT(n379), .S0(n130), .S1(n129));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_17.INIT0 = 16'hfaaa;
    defparam count_36_add_4_17.INIT1 = 16'hfaaa;
    defparam count_36_add_4_17.INJECT1_0 = "NO";
    defparam count_36_add_4_17.INJECT1_1 = "NO";
    CCU2D count_36_add_4_27 (.A0(count[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n383), .COUT(n384), .S0(n120), .S1(n119));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_27.INIT0 = 16'hfaaa;
    defparam count_36_add_4_27.INIT1 = 16'hfaaa;
    defparam count_36_add_4_27.INJECT1_0 = "NO";
    defparam count_36_add_4_27.INJECT1_1 = "NO";
    CCU2D count_36_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n28), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n371), .S1(n145));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_1.INIT0 = 16'hF000;
    defparam count_36_add_4_1.INIT1 = 16'h0555;
    defparam count_36_add_4_1.INJECT1_0 = "NO";
    defparam count_36_add_4_1.INJECT1_1 = "NO";
    CCU2D count_36_add_4_15 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n377), 
          .COUT(n378), .S0(n132), .S1(n131));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_15.INIT0 = 16'hfaaa;
    defparam count_36_add_4_15.INIT1 = 16'hfaaa;
    defparam count_36_add_4_15.INJECT1_0 = "NO";
    defparam count_36_add_4_15.INJECT1_1 = "NO";
    CCU2D count_36_add_4_5 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n372), 
          .COUT(n373), .S0(n142), .S1(n141));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_5.INIT0 = 16'hfaaa;
    defparam count_36_add_4_5.INIT1 = 16'hfaaa;
    defparam count_36_add_4_5.INJECT1_0 = "NO";
    defparam count_36_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(count[22]), .B(count[21]), .C(count[23]), .Z(n386)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    CCU2D count_36_add_4_13 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n376), 
          .COUT(n377), .S0(n134), .S1(n133));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_13.INIT0 = 16'hfaaa;
    defparam count_36_add_4_13.INIT1 = 16'hfaaa;
    defparam count_36_add_4_13.INJECT1_0 = "NO";
    defparam count_36_add_4_13.INJECT1_1 = "NO";
    CCU2D count_36_add_4_11 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n375), 
          .COUT(n376), .S0(n136), .S1(n135));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_11.INIT0 = 16'hfaaa;
    defparam count_36_add_4_11.INIT1 = 16'hfaaa;
    defparam count_36_add_4_11.INJECT1_0 = "NO";
    defparam count_36_add_4_11.INJECT1_1 = "NO";
    CCU2D count_36_add_4_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n382), .COUT(n383), .S0(n122), .S1(n121));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_25.INIT0 = 16'hfaaa;
    defparam count_36_add_4_25.INIT1 = 16'hfaaa;
    defparam count_36_add_4_25.INJECT1_0 = "NO";
    defparam count_36_add_4_25.INJECT1_1 = "NO";
    OB LED_pad_6 (.I(n299), .O(LED[6]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i175_2_lut_3_lut_4_lut (.A(count[25]), .B(count[26]), .C(count[24]), 
         .D(count[27]), .Z(n300)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(36[4] 69[11])
    defparam i175_2_lut_3_lut_4_lut.init = 16'hfbbb;
    LUT4 count_24__bdd_4_lut (.A(count[24]), .B(count[27]), .C(count[25]), 
         .D(count[26]), .Z(LED_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A !(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam count_24__bdd_4_lut.init = 16'h5ec1;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    FD1S3IX count_36__i26 (.D(n119), .CK(osc_clk), .CD(n273), .Q(count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i26.GSR = "ENABLED";
    FD1S3IX count_36__i25 (.D(n120), .CK(osc_clk), .CD(n273), .Q(count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i25.GSR = "ENABLED";
    FD1S3IX count_36__i24 (.D(n121), .CK(osc_clk), .CD(n273), .Q(count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i24.GSR = "ENABLED";
    OB LED_pad_7 (.I(n300), .O(LED[7]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    FD1S3IX count_36__i23 (.D(n122), .CK(osc_clk), .CD(n273), .Q(count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i23.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX count_36__i22 (.D(n123), .CK(osc_clk), .CD(n273), .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i22.GSR = "ENABLED";
    FD1S3IX count_36__i21 (.D(n124), .CK(osc_clk), .CD(n273), .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i21.GSR = "ENABLED";
    FD1S3IX count_36__i20 (.D(n125), .CK(osc_clk), .CD(n273), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i20.GSR = "ENABLED";
    FD1S3IX count_36__i19 (.D(n126), .CK(osc_clk), .CD(n273), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i19.GSR = "ENABLED";
    FD1S3IX count_36__i18 (.D(n127), .CK(osc_clk), .CD(n273), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i18.GSR = "ENABLED";
    FD1S3IX count_36__i17 (.D(n128), .CK(osc_clk), .CD(n273), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i17.GSR = "ENABLED";
    FD1S3IX count_36__i16 (.D(n129), .CK(osc_clk), .CD(n273), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i16.GSR = "ENABLED";
    FD1S3IX count_36__i15 (.D(n130), .CK(osc_clk), .CD(n273), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i15.GSR = "ENABLED";
    FD1S3IX count_36__i14 (.D(n131), .CK(osc_clk), .CD(n273), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i14.GSR = "ENABLED";
    FD1S3IX count_36__i13 (.D(n132), .CK(osc_clk), .CD(n273), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i13.GSR = "ENABLED";
    FD1S3IX count_36__i12 (.D(n133), .CK(osc_clk), .CD(n273), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i12.GSR = "ENABLED";
    FD1S3IX count_36__i11 (.D(n134), .CK(osc_clk), .CD(n273), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i11.GSR = "ENABLED";
    FD1S3IX count_36__i10 (.D(n135), .CK(osc_clk), .CD(n273), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i10.GSR = "ENABLED";
    FD1S3IX count_36__i9 (.D(n136), .CK(osc_clk), .CD(n273), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i9.GSR = "ENABLED";
    FD1S3IX count_36__i8 (.D(n137), .CK(osc_clk), .CD(n273), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i8.GSR = "ENABLED";
    FD1S3IX count_36__i7 (.D(n138), .CK(osc_clk), .CD(n273), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i7.GSR = "ENABLED";
    FD1S3IX count_36__i6 (.D(n139), .CK(osc_clk), .CD(n273), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i6.GSR = "ENABLED";
    FD1S3IX count_36__i5 (.D(n140), .CK(osc_clk), .CD(n273), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i5.GSR = "ENABLED";
    FD1S3IX count_36__i4 (.D(n141), .CK(osc_clk), .CD(n273), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i4.GSR = "ENABLED";
    FD1S3IX count_36__i3 (.D(n142), .CK(osc_clk), .CD(n273), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i3.GSR = "ENABLED";
    FD1S3IX count_36__i2 (.D(n143), .CK(osc_clk), .CD(n273), .Q(n26)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i2.GSR = "ENABLED";
    FD1S3IX count_36__i1 (.D(n144), .CK(osc_clk), .CD(n273), .Q(n27)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i1.GSR = "ENABLED";
    FD1S3IX count_36__i0 (.D(n145), .CK(osc_clk), .CD(n273), .Q(n28)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36__i0.GSR = "ENABLED";
    CCU2D count_36_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n381), .COUT(n382), .S0(n124), .S1(n123));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(24[16:25])
    defparam count_36_add_4_23.INIT0 = 16'hfaaa;
    defparam count_36_add_4_23.INIT1 = 16'hfaaa;
    defparam count_36_add_4_23.INJECT1_0 = "NO";
    defparam count_36_add_4_23.INJECT1_1 = "NO";
    OB LED_pad_5 (.I(n298), .O(LED[5]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    OB LED_pad_4 (.I(LED_c), .O(LED[4]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    OB LED_pad_3 (.I(LED_c), .O(LED[3]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    OB LED_pad_2 (.I(n298), .O(LED[2]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    OB LED_pad_1 (.I(n299), .O(LED[1]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    OB LED_pad_0 (.I(n300), .O(LED[0]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[18:21])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

