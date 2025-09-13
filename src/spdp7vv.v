//copyright 1997 Mark G. Arnold
//all rights reserved
//spdp1.v with link
`define CLK @(posedge sysclk)
`define ENS #1

module  pdp8_cpu(write,membus,contin,
                    ba,ma,mb,
                    halt,reset,sysclk);

  output write;
  input membus;
  input contin;
  input reset,sysclk;
  output [3:0] ba;
  output [6:0] ma;
  output mb;
  output halt;


  reg write;
  wire membus;
  wire contin;
  wire reset,sysclk;

  reg [12:0] lac;
  reg [6:0] ma;
  reg [11:0] pc,ir;
  reg mb;
  reg [3:0] ba;
  reg halt;
  reg c;
  reg z;

  reg contd1,contd2,contd3;
  reg cont;
  
  always @(contin) 
    contd1 = contin;

  always @(posedge sysclk)
    contd2 <= contd1;
    
  always @(contd1 or contd2)
    contd3 <= contd2&(~contd1);
 
  always @(posedge sysclk)
    cont <= contd3;

  function car;
    input a,b,c;
    begin
      car = a&b|a&c|b&c;
    end
  endfunction

  function sum;
    input a,b,c;
    begin
      sum = a+b+c;
    end
  endfunction

  function [11:0] ea;
    input [11:0] ir;
    begin
      ea = ir[6:0];
    end
  endfunction

  
  wire s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,
        s_11,s_12,s_13,s_14,s_15,s_16,s_17,s_18,s_19,s_20,
        s_21,s_22,s_23,s_24,s_25,s_26,s_27,s_28,s_29,s_30,
        s_31,s_32,s_33,s_34,s_35,s_36,s_37,s_38,s_39,s_40,
        s_41,s_42,s_43,s_44,s_45,s_46,s_47,s_48,s_49,s_50,
        s_51,s_52,s_53,s_54,s_55,s_56,s_57,s_58,s_59,s_60,
        s_61,s_62,s_63,s_64,s_65,s_66,s_67,s_68,s_69,s_70,
        s_71,s_72,s_73,s_74,s_75,s_76,s_77,s_78,s_79,s_80,
        s_81,s_82,s_83,s_84,s_85,s_86,s_87,s_88,s_89,s_90,
        s_91,s_92,s_93,s_94,s_95,s_96,s_97,s_98,s_99,s_100,
        s_101,s_102,s_103,s_104,s_105,s_106,s_107,s_108,s_109,s_110,
        s_111,s_112,s_113,s_114,s_115,s_116,s_117,s_118,s_119,s_120,
        s_121,s_122,s_123,s_124,s_125,s_126,s_127,s_128,s_129,s_130,
        s_131,s_132,s_133,s_134,s_135,s_136,s_137,s_138,s_139,s_140,
        s_141,s_142,s_143,s_144,s_145,s_146,s_147,s_148,s_149,s_150,
        s_151,s_152,s_153,s_154,s_155,s_156,s_157,s_158,s_159,s_160,
        s_161,s_162,s_163,s_164,s_165,s_166,s_167,s_168,s_169,s_170,
        s_171,s_172,s_173,s_174,s_175,s_176,s_177,s_178,s_179,s_180,
        s_181;
  reg ff_999;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_999 <= 0;
    else
      ff_999 <= 1;
  wire s_999 = ~ff_999;
  assign s_1  = s_999|s_181;
  assign s_2  = s_1;
  wire tmp_3 = s_2;
  reg ff_3;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_3 <= 0;
    else
      ff_3 <= tmp_3;
  assign s_3 = ff_3;
  assign s_4  = s_3;
  assign s_5  = s_4;
  assign s_6  = s_5;
  assign s_7  = s_6|s_180;
  assign s_8  = s_7;
  wire tmp_9 = s_8;
  reg ff_9;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_9 <= 0;
    else
      ff_9 <= tmp_9;
  assign s_9 = ff_9;
  assign s_10  = s_9;
  assign s_11  = s_10;
  assign s_12  = s_11;
  wire tmp_13 = s_12;
  wire qual_13 = (halt);
  assign s_13 = tmp_13&(~qual_13);
  wire  sT_13 = tmp_13&qual_13;
  assign s_14  = sT_13;
  wire tmp_15 = s_14|s_21;
  wire qual_15 = (~cont);
  assign s_15 = tmp_15&(~qual_15);
  wire  sT_15 = tmp_15&qual_15;
  assign s_16  = sT_15;
  wire tmp_17 = s_16;
  reg ff_17;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_17 <= 0;
    else
      ff_17 <= tmp_17;
  assign s_17 = ff_17;
  assign s_18  = s_17;
  assign s_19  = s_18;
  assign s_20  = s_19;
  assign s_21  = s_20;
  assign s_22  = s_15;
  assign s_23  = s_13;
  assign s_24  = s_23;
  wire tmp_25 = s_24;
  reg ff_25;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_25 <= 0;
    else
      ff_25 <= tmp_25;
  assign s_25 = ff_25;
  wire tmp_26 = s_25|s_34;
  wire qual_26 = (ba!=11);
  assign s_26 = tmp_26&(~qual_26);
  wire  sT_26 = tmp_26&qual_26;
  assign s_27  = sT_26;
  wire tmp_28 = s_27;
  reg ff_28;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_28 <= 0;
    else
      ff_28 <= tmp_28;
  assign s_28 = ff_28;
  wire tmp_29 = s_28;
  reg ff_29;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_29 <= 0;
    else
      ff_29 <= tmp_29;
  assign s_29 = ff_29;
  assign s_30  = s_29;
  assign s_31  = s_30;
  assign s_32  = s_31;
  assign s_33  = s_32;
  assign s_34  = s_33;
  wire tmp_35 = s_26;
  reg ff_35;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_35 <= 0;
    else
      ff_35 <= tmp_35;
  assign s_35 = ff_35;
  assign s_36  = s_35;
  assign s_37  = s_36;
  assign s_38  = s_37;
  assign s_39  = s_38;
  assign s_40  = s_39;
  wire tmp_41 = s_40;
  wire qual_41 = (ir[11:9]==1);
  assign s_41 = tmp_41&(~qual_41);
  wire  sT_41 = tmp_41&qual_41;
  assign s_42  = sT_41;
  wire tmp_43 = s_42|s_50;
  wire qual_43 = (ba!=11);
  assign s_43 = tmp_43&(~qual_43);
  wire  sT_43 = tmp_43&qual_43;
  assign s_44  = sT_43;
  wire tmp_45 = s_44;
  reg ff_45;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_45 <= 0;
    else
      ff_45 <= tmp_45;
  assign s_45 = ff_45;
  wire tmp_46 = s_45;
  reg ff_46;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_46 <= 0;
    else
      ff_46 <= tmp_46;
  assign s_46 = ff_46;
  assign s_47  = s_46;
  assign s_48  = s_47;
  assign s_49  = s_48;
  assign s_50  = s_49;
  wire tmp_51 = s_43;
  reg ff_51;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_51 <= 0;
    else
      ff_51 <= tmp_51;
  assign s_51 = ff_51;
  assign s_52  = s_51;
  assign s_53  = s_52;
  assign s_54  = s_41;
  assign s_55  = s_54;
  wire tmp_56 = s_55;
  wire qual_56 = (ir[11:9]==2);
  assign s_56 = tmp_56&(~qual_56);
  wire  sT_56 = tmp_56&qual_56;
  assign s_57  = sT_56;
  wire tmp_58 = s_57|s_71;
  wire qual_58 = (ba!=11);
  assign s_58 = tmp_58&(~qual_58);
  wire  sT_58 = tmp_58&qual_58;
  assign s_59  = sT_58;
  wire tmp_60 = s_59;
  reg ff_60;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_60 <= 0;
    else
      ff_60 <= tmp_60;
  assign s_60 = ff_60;
  wire tmp_61 = s_60;
  reg ff_61;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_61 <= 0;
    else
      ff_61 <= tmp_61;
  assign s_61 = ff_61;
  assign s_62  = s_61;
  assign s_63  = s_62;
  wire tmp_64 = s_63;
  reg ff_64;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_64 <= 0;
    else
      ff_64 <= tmp_64;
  assign s_64 = ff_64;
  assign s_65  = s_64;
  assign s_66  = s_65;
  wire tmp_67 = s_66;
  reg ff_67;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_67 <= 0;
    else
      ff_67 <= tmp_67;
  assign s_67 = ff_67;
  assign s_68  = s_67;
  wire tmp_69 = s_68;
  reg ff_69;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_69 <= 0;
    else
      ff_69 <= tmp_69;
  assign s_69 = ff_69;
  assign s_70  = s_69;
  assign s_71  = s_70;
  wire tmp_72 = s_58;
  reg ff_72;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_72 <= 0;
    else
      ff_72 <= tmp_72;
  assign s_72 = ff_72;
  assign s_73  = s_72;
  wire tmp_74 = s_73;
  wire qual_74 = (z);
  assign s_74 = tmp_74&(~qual_74);
  wire  sT_74 = tmp_74&qual_74;
  assign s_75  = sT_74;
  wire tmp_76 = s_75|s_82;
  wire qual_76 = (ba!=11);
  assign s_76 = tmp_76&(~qual_76);
  wire  sT_76 = tmp_76&qual_76;
  assign s_77  = sT_76;
  wire tmp_78 = s_77;
  reg ff_78;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_78 <= 0;
    else
      ff_78 <= tmp_78;
  assign s_78 = ff_78;
  assign s_79  = s_78;
  assign s_80  = s_79;
  assign s_81  = s_80;
  assign s_82  = s_81;
  assign s_83  = s_76|s_74;
  assign s_84  = s_83;
  assign s_85  = s_56;
  assign s_86  = s_85;
  wire tmp_87 = s_86;
  wire qual_87 = (ir[11:9]==3);
  assign s_87 = tmp_87&(~qual_87);
  wire  sT_87 = tmp_87&qual_87;
  assign s_88  = sT_87;
  wire tmp_89 = s_88|s_99;
  wire qual_89 = (ba!=11);
  assign s_89 = tmp_89&(~qual_89);
  wire  sT_89 = tmp_89&qual_89;
  assign s_90  = sT_89;
  wire tmp_91 = s_90;
  reg ff_91;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_91 <= 0;
    else
      ff_91 <= tmp_91;
  assign s_91 = ff_91;
  assign s_92  = s_91;
  assign s_93  = s_92;
  wire tmp_94 = s_93;
  reg ff_94;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_94 <= 0;
    else
      ff_94 <= tmp_94;
  assign s_94 = ff_94;
  assign s_95  = s_94;
  wire tmp_96 = s_95;
  reg ff_96;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_96 <= 0;
    else
      ff_96 <= tmp_96;
  assign s_96 = ff_96;
  assign s_97  = s_96;
  assign s_98  = s_97;
  assign s_99  = s_98;
  assign s_100  = s_89;
  assign s_101  = s_87;
  assign s_102  = s_101;
  wire tmp_103 = s_102;
  wire qual_103 = (ir[11:9]==5);
  assign s_103 = tmp_103&(~qual_103);
  wire  sT_103 = tmp_103&qual_103;
  assign s_104  = sT_103;
  wire tmp_105 = s_104;
  reg ff_105;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_105 <= 0;
    else
      ff_105 <= tmp_105;
  assign s_105 = ff_105;
  assign s_106  = s_105;
  assign s_107  = s_106;
  assign s_108  = s_103;
  assign s_109  = s_108;
  wire tmp_110 = s_109;
  wire qual_110 = (ir[11:9]==7);
  assign s_110 = tmp_110&(~qual_110);
  wire  sT_110 = tmp_110&qual_110;
  assign s_111  = sT_110;
  wire tmp_112 = s_111;
  wire qual_112 = (ir[8]);
  assign s_112 = tmp_112&(~qual_112);
  wire  sT_112 = tmp_112&qual_112;
  assign s_113  = sT_112;
  wire tmp_114 = s_113;
  wire qual_114 = (ir[1]);
  assign s_114 = tmp_114&(~qual_114);
  wire  sT_114 = tmp_114&qual_114;
  assign s_115  = sT_114;
  wire tmp_116 = s_115;
  reg ff_116;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_116 <= 0;
    else
      ff_116 <= tmp_116;
  assign s_116 = ff_116;
  assign s_117  = s_116;
  assign s_118  = s_117|s_114;
  wire tmp_119 = s_118;
  wire qual_119 = (ir[3]^(ir[6]&lac[11]|ir[5]&(lac[11:0]==0)|ir[4]&lac[12]));
  assign s_119 = tmp_119&(~qual_119);
  wire  sT_119 = tmp_119&qual_119;
  assign s_120  = sT_119;
  wire tmp_121 = s_120|s_127;
  wire qual_121 = (ba!=11);
  assign s_121 = tmp_121&(~qual_121);
  wire  sT_121 = tmp_121&qual_121;
  assign s_122  = sT_121;
  wire tmp_123 = s_122;
  reg ff_123;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_123 <= 0;
    else
      ff_123 <= tmp_123;
  assign s_123 = ff_123;
  assign s_124  = s_123;
  assign s_125  = s_124;
  assign s_126  = s_125;
  assign s_127  = s_126;
  assign s_128  = s_121|s_119;
  assign s_129  = s_128;
  assign s_130  = s_112;
  assign s_131  = s_130;
  wire tmp_132 = s_131;
  wire qual_132 = (ir[7]);
  assign s_132 = tmp_132&(~qual_132);
  wire  sT_132 = tmp_132&qual_132;
  assign s_133  = sT_132;
  wire tmp_134 = s_133;
  reg ff_134;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_134 <= 0;
    else
      ff_134 <= tmp_134;
  assign s_134 = ff_134;
  assign s_135  = s_134;
  assign s_136  = s_135|s_132;
  wire tmp_137 = s_136;
  wire qual_137 = (ir[6]);
  assign s_137 = tmp_137&(~qual_137);
  wire  sT_137 = tmp_137&qual_137;
  assign s_138  = sT_137;
  wire tmp_139 = s_138;
  reg ff_139;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_139 <= 0;
    else
      ff_139 <= tmp_139;
  assign s_139 = ff_139;
  assign s_140  = s_139;
  assign s_141  = s_140|s_137;
  wire tmp_142 = s_141;
  wire qual_142 = (ir[5]);
  assign s_142 = tmp_142&(~qual_142);
  wire  sT_142 = tmp_142&qual_142;
  assign s_143  = sT_142;
  wire tmp_144 = s_143;
  reg ff_144;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_144 <= 0;
    else
      ff_144 <= tmp_144;
  assign s_144 = ff_144;
  assign s_145  = s_144;
  assign s_146  = s_145|s_142;
  wire tmp_147 = s_146;
  wire qual_147 = (ir[4]);
  assign s_147 = tmp_147&(~qual_147);
  wire  sT_147 = tmp_147&qual_147;
  assign s_148  = sT_147;
  wire tmp_149 = s_148;
  reg ff_149;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_149 <= 0;
    else
      ff_149 <= tmp_149;
  assign s_149 = ff_149;
  assign s_150  = s_149;
  assign s_151  = s_150|s_147;
  wire tmp_152 = s_151;
  wire qual_152 = (ir[0]);
  assign s_152 = tmp_152&(~qual_152);
  wire  sT_152 = tmp_152&qual_152;
  assign s_153  = sT_152;
  wire tmp_154 = s_153|s_160;
  wire qual_154 = (ba!=11);
  assign s_154 = tmp_154&(~qual_154);
  wire  sT_154 = tmp_154&qual_154;
  assign s_155  = sT_154;
  wire tmp_156 = s_155;
  reg ff_156;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_156 <= 0;
    else
      ff_156 <= tmp_156;
  assign s_156 = ff_156;
  assign s_157  = s_156;
  assign s_158  = s_157;
  assign s_159  = s_158;
  assign s_160  = s_159;
  wire tmp_161 = s_154;
  reg ff_161;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_161 <= 0;
    else
      ff_161 <= tmp_161;
  assign s_161 = ff_161;
  assign s_162  = s_161;
  assign s_163  = s_162|s_152;
  wire tmp_164 = s_163;
  reg ff_164;
  always @(posedge sysclk or posedge reset)
    if (reset)
      ff_164 <= 0;
    else
      ff_164 <= tmp_164;
  assign s_164 = ff_164;
  wire tmp_165 = s_164;
  wire qual_165 = (ir[2]);
  assign s_165 = tmp_165&(~qual_165);
  wire  sT_165 = tmp_165&qual_165;
  assign s_166  = sT_165;
  assign s_167  = s_166;
  assign s_168  = s_167|s_165;
  wire tmp_169 = s_168;
  wire qual_169 = (ir[3]);
  assign s_169 = tmp_169&(~qual_169);
  wire  sT_169 = tmp_169&qual_169;
  assign s_170  = sT_169;
  assign s_171  = s_170;
  assign s_172  = s_171|s_169;
  assign s_173  = s_172|s_129;
  assign s_174  = s_173|s_110;
  assign s_175  = s_174|s_107;
  assign s_176  = s_175|s_100;
  assign s_177  = s_176|s_84;
  assign s_178  = s_177|s_53;
  assign s_179  = s_178|s_22;
  assign s_180  = s_179;
  assign s_181  = 1'b0;

  always @(posedge sysclk)
   begin
     if(s_11|s_33|s_37|s_49|s_70|s_73|s_81|s_97|s_126|s_159)
        ba <= 
             s_11 ?  0  :
             s_33 ?  ba+1  :
             s_37 ?  0  :
             s_49 ?  ba+1  :
             s_70 ?  ba+1  :
             s_73 ?  0  :
             s_81 ?  ba+1  :
             s_97 ?  ba+1  :
             s_126 ?  ba+1  :
             ba+1 ;
     if(s_39|s_80|s_48|s_12|s_125|s_63|s_158|s_32)
        c <= 
             s_39 ?  ir[10]  :
             s_80 ?  car(pc[0],0,c)  :
             s_48 ?  car(lac[0],membus,c)  :
             s_12 ?  1  :
             s_125 ?  car(pc[0],0,c)  :
             s_63 ?  car(membus,0,c)  :
             s_158 ?  car(lac[0],0,c)  :
             car(pc[0],0,c) ;
     if(s_18|s_117|s_4)
        halt <= 
             s_18 ?  0  :
             s_117 ?  1  :
             1 ;
     if(s_30)
        ir <= 
             {membus,ir[11:1]} ;
     if(s_52|s_135|s_140|s_145|s_150|s_157|s_47|s_92|s_162|s_167|s_171)
        lac <= 
             s_52 ?  {sum(lac[0],0,c),lac[12:1]}  :
             s_135 ?  {lac[12],12'b0}  :
             s_140 ?  {1'b0,lac[11:0]}  :
             s_145 ?  {lac[12],~lac[11:0]}  :
             s_150 ?  {~lac[12],lac[11:0]}  :
             s_157 ?  {sum(lac[0],0,c),lac[12:1]}  :
             s_47 ?  {sum(lac[0],membus,c),lac[12:1]}  :
             s_92 ?  {lac[12],1'b0,lac[11:1]}  :
             s_162 ?  {sum(lac[0],0,c),lac[12:1]}  :
             s_167 ?  {lac[11:0],lac[12]}  :
             {lac[0],lac[12:1]} ;
     if(s_36|s_19|s_10)
        ma <= 
             s_36 ?  ea(ir)  :
             s_19 ?  pc  :
             pc ;
     if(s_62|s_38|s_98|s_20)
        mb <= 
             s_62 ?  sum(membus,0,c)  :
             s_38 ?  lac[0]  :
             s_98 ?  lac[0]  :
             0 ;
     if(s_106|s_79|s_124|s_6|s_31)
        pc <= 
             s_106 ?  ma  :
             s_79 ?  {sum(pc[0],0,c),pc[11:1]}  :
             s_124 ?  {sum(pc[0],0,c),pc[11:1]}  :
             s_6 ?  12'o0100  :
             {sum(pc[0],0,c),pc[11:1]} ;
     if(s_68|s_93|s_95|s_5|s_66)
        write <= 
             s_68 ?  1  :
             s_93 ?  0  :
             s_95 ?  1  :
             s_5 ?  1  :
             0 ;
     if(s_65|s_40)
        z <= 
             s_65 ?  z&(mb==0)  :
             1 ;
   end

endmodule
//
//  Comefrom Table for module number 1:
//
//   1: 999 181 always
//   2:   1   0 begin
//   3:   2   0 @(posedge sysclk) #1 ;
//   4:   3   0 halt<=@(posedge sysclk) 1;
//   5:   4   0 write<=@(posedge sysclk) 1;
//   6:   5   0 pc<=@(posedge sysclk) 12'o0100;
//   7:   6 180 forever
//   8:   7   0 begin
//   9:   8   0 @(posedge sysclk) #1 ;
//  10:   9   0 ma<=@(posedge sysclk) pc;
//  11:  10   0 ba<=@(posedge sysclk) 0;
//  12:  11   0 c<=@(posedge sysclk) 1;
//  13:  12   0 if(halt)
//  14: -13   0 begin
//  15:  14  21 while(~cont)
//  16: -15   0 begin
//  17:  16   0 @(posedge sysclk) #1 ;
//  18:  17   0 halt<=@(posedge sysclk) 0;
//  19:  18   0 ma<=@(posedge sysclk) pc;
//  20:  19   0 mb<=@(posedge sysclk) 0;
//  21:  20   0 end
//  22:  15   0 end
//  23:  13   0 else
//  24:  23   0 begin
//  25:  24   0 @(posedge sysclk) #1 ;
//  26:  25  34 while(ba!=11)
//  27: -26   0 begin
//  28:  27   0 @(posedge sysclk) #1 ;
//  29:  28   0 @(posedge sysclk) #1 ;
//  30:  29   0 ir<=@(posedge sysclk) {membus,ir[11:1]};
//  31:  30   0 pc<=@(posedge sysclk) {sum(pc[0],0,c),pc[11:1]};
//  32:  31   0 c<=@(posedge sysclk) car(pc[0],0,c);
//  33:  32   0 ba<=@(posedge sysclk) ba+1;
//  34:  33   0 end
//  35:  26   0 @(posedge sysclk) #1 ;
//  36:  35   0 ma<=@(posedge sysclk) ea(ir);
//  37:  36   0 ba<=@(posedge sysclk) 0;
//  38:  37   0 mb<=@(posedge sysclk) lac[0];
//  39:  38   0 c<=@(posedge sysclk) ir[10];
//  40:  39   0 z<=@(posedge sysclk) 1;
//  41:  40   0 if(ir[11:9]==1)
//  42: -41   0 begin
//  43:  42  50 while(ba!=11)
//  44: -43   0 begin
//  45:  44   0 @(posedge sysclk) #1 ;
//  46:  45   0 @(posedge sysclk) #1 ;
//  47:  46   0 lac<=@(posedge sysclk) {sum(lac[0],membus,c),lac[12:1]};
//  48:  47   0 c<=@(posedge sysclk) car(lac[0],membus,c);
//  49:  48   0 ba<=@(posedge sysclk) ba+1;
//  50:  49   0 end
//  51:  43   0 @(posedge sysclk) #1 ;
//  52:  51   0 lac<=@(posedge sysclk) {sum(lac[0],0,c),lac[12:1]};
//  53:  52   0 end
//  54:  41   0 else
//  55:  54   0 begin
//  56:  55   0 if(ir[11:9]==2)
//  57: -56   0 begin
//  58:  57  71 while(ba!=11)
//  59: -58   0 begin
//  60:  59   0 @(posedge sysclk) #1 ;
//  61:  60   0 @(posedge sysclk) #1 ;
//  62:  61   0 mb<=@(posedge sysclk) sum(membus,0,c);
//  63:  62   0 c<=@(posedge sysclk) car(membus,0,c);
//  64:  63   0 @(posedge sysclk) #1 ;
//  65:  64   0 z<=@(posedge sysclk) z&(mb==0);
//  66:  65   0 write<=@(posedge sysclk) 0;
//  67:  66   0 @(posedge sysclk) #1 ;
//  68:  67   0 write<=@(posedge sysclk) 1;
//  69:  68   0 @(posedge sysclk) #1 ;
//  70:  69   0 ba<=@(posedge sysclk) ba+1;
//  71:  70   0 end
//  72:  58   0 @(posedge sysclk) #1 ;
//  73:  72   0 ba<=@(posedge sysclk) 0;
//  74:  73   0 if(z)
//  75: -74   0 begin
//  76:  75  82 while(ba!=11)
//  77: -76   0 begin
//  78:  77   0 @(posedge sysclk) #1 ;
//  79:  78   0 pc<=@(posedge sysclk) {sum(pc[0],0,c),pc[11:1]};
//  80:  79   0 c<=@(posedge sysclk) car(pc[0],0,c);
//  81:  80   0 ba<=@(posedge sysclk) ba+1;
//  82:  81   0 end
//  83:  76  74 end
//  84:  83   0 end
//  85:  56   0 else
//  86:  85   0 begin
//  87:  86   0 if(ir[11:9]==3)
//  88: -87   0 begin
//  89:  88  99 while(ba!=11)
//  90: -89   0 begin
//  91:  90   0 @(posedge sysclk) #1 ;
//  92:  91   0 lac<=@(posedge sysclk) {lac[12],1'b0,lac[11:1]};
//  93:  92   0 write<=@(posedge sysclk) 0;
//  94:  93   0 @(posedge sysclk) #1 ;
//  95:  94   0 write<=@(posedge sysclk) 1;
//  96:  95   0 @(posedge sysclk) #1 ;
//  97:  96   0 ba<=@(posedge sysclk) ba+1;
//  98:  97   0 mb<=@(posedge sysclk) lac[0];
//  99:  98   0 end
// 100:  89   0 end
// 101:  87   0 else
// 102: 101   0 begin
// 103: 102   0 if(ir[11:9]==5)
// 104: -103   0 begin
// 105: 104   0 @(posedge sysclk) #1 ;
// 106: 105   0 pc<=@(posedge sysclk) ma;
// 107: 106   0 end
// 108: 103   0 else
// 109: 108   0 begin
// 110: 109   0 if(ir[11:9]==7)
// 111: -110   0 begin
// 112: 111   0 if(ir[8])
// 113: -112   0 begin
// 114: 113   0 if(ir[1])
// 115: -114   0 begin
// 116: 115   0 @(posedge sysclk) #1 ;
// 117: 116   0 halt<=@(posedge sysclk) 1;
// 118: 117 114 end
// 119: 118   0 if(ir[3]^(ir[6]&lac[11]|ir[5]&(lac[11:0]==0)|ir[4]&lac[12]))
// 120: -119   0 begin
// 121: 120 127 while(ba!=11)
// 122: -121   0 begin
// 123: 122   0 @(posedge sysclk) #1 ;
// 124: 123   0 pc<=@(posedge sysclk) {sum(pc[0],0,c),pc[11:1]};
// 125: 124   0 c<=@(posedge sysclk) car(pc[0],0,c);
// 126: 125   0 ba<=@(posedge sysclk) ba+1;
// 127: 126   0 end
// 128: 121 119 end
// 129: 128   0 end
// 130: 112   0 else
// 131: 130   0 begin
// 132: 131   0 if(ir[7])
// 133: -132   0 begin
// 134: 133   0 @(posedge sysclk) #1 ;
// 135: 134   0 lac<=@(posedge sysclk) {lac[12],12'b0};
// 136: 135 132 end
// 137: 136   0 if(ir[6])
// 138: -137   0 begin
// 139: 138   0 @(posedge sysclk) #1 ;
// 140: 139   0 lac<=@(posedge sysclk) {1'b0,lac[11:0]};
// 141: 140 137 end
// 142: 141   0 if(ir[5])
// 143: -142   0 begin
// 144: 143   0 @(posedge sysclk) #1 ;
// 145: 144   0 lac<=@(posedge sysclk) {lac[12],~lac[11:0]};
// 146: 145 142 end
// 147: 146   0 if(ir[4])
// 148: -147   0 begin
// 149: 148   0 @(posedge sysclk) #1 ;
// 150: 149   0 lac<=@(posedge sysclk) {~lac[12],lac[11:0]};
// 151: 150 147 end
// 152: 151   0 if(ir[0])
// 153: -152   0 begin
// 154: 153 160 while(ba!=11)
// 155: -154   0 begin
// 156: 155   0 @(posedge sysclk) #1 ;
// 157: 156   0 lac<=@(posedge sysclk) {sum(lac[0],0,c),lac[12:1]};
// 158: 157   0 c<=@(posedge sysclk) car(lac[0],0,c);
// 159: 158   0 ba<=@(posedge sysclk) ba+1;
// 160: 159   0 end
// 161: 154   0 @(posedge sysclk) #1 ;
// 162: 161   0 lac<=@(posedge sysclk) {sum(lac[0],0,c),lac[12:1]};
// 163: 162 152 end
// 164: 163   0 @(posedge sysclk) #1 ;
// 165: 164   0 if(ir[2])
// 166: -165   0 begin
// 167: 166   0 lac<=@(posedge sysclk) {lac[11:0],lac[12]};
// 168: 167 165 end
// 169: 168   0 if(ir[3])
// 170: -169   0 begin
// 171: 170   0 lac<=@(posedge sysclk) {lac[0],lac[12:1]};
// 172: 171 169 end
// 173: 172 129 end
// 174: 173 110 end
// 175: 174 107 end
// 176: 175 100 end
// 177: 176  84 end
// 178: 177  53 end
// 179: 178  22 end
// 180: 179   0 end
// 181:   0   0 end
