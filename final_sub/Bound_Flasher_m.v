
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: Aug  1 2020 22:02:43 +07 (Aug  1 2020 15:02:43 UTC)

// Verification Directory fv/Bound_Flasher 

module Bound_Flasher(clk, reset, flick, LED);
  input clk, reset, flick;
  output [15:0] LED;
  wire clk, reset, flick;
  wire [15:0] LED;
  wire [15:0] next_LED;
  wire [2:0] next_index;
  wire [2:0] current_index;
  wire [1:0] next_state;
  wire [1:0] current_state;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, UNCONNECTED9, UNCONNECTED10,
       UNCONNECTED11, UNCONNECTED12, UNCONNECTED13, UNCONNECTED14;
  wire UNCONNECTED15, UNCONNECTED16, UNCONNECTED17, UNCONNECTED18,
       UNCONNECTED19, n_0, n_5, n_15;
  wire n_24, n_25, n_27, n_30, n_34, n_35, n_39, n_40;
  wire n_41, n_42, n_44, n_45, n_46, n_48, n_50, n_51;
  wire n_52, n_53, n_54, n_55, n_56, n_57, n_58, n_59;
  wire n_60, n_61, n_62, n_63, n_64, n_65, n_66, n_67;
  wire n_68, n_70, n_71, n_72, n_73, n_74, n_76, n_77;
  wire n_78, n_79, n_80, n_82, n_83, n_84, n_85, n_86;
  wire n_87, n_88, n_89, n_90, n_91, n_93, n_94, n_96;
  wire n_98, n_99, n_101, n_103, n_106, n_109, n_112, n_115;
  wire n_118, n_120, n_122, n_124, n_125, n_126, n_127, n_129;
  wire n_130, n_131, n_132, n_134, n_135, n_136, n_138, n_149;
  wire n_180, n_181, n_183, n_184, n_185, n_186, n_187, n_188;
  SDFFRHQX1 \LED_reg[1] (.RN (n_138), .CK (clk), .D (LED[1]), .SI
       (next_LED[1]), .SE (n_184), .Q (LED[1]));
  SDFFRHQX1 \LED_reg[2] (.RN (n_138), .CK (clk), .D (LED[2]), .SI
       (next_LED[2]), .SE (n_74), .Q (LED[2]));
  SDFFRHQX1 \LED_reg[3] (.RN (n_138), .CK (clk), .D (LED[3]), .SI
       (next_LED[3]), .SE (n_74), .Q (LED[3]));
  SDFFRHQX1 \LED_reg[13] (.RN (n_138), .CK (clk), .D (LED[13]), .SI
       (next_LED[13]), .SE (n_184), .Q (LED[13]));
  SDFFRHQX1 \LED_reg[14] (.RN (n_138), .CK (clk), .D (LED[14]), .SI
       (next_LED[14]), .SE (n_74), .Q (LED[14]));
  SDFFRHQX1 \LED_reg[4] (.RN (n_138), .CK (clk), .D (LED[4]), .SI
       (next_LED[4]), .SE (n_184), .Q (LED[4]));
  SDFFRHQX1 \LED_reg[5] (.RN (n_138), .CK (clk), .D (LED[5]), .SI
       (next_LED[5]), .SE (n_74), .Q (LED[5]));
  SDFFRHQX1 \LED_reg[10] (.RN (n_138), .CK (clk), .D (LED[10]), .SI
       (next_LED[10]), .SE (n_74), .Q (LED[10]));
  SDFFRHQX1 \LED_reg[7] (.RN (n_138), .CK (clk), .D (LED[7]), .SI
       (next_LED[7]), .SE (n_184), .Q (LED[7]));
  SDFFRHQX1 \LED_reg[8] (.RN (n_138), .CK (clk), .D (LED[8]), .SI
       (next_LED[8]), .SE (n_74), .Q (LED[8]));
  SDFFRHQX1 \LED_reg[9] (.RN (n_138), .CK (clk), .D (LED[9]), .SI
       (next_LED[9]), .SE (n_184), .Q (LED[9]));
  SDFFRHQX1 \LED_reg[12] (.RN (n_138), .CK (clk), .D (LED[12]), .SI
       (next_LED[12]), .SE (n_74), .Q (LED[12]));
  SDFFRHQX1 \LED_reg[11] (.RN (n_138), .CK (clk), .D (n_5), .SI
       (next_LED[11]), .SE (n_184), .Q (LED[11]));
  SDFFRHQX1 \LED_reg[6] (.RN (n_138), .CK (clk), .D (LED[6]), .SI
       (next_LED[6]), .SE (n_74), .Q (LED[6]));
  SDFFRHQX1 \LED_reg[0] (.RN (n_138), .CK (clk), .D (LED[0]), .SI
       (next_LED[0]), .SE (n_184), .Q (LED[0]));
  DFFSRHQX1 \current_index_reg[1] (.RN (n_86), .SN (n_89), .CK (clk),
       .D (next_index[1]), .Q (current_index[1]));
  TLATNXL \next_index_reg[0] (.GN (n_136), .D (n_135), .Q
       (next_index[0]), .QN (UNCONNECTED));
  TLATNXL \next_index_reg[2] (.GN (n_136), .D (n_132), .Q
       (next_index[2]), .QN (UNCONNECTED0));
  TLATNXL \next_index_reg[1] (.GN (n_136), .D (n_134), .Q
       (next_index[1]), .QN (UNCONNECTED1));
  TLATNXL \next_LED_reg[10] (.GN (n_136), .D (n_124), .Q
       (next_LED[10]), .QN (UNCONNECTED2));
  TLATNXL \next_LED_reg[6] (.GN (n_136), .D (n_129), .Q (next_LED[6]),
       .QN (UNCONNECTED3));
  TLATNXL \next_LED_reg[9] (.GN (n_136), .D (n_125), .Q (next_LED[9]),
       .QN (UNCONNECTED4));
  TLATNXL \next_LED_reg[0] (.GN (n_136), .D (n_185), .Q (next_LED[0]),
       .QN (UNCONNECTED5));
  TLATNXL \next_LED_reg[7] (.GN (n_136), .D (n_120), .Q (next_LED[7]),
       .QN (UNCONNECTED6));
  TLATNXL \next_LED_reg[11] (.GN (n_136), .D (n_122), .Q
       (next_LED[11]), .QN (UNCONNECTED7));
  TLATNXL \next_LED_reg[12] (.GN (n_136), .D (n_130), .Q
       (next_LED[12]), .QN (UNCONNECTED8));
  SDFFRHQX1 \LED_reg[15] (.RN (n_138), .CK (clk), .D (LED[15]), .SI
       (next_LED[15]), .SE (n_184), .Q (LED[15]));
  TLATNXL \next_LED_reg[2] (.GN (n_136), .D (n_115), .Q (next_LED[2]),
       .QN (UNCONNECTED9));
  TLATNXL \next_LED_reg[8] (.GN (n_136), .D (n_106), .Q (next_LED[8]),
       .QN (UNCONNECTED10));
  TLATNXL \next_LED_reg[1] (.GN (n_136), .D (n_109), .Q (next_LED[1]),
       .QN (UNCONNECTED11));
  TLATNXL \next_LED_reg[4] (.GN (n_136), .D (n_99), .Q (next_LED[4]),
       .QN (UNCONNECTED12));
  TLATNXL \next_LED_reg[13] (.GN (n_136), .D (n_103), .Q
       (next_LED[13]), .QN (UNCONNECTED13));
  TLATNXL \next_LED_reg[3] (.GN (n_136), .D (n_101), .Q (next_LED[3]),
       .QN (UNCONNECTED14));
  TLATNXL \next_LED_reg[14] (.GN (n_136), .D (n_112), .Q
       (next_LED[14]), .QN (UNCONNECTED15));
  TLATNXL \next_LED_reg[5] (.GN (n_136), .D (n_118), .Q (next_LED[5]),
       .QN (UNCONNECTED16));
  MXI2XL g4565__2398(.A (n_187), .B (n_131), .S0 (current_index[0]), .Y
       (n_135));
  OAI21XL g4557__5107(.A0 (n_87), .A1 (n_187), .B0 (n_98), .Y (n_134));
  OAI22XL g4572__6260(.A0 (n_61), .A1 (n_131), .B0 (n_46), .B1 (n_187),
       .Y (n_132));
  AO22X1 g4569__4319(.A0 (n_5), .A1 (n_127), .B0 (LED[13]), .B1
       (n_126), .Y (n_130));
  AO22X1 g4563__8428(.A0 (LED[5]), .A1 (n_127), .B0 (LED[7]), .B1
       (n_149), .Y (n_129));
  AO22X1 g4566__5526(.A0 (LED[8]), .A1 (n_127), .B0 (LED[10]), .B1
       (n_149), .Y (n_125));
  AO22X1 g4567__6783(.A0 (LED[9]), .A1 (n_127), .B0 (n_5), .B1 (n_126),
       .Y (n_124));
  AO22X1 g4568__3680(.A0 (LED[10]), .A1 (n_127), .B0 (LED[12]), .B1
       (n_149), .Y (n_122));
  AO22X1 g4556__1617(.A0 (LED[6]), .A1 (n_127), .B0 (LED[8]), .B1
       (n_126), .Y (n_120));
  AO22X1 g4562__2802(.A0 (LED[4]), .A1 (n_127), .B0 (LED[6]), .B1
       (n_149), .Y (n_118));
  AO22X1 g4559__1705(.A0 (LED[1]), .A1 (n_127), .B0 (LED[3]), .B1
       (n_126), .Y (n_115));
  AO22X1 g4571__5122(.A0 (LED[13]), .A1 (n_127), .B0 (LED[15]), .B1
       (n_149), .Y (n_112));
  AO22X1 g4558__8246(.A0 (LED[0]), .A1 (n_127), .B0 (LED[2]), .B1
       (n_126), .Y (n_109));
  AO22X1 g4573__7098(.A0 (LED[7]), .A1 (n_127), .B0 (LED[9]), .B1
       (n_149), .Y (n_106));
  AO22X1 g4570__6131(.A0 (LED[12]), .A1 (n_127), .B0 (LED[14]), .B1
       (n_126), .Y (n_103));
  AO22X1 g4560__1881(.A0 (LED[2]), .A1 (n_127), .B0 (LED[4]), .B1
       (n_149), .Y (n_101));
  AO22X1 g4561__7482(.A0 (LED[3]), .A1 (n_127), .B0 (LED[5]), .B1
       (n_149), .Y (n_99));
  DFFRHQX1 \current_state_reg[1] (.RN (n_76), .CK (clk), .D
       (next_state[1]), .Q (current_state[1]));
  NAND3BXL g4577__4733(.AN (n_78), .B (current_index[1]), .C (n_187),
       .Y (n_98));
  OAI21XL g4583__6161(.A0 (current_state[0]), .A1 (n_93), .B0 (n_187),
       .Y (n_131));
  TLATNXL \next_LED_reg[15] (.GN (n_136), .D (n_96), .Q (next_LED[15]),
       .QN (UNCONNECTED17));
  NOR2X1 g4584__9315(.A (n_56), .B (n_126), .Y (n_127));
  TLATNXL \next_state_reg[1] (.GN (n_136), .D (n_149), .Q
       (next_state[1]), .QN (UNCONNECTED18));
  TLATNXL \next_state_reg[0] (.GN (n_136), .D (n_94), .Q
       (next_state[0]), .QN (UNCONNECTED19));
  AND2X1 g4582__2883(.A (LED[14]), .B (n_94), .Y (n_96));
  MX2X1 g4587__2346(.A (n_93), .B (n_91), .S0 (current_state[0]), .Y
       (n_126));
  NAND2BXL g4592__7410(.AN (current_index[0]), .B (n_88), .Y (n_90));
  OAI31X1 g4586__6417(.A0 (current_state[1]), .A1 (n_55), .A2 (n_79),
       .B0 (n_72), .Y (n_94));
  NAND2XL g4593__5477(.A (n_88), .B (n_87), .Y (n_89));
  OA21X1 g4596__2398(.A0 (n_87), .A1 (n_74), .B0 (n_138), .Y (n_86));
  NAND2BXL g4594__5107(.AN (n_82), .B (n_88), .Y (n_85));
  AOI21XL g4595__6260(.A0 (current_index[0]), .A1 (n_183), .B0 (n_80),
       .Y (n_84));
  AOI21XL g4597__4319(.A0 (n_82), .A1 (n_183), .B0 (n_80), .Y (n_83));
  NOR2BX1 g4589__8428(.AN (n_79), .B (current_state[1]), .Y (n_91));
  NOR2XL g4598__5526(.A (n_78), .B (n_77), .Y (n_88));
  INVXL g4599(.A (n_80), .Y (n_138));
  OAI2BB1X1 g4601__6783(.A0N (n_78), .A1N (n_183), .B0 (reset), .Y
       (n_80));
  AND2XL g4603__3680(.A (reset), .B (n_74), .Y (n_76));
  NAND2XL g4590__1617(.A (n_73), .B (n_67), .Y (n_79));
  NAND2XL g4602__2802(.A (n_183), .B (reset), .Y (n_77));
  NAND4XL g4591__1705(.A (LED[9]), .B (LED[8]), .C (LED[10]), .D
       (n_70), .Y (n_73));
  INVXL g4608(.A (n_71), .Y (n_72));
  NOR4BBX1 g4600__8246(.AN (LED[6]), .BN (LED[7]), .C (n_60), .D
       (n_62), .Y (n_70));
  NOR2XL g4609__7098(.A (n_63), .B (n_68), .Y (n_71));
  AND2X1 g4610__1881(.A (current_state[1]), .B (n_68), .Y (n_93));
  AOI32X1 g4613__5115(.A0 (current_index[2]), .A1 (n_51), .A2 (n_64),
       .B0 (current_index[0]), .B1 (n_65), .Y (n_67));
  AOI2BB1X1 g4614__7482(.A0N (n_65), .A1N (n_64), .B0 (n_63), .Y
       (n_66));
  MXI2XL g4615__4733(.A (n_65), .B (n_64), .S0 (n_186), .Y (n_68));
  AOI32X1 g4612__6161(.A0 (LED[14]), .A1 (n_61), .A2 (n_58), .B0
       (n_44), .B1 (n_57), .Y (n_62));
  NOR2X2 g4616__9315(.A (n_60), .B (n_59), .Y (n_64));
  NOR2X2 g4618__9945(.A (n_53), .B (n_59), .Y (n_65));
  NOR2BX1 g4617__2883(.AN (LED[13]), .B (n_52), .Y (n_58));
  NAND2X4 g4619__2346(.A (n_50), .B (n_57), .Y (n_59));
  OAI21XL g4620__1666(.A0 (current_state[0]), .A1 (n_54), .B0 (n_25),
       .Y (n_56));
  NAND3X2 g4624__7410(.A (current_state[1]), .B (n_55), .C (n_54), .Y
       (n_63));
  NAND2X2 g4623__6417(.A (n_41), .B (n_48), .Y (n_60));
  NAND2X2 g4622__5477(.A (n_27), .B (n_188), .Y (n_53));
  NAND4XL g4621__2398(.A (LED[15]), .B (LED[12]), .C (n_5), .D (n_51),
       .Y (n_52));
  CLKAND2X2 g4626__5107(.A (n_24), .B (n_40), .Y (n_50));
  NOR2X2 g4633__4319(.A (n_34), .B (n_42), .Y (n_48));
  CLKAND2X2 g4628__8428(.A (n_35), .B (n_39), .Y (n_57));
  XNOR2X1 g4625__6783(.A (n_61), .B (n_15), .Y (n_46));
  XNOR2X1 g4627__3680(.A (n_51), .B (current_index[2]), .Y (n_82));
  NAND2X1 g4629__1617(.A (current_index[2]), .B (n_45), .Y (n_54));
  NOR2XL g4631__2802(.A (n_45), .B (n_44), .Y (n_87));
  NAND2X4 g4639__1705(.A (LED[4]), .B (LED[1]), .Y (n_42));
  NOR3X4 g4635__8246(.A (LED[8]), .B (LED[10]), .C (LED[9]), .Y (n_40));
  NOR3X4 g4634__7098(.A (n_5), .B (LED[15]), .C (LED[14]), .Y (n_39));
  NOR2X2 g4638__5115(.A (LED[13]), .B (LED[12]), .Y (n_35));
  NAND2X2 g4649__7482(.A (LED[2]), .B (LED[0]), .Y (n_34));
  AND2X1 g4650__4733(.A (current_index[1]), .B (n_30), .Y (n_44));
  AO21X1 g4632__9315(.A0 (current_state[1]), .A1 (current_state[0]),
       .B0 (n_0), .Y (n_136));
  NOR2X1 g4648__9945(.A (LED[2]), .B (LED[5]), .Y (n_27));
  INVXL g4644(.A (n_78), .Y (n_25));
  NAND2XL g4641__2346(.A (current_index[1]), .B (current_index[0]), .Y
       (n_15));
  NOR2XL g4643__1666(.A (current_index[0]), .B (current_index[1]), .Y
       (n_51));
  INVXL g4671(.A (reset), .Y (n_0));
  BUFX3 g4690(.A (LED[11]), .Y (n_5));
  BUFX2 drc_buf_sp4749(.A (n_126), .Y (n_149));
  INVXL g4778(.A (n_74), .Y (n_183));
  OR2X4 g4607__4779(.A (n_180), .B (n_181), .Y (n_74));
  INVX1 g4780(.A (flick), .Y (n_180));
  AOI21X1 g4611__4781(.A0 (n_78), .A1 (reset), .B0 (n_66), .Y (n_181));
  OR2X4 g4607__5122_dup(.A (n_180), .B (n_181), .Y (n_184));
  DFFSRX1 \current_index_reg[0] (.RN (n_84), .SN (n_90), .CK (clk), .D
       (next_index[0]), .Q (current_index[0]), .QN (n_30));
  DFFSRX1 \current_state_reg[0] (.RN (reset), .SN (n_77), .CK (clk), .D
       (next_state[0]), .Q (current_state[0]), .QN (n_55));
  DFFSRX1 \current_index_reg[2] (.RN (n_83), .SN (n_85), .CK (clk), .D
       (next_index[2]), .Q (current_index[2]), .QN (n_61));
  AO21X1 g2(.A0 (LED[1]), .A1 (n_126), .B0 (n_127), .Y (n_185));
  AOI21X1 g4789(.A0 (n_91), .A1 (current_state[0]), .B0 (n_71), .Y
       (n_187));
  NOR4X4 g4790(.A (LED[3]), .B (LED[0]), .C (LED[4]), .D (LED[1]), .Y
       (n_188));
  NOR2X1 g4651__4792(.A (current_state[1]), .B (current_state[0]), .Y
       (n_78));
  NOR2X1 g4640__4794(.A (LED[7]), .B (LED[6]), .Y (n_24));
  AND2X1 g4646__4796(.A (LED[5]), .B (LED[3]), .Y (n_41));
  NOR2X1 g4642__4798(.A (current_index[1]), .B (n_30), .Y (n_45));
  NOR2BX1 g4800(.AN (n_45), .B (current_index[2]), .Y (n_186));
endmodule
