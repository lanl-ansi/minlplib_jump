using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
b_Idx = Any[33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[17], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[31]+x[32] == 0.0)
@constraint(m, e2, -x[2]+x[3]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[80] <= 189.2)
@constraint(m, e3, 6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[81] <= 189.2)
@constraint(m, e4, x[3]-x[4]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[82] <= 189.2)
@constraint(m, e5, x[3]-x[5]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[83] <= 189.2)
@constraint(m, e6, x[3]-x[6]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[84] <= 189.2)
@constraint(m, e7, x[3]-x[7]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[85] <= 189.2)
@constraint(m, e8, x[3]-x[8]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59]+190*b[86] <= 189.2)
@constraint(m, e9, -x[1]+x[4]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[87] <= 189.18)
@constraint(m, e10, -x[3]+x[4]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[89] <= 189.18)
@constraint(m, e11, 4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[90] <= 189.18)
@constraint(m, e12, x[4]-x[5]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[91] <= 189.18)
@constraint(m, e13, x[4]-x[6]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[92] <= 189.18)
@constraint(m, e14, x[4]-x[7]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[93] <= 189.18)
@constraint(m, e15, x[4]-x[8]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60]+190*b[94] <= 189.18)
@constraint(m, e16, -x[1]+x[5]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[95] <= 189.0)
@constraint(m, e17, -x[2]+x[5]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[96] <= 189.0)
@constraint(m, e18, -x[4]+x[5]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[98] <= 189.0)
@constraint(m, e19, 5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[99] <= 189.0)
@constraint(m, e20, x[5]-x[6]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[100] <= 189.0)
@constraint(m, e21, x[5]-x[7]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[101] <= 189.0)
@constraint(m, e22, x[5]-x[8]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61]+190*b[102] <= 189.0)
@constraint(m, e23, -x[1]+x[6]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[103] <= 189.0)
@constraint(m, e24, -x[2]+x[6]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[104] <= 189.0)
@constraint(m, e25, -x[3]+x[6]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[105] <= 189.0)
@constraint(m, e26, -x[5]+x[6]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[107] <= 189.0)
@constraint(m, e27, 7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[108] <= 189.0)
@constraint(m, e28, x[6]-x[7]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[109] <= 189.0)
@constraint(m, e29, x[6]-x[8]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62]+190*b[110] <= 189.0)
@constraint(m, e30, -x[1]+x[7]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[111] <= 189.61)
@constraint(m, e31, -x[2]+x[7]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[112] <= 189.61)
@constraint(m, e32, -x[3]+x[7]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[113] <= 189.61)
@constraint(m, e33, -x[4]+x[7]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[114] <= 189.61)
@constraint(m, e34, -x[6]+x[7]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[116] <= 189.61)
@constraint(m, e35, 5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[117] <= 189.61)
@constraint(m, e36, x[7]-x[8]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63]+190*b[118] <= 189.61)
@constraint(m, e37, -x[1]+x[8]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[119] <= 189.35)
@constraint(m, e38, -x[2]+x[8]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[120] <= 189.35)
@constraint(m, e39, -x[3]+x[8]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[121] <= 189.35)
@constraint(m, e40, -x[4]+x[8]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[122] <= 189.35)
@constraint(m, e41, -x[5]+x[8]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[123] <= 189.35)
@constraint(m, e42, -x[7]+x[8]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[125] <= 189.35)
@constraint(m, e43, 5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64]+190*b[126] <= 189.35)
@NLconstraint(m, e44, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[2]+190*b[65] <= 190.0)
@NLconstraint(m, e45, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[3]+190*b[66] <= 190.0)
@NLconstraint(m, e46, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[4]+190*b[67] <= 190.0)
@NLconstraint(m, e47, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[5]+190*b[68] <= 190.0)
@NLconstraint(m, e48, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[6]+190*b[69] <= 190.0)
@NLconstraint(m, e49, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[7]+190*b[70] <= 190.0)
@NLconstraint(m, e50, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[8]+190*b[71] <= 190.0)
@NLconstraint(m, e51, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])-x[1]+x[2]+190*b[72] <= 190.0)
@NLconstraint(m, e52, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[3]+190*b[73] <= 190.0)
@NLconstraint(m, e53, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[4]+190*b[74] <= 190.0)
@NLconstraint(m, e54, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[5]+190*b[75] <= 190.0)
@NLconstraint(m, e55, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[6]+190*b[76] <= 190.0)
@NLconstraint(m, e56, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[7]+190*b[77] <= 190.0)
@NLconstraint(m, e57, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[8]+190*b[78] <= 190.0)
@constraint(m, e58, -x[10]+x[11]-6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[142] <= 182.6875)
@constraint(m, e59, -6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[143] <= 182.6875)
@constraint(m, e60, x[11]-x[12]-6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[144] <= 182.6875)
@constraint(m, e61, x[11]-x[13]-6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[145] <= 182.6875)
@constraint(m, e62, x[11]-x[14]-6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[146] <= 182.6875)
@constraint(m, e63, x[11]-x[15]-6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[147] <= 182.6875)
@constraint(m, e64, x[11]-x[16]-6.5125*b[35]-6.5125*b[43]+4.1*b[51]+190*b[148] <= 182.6875)
@constraint(m, e65, -x[9]+x[12]-4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[149] <= 184.4)
@constraint(m, e66, -x[11]+x[12]-4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[151] <= 184.4)
@constraint(m, e67, -4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[152] <= 184.4)
@constraint(m, e68, x[12]-x[13]-4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[153] <= 184.4)
@constraint(m, e69, x[12]-x[14]-4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[154] <= 184.4)
@constraint(m, e70, x[12]-x[15]-4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[155] <= 184.4)
@constraint(m, e71, x[12]-x[16]-4.78*b[36]-4.78*b[44]+1.78*b[52]+190*b[156] <= 184.4)
@constraint(m, e72, -x[9]+x[13]-5*b[37]-5*b[45]+4.5*b[53]+190*b[157] <= 184.0)
@constraint(m, e73, -x[10]+x[13]-5*b[37]-5*b[45]+4.5*b[53]+190*b[158] <= 184.0)
@constraint(m, e74, -x[12]+x[13]-5*b[37]-5*b[45]+4.5*b[53]+190*b[160] <= 184.0)
@constraint(m, e75, -5*b[37]-5*b[45]+4.5*b[53]+190*b[161] <= 184.0)
@constraint(m, e76, x[13]-x[14]-5*b[37]-5*b[45]+4.5*b[53]+190*b[162] <= 184.0)
@constraint(m, e77, x[13]-x[15]-5*b[37]-5*b[45]+4.5*b[53]+190*b[163] <= 184.0)
@constraint(m, e78, x[13]-x[16]-5*b[37]-5*b[45]+4.5*b[53]+190*b[164] <= 184.0)
@constraint(m, e79, -x[9]+x[14]-7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[165] <= 181.75)
@constraint(m, e80, -x[10]+x[14]-7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[166] <= 181.75)
@constraint(m, e81, -x[11]+x[14]-7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[167] <= 181.75)
@constraint(m, e82, -x[13]+x[14]-7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[169] <= 181.75)
@constraint(m, e83, -7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[170] <= 181.75)
@constraint(m, e84, x[14]-x[15]-7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[171] <= 181.75)
@constraint(m, e85, x[14]-x[16]-7.25*b[38]-7.25*b[46]+3.9*b[54]+190*b[172] <= 181.75)
@constraint(m, e86, -x[9]+x[15]-5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[173] <= 184.6)
@constraint(m, e87, -x[10]+x[15]-5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[174] <= 184.6)
@constraint(m, e88, -x[11]+x[15]-5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[175] <= 184.6)
@constraint(m, e89, -x[12]+x[15]-5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[176] <= 184.6)
@constraint(m, e90, -x[14]+x[15]-5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[178] <= 184.6)
@constraint(m, e91, -5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[179] <= 184.6)
@constraint(m, e92, x[15]-x[16]-5.01*b[39]-5.01*b[47]+4.81*b[55]+190*b[180] <= 184.6)
@constraint(m, e93, -x[9]+x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[181] <= 183.75)
@constraint(m, e94, -x[10]+x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[182] <= 183.75)
@constraint(m, e95, -x[11]+x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[183] <= 183.75)
@constraint(m, e96, -x[12]+x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[184] <= 183.75)
@constraint(m, e97, -x[13]+x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[185] <= 183.75)
@constraint(m, e98, -x[15]+x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[187] <= 183.75)
@constraint(m, e99, -5.6*b[40]-5.6*b[48]+3.75*b[56]+190*b[188] <= 183.75)
@NLconstraint(m, e100, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[10]+190*b[127] <= 190.0)
@NLconstraint(m, e101, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[11]+190*b[128] <= 190.0)
@NLconstraint(m, e102, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[12]+190*b[129] <= 190.0)
@NLconstraint(m, e103, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[13]+190*b[130] <= 190.0)
@NLconstraint(m, e104, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[14]+190*b[131] <= 190.0)
@NLconstraint(m, e105, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[15]+190*b[132] <= 190.0)
@NLconstraint(m, e106, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9]-x[16]+190*b[133] <= 190.0)
@NLconstraint(m, e107, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])-x[9]+x[10]+190*b[134] <= 190.0)
@NLconstraint(m, e108, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10]-x[11]+190*b[135] <= 190.0)
@NLconstraint(m, e109, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10]-x[12]+190*b[136] <= 190.0)
@NLconstraint(m, e110, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10]-x[13]+190*b[137] <= 190.0)
@NLconstraint(m, e111, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10]-x[14]+190*b[138] <= 190.0)
@NLconstraint(m, e112, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10]-x[15]+190*b[139] <= 190.0)
@NLconstraint(m, e113, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10]-x[16]+190*b[140] <= 190.0)
@constraint(m, e114, -x[18]+x[19]+2.4125*b[43]-4.1*b[59]+190*b[204] <= 185.1)
@constraint(m, e115, 2.4125*b[43]-4.1*b[59]+190*b[205] <= 185.1)
@constraint(m, e116, x[19]-x[20]+2.4125*b[43]-4.1*b[59]+190*b[206] <= 185.1)
@constraint(m, e117, x[19]-x[21]+2.4125*b[43]-4.1*b[59]+190*b[207] <= 185.1)
@constraint(m, e118, x[19]-x[22]+2.4125*b[43]-4.1*b[59]+190*b[208] <= 185.1)
@constraint(m, e119, x[19]-x[23]+2.4125*b[43]-4.1*b[59]+190*b[209] <= 185.1)
@constraint(m, e120, x[19]-x[24]+2.4125*b[43]-4.1*b[59]+190*b[210] <= 185.1)
@constraint(m, e121, -x[17]+x[20]+3*b[44]-1.78*b[60]+190*b[211] <= 187.4)
@constraint(m, e122, -x[19]+x[20]+3*b[44]-1.78*b[60]+190*b[213] <= 187.4)
@constraint(m, e123, 3*b[44]-1.78*b[60]+190*b[214] <= 187.4)
@constraint(m, e124, x[20]-x[21]+3*b[44]-1.78*b[60]+190*b[215] <= 187.4)
@constraint(m, e125, x[20]-x[22]+3*b[44]-1.78*b[60]+190*b[216] <= 187.4)
@constraint(m, e126, x[20]-x[23]+3*b[44]-1.78*b[60]+190*b[217] <= 187.4)
@constraint(m, e127, x[20]-x[24]+3*b[44]-1.78*b[60]+190*b[218] <= 187.4)
@constraint(m, e128, -x[17]+x[21]+0.5*b[45]-4.5*b[61]+190*b[219] <= 184.5)
@constraint(m, e129, -x[18]+x[21]+0.5*b[45]-4.5*b[61]+190*b[220] <= 184.5)
@constraint(m, e130, -x[20]+x[21]+0.5*b[45]-4.5*b[61]+190*b[222] <= 184.5)
@constraint(m, e131, 0.5*b[45]-4.5*b[61]+190*b[223] <= 184.5)
@constraint(m, e132, x[21]-x[22]+0.5*b[45]-4.5*b[61]+190*b[224] <= 184.5)
@constraint(m, e133, x[21]-x[23]+0.5*b[45]-4.5*b[61]+190*b[225] <= 184.5)
@constraint(m, e134, x[21]-x[24]+0.5*b[45]-4.5*b[61]+190*b[226] <= 184.5)
@constraint(m, e135, -x[17]+x[22]+3.35*b[46]-3.9*b[62]+190*b[227] <= 185.1)
@constraint(m, e136, -x[18]+x[22]+3.35*b[46]-3.9*b[62]+190*b[228] <= 185.1)
@constraint(m, e137, -x[19]+x[22]+3.35*b[46]-3.9*b[62]+190*b[229] <= 185.1)
@constraint(m, e138, -x[21]+x[22]+3.35*b[46]-3.9*b[62]+190*b[231] <= 185.1)
@constraint(m, e139, 3.35*b[46]-3.9*b[62]+190*b[232] <= 185.1)
@constraint(m, e140, x[22]-x[23]+3.35*b[46]-3.9*b[62]+190*b[233] <= 185.1)
@constraint(m, e141, x[22]-x[24]+3.35*b[46]-3.9*b[62]+190*b[234] <= 185.1)
@constraint(m, e142, -x[17]+x[23]+0.2*b[47]-4.81*b[63]+190*b[235] <= 184.8)
@constraint(m, e143, -x[18]+x[23]+0.2*b[47]-4.81*b[63]+190*b[236] <= 184.8)
@constraint(m, e144, -x[19]+x[23]+0.2*b[47]-4.81*b[63]+190*b[237] <= 184.8)
@constraint(m, e145, -x[20]+x[23]+0.2*b[47]-4.81*b[63]+190*b[238] <= 184.8)
@constraint(m, e146, -x[22]+x[23]+0.2*b[47]-4.81*b[63]+190*b[240] <= 184.8)
@constraint(m, e147, 0.2*b[47]-4.81*b[63]+190*b[241] <= 184.8)
@constraint(m, e148, x[23]-x[24]+0.2*b[47]-4.81*b[63]+190*b[242] <= 184.8)
@constraint(m, e149, -x[17]+x[24]+1.85*b[48]-3.75*b[64]+190*b[243] <= 185.6)
@constraint(m, e150, -x[18]+x[24]+1.85*b[48]-3.75*b[64]+190*b[244] <= 185.6)
@constraint(m, e151, -x[19]+x[24]+1.85*b[48]-3.75*b[64]+190*b[245] <= 185.6)
@constraint(m, e152, -x[20]+x[24]+1.85*b[48]-3.75*b[64]+190*b[246] <= 185.6)
@constraint(m, e153, -x[21]+x[24]+1.85*b[48]-3.75*b[64]+190*b[247] <= 185.6)
@constraint(m, e154, -x[23]+x[24]+1.85*b[48]-3.75*b[64]+190*b[249] <= 185.6)
@constraint(m, e155, 1.85*b[48]-3.75*b[64]+190*b[250] <= 185.6)
@NLconstraint(m, e156, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[18]+190*b[189] <= 190.0)
@NLconstraint(m, e157, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[19]+190*b[190] <= 190.0)
@NLconstraint(m, e158, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[20]+190*b[191] <= 190.0)
@NLconstraint(m, e159, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[21]+190*b[192] <= 190.0)
@NLconstraint(m, e160, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[22]+190*b[193] <= 190.0)
@NLconstraint(m, e161, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[23]+190*b[194] <= 190.0)
@NLconstraint(m, e162, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17]-x[24]+190*b[195] <= 190.0)
@NLconstraint(m, e163, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]-x[17]+x[18]+190*b[196] <= 190.0)
@NLconstraint(m, e164, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18]-x[19]+190*b[197] <= 190.0)
@NLconstraint(m, e165, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18]-x[20]+190*b[198] <= 190.0)
@NLconstraint(m, e166, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18]-x[21]+190*b[199] <= 190.0)
@NLconstraint(m, e167, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18]-x[22]+190*b[200] <= 190.0)
@NLconstraint(m, e168, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18]-x[23]+190*b[201] <= 190.0)
@NLconstraint(m, e169, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18]-x[24]+190*b[202] <= 190.0)
@constraint(m, e170, b[65]+b[72]+b[127]+b[134]+b[189]+b[196] >= 1.0)
@constraint(m, e171, b[66]+b[79]+b[128]+b[141]+b[190]+b[203] >= 1.0)
@constraint(m, e172, b[67]+b[87]+b[129]+b[149]+b[191]+b[211] >= 1.0)
@constraint(m, e173, b[68]+b[95]+b[130]+b[157]+b[192]+b[219] >= 1.0)
@constraint(m, e174, b[69]+b[103]+b[131]+b[165]+b[193]+b[227] >= 1.0)
@constraint(m, e175, b[70]+b[111]+b[132]+b[173]+b[194]+b[235] >= 1.0)
@constraint(m, e176, b[71]+b[119]+b[133]+b[181]+b[195]+b[243] >= 1.0)
@constraint(m, e177, b[65]+b[72]+b[127]+b[134]+b[189]+b[196] >= 1.0)
@constraint(m, e178, b[73]+b[80]+b[135]+b[142]+b[197]+b[204] >= 1.0)
@constraint(m, e179, b[74]+b[88]+b[136]+b[150]+b[198]+b[212] >= 1.0)
@constraint(m, e180, b[75]+b[96]+b[137]+b[158]+b[199]+b[220] >= 1.0)
@constraint(m, e181, b[76]+b[104]+b[138]+b[166]+b[200]+b[228] >= 1.0)
@constraint(m, e182, b[77]+b[112]+b[139]+b[174]+b[201]+b[236] >= 1.0)
@constraint(m, e183, b[78]+b[120]+b[140]+b[182]+b[202]+b[244] >= 1.0)
@constraint(m, e184, b[66]+b[79]+b[128]+b[141]+b[190]+b[203] >= 1.0)
@constraint(m, e185, b[73]+b[80]+b[135]+b[142]+b[197]+b[204] >= 1.0)
@constraint(m, e186, b[82]+b[89]+b[144]+b[151]+b[206]+b[213] >= 1.0)
@constraint(m, e187, b[83]+b[97]+b[145]+b[159]+b[207]+b[221] >= 1.0)
@constraint(m, e188, b[84]+b[105]+b[146]+b[167]+b[208]+b[229] >= 1.0)
@constraint(m, e189, b[85]+b[113]+b[147]+b[175]+b[209]+b[237] >= 1.0)
@constraint(m, e190, b[86]+b[121]+b[148]+b[183]+b[210]+b[245] >= 1.0)
@constraint(m, e191, b[67]+b[87]+b[129]+b[149]+b[191]+b[211] >= 1.0)
@constraint(m, e192, b[74]+b[88]+b[136]+b[150]+b[198]+b[212] >= 1.0)
@constraint(m, e193, b[82]+b[89]+b[144]+b[151]+b[206]+b[213] >= 1.0)
@constraint(m, e194, b[91]+b[98]+b[153]+b[160]+b[215]+b[222] >= 1.0)
@constraint(m, e195, b[92]+b[106]+b[154]+b[168]+b[216]+b[230] >= 1.0)
@constraint(m, e196, b[93]+b[114]+b[155]+b[176]+b[217]+b[238] >= 1.0)
@constraint(m, e197, b[94]+b[122]+b[156]+b[184]+b[218]+b[246] >= 1.0)
@constraint(m, e198, b[68]+b[95]+b[130]+b[157]+b[192]+b[219] >= 1.0)
@constraint(m, e199, b[75]+b[96]+b[137]+b[158]+b[199]+b[220] >= 1.0)
@constraint(m, e200, b[83]+b[97]+b[145]+b[159]+b[207]+b[221] >= 1.0)
@constraint(m, e201, b[91]+b[98]+b[153]+b[160]+b[215]+b[222] >= 1.0)
@constraint(m, e202, b[100]+b[107]+b[162]+b[169]+b[224]+b[231] >= 1.0)
@constraint(m, e203, b[101]+b[115]+b[163]+b[177]+b[225]+b[239] >= 1.0)
@constraint(m, e204, b[102]+b[123]+b[164]+b[185]+b[226]+b[247] >= 1.0)
@constraint(m, e205, b[69]+b[103]+b[131]+b[165]+b[193]+b[227] >= 1.0)
@constraint(m, e206, b[76]+b[104]+b[138]+b[166]+b[200]+b[228] >= 1.0)
@constraint(m, e207, b[84]+b[105]+b[146]+b[167]+b[208]+b[229] >= 1.0)
@constraint(m, e208, b[92]+b[106]+b[154]+b[168]+b[216]+b[230] >= 1.0)
@constraint(m, e209, b[100]+b[107]+b[162]+b[169]+b[224]+b[231] >= 1.0)
@constraint(m, e210, b[109]+b[116]+b[171]+b[178]+b[233]+b[240] >= 1.0)
@constraint(m, e211, b[110]+b[124]+b[172]+b[186]+b[234]+b[248] >= 1.0)
@constraint(m, e212, b[70]+b[111]+b[132]+b[173]+b[194]+b[235] >= 1.0)
@constraint(m, e213, b[77]+b[112]+b[139]+b[174]+b[201]+b[236] >= 1.0)
@constraint(m, e214, b[85]+b[113]+b[147]+b[175]+b[209]+b[237] >= 1.0)
@constraint(m, e215, b[93]+b[114]+b[155]+b[176]+b[217]+b[238] >= 1.0)
@constraint(m, e216, b[101]+b[115]+b[163]+b[177]+b[225]+b[239] >= 1.0)
@constraint(m, e217, b[109]+b[116]+b[171]+b[178]+b[233]+b[240] >= 1.0)
@constraint(m, e218, b[118]+b[125]+b[180]+b[187]+b[242]+b[249] >= 1.0)
@constraint(m, e219, b[71]+b[119]+b[133]+b[181]+b[195]+b[243] >= 1.0)
@constraint(m, e220, b[78]+b[120]+b[140]+b[182]+b[202]+b[244] >= 1.0)
@constraint(m, e221, b[86]+b[121]+b[148]+b[183]+b[210]+b[245] >= 1.0)
@constraint(m, e222, b[94]+b[122]+b[156]+b[184]+b[218]+b[246] >= 1.0)
@constraint(m, e223, b[102]+b[123]+b[164]+b[185]+b[226]+b[247] >= 1.0)
@constraint(m, e224, b[110]+b[124]+b[172]+b[186]+b[234]+b[248] >= 1.0)
@constraint(m, e225, b[118]+b[125]+b[180]+b[187]+b[242]+b[249] >= 1.0)
@constraint(m, e226, x[3]-x[31]+6.5125*b[35]+4.1*b[43]-4.1*b[51]+4.1*b[59] <= -0.8)
@constraint(m, e227, x[4]-x[31]+4.78*b[36]+1.78*b[44]-1.78*b[52]+1.78*b[60] <= -0.82)
@constraint(m, e228, x[5]-x[31]+5*b[37]+4.5*b[45]-4.5*b[53]+4.5*b[61] <= -1.0)
@constraint(m, e229, x[6]-x[31]+7.25*b[38]+3.9*b[46]-3.9*b[54]+3.9*b[62] <= -1.0)
@constraint(m, e230, x[7]-x[31]+5.01*b[39]+4.81*b[47]-4.81*b[55]+4.81*b[63] <= -0.39)
@constraint(m, e231, x[8]-x[31]+5.6*b[40]+3.75*b[48]-3.75*b[56]+3.75*b[64] <= -0.65)
@constraint(m, e232, x[11]-6.5125*b[35]-6.5125*b[43]+4.1*b[51] <= -2.1325)
@constraint(m, e233, x[12]-4.78*b[36]-4.78*b[44]+1.78*b[52] <= -0.42)
@constraint(m, e234, x[13]-5*b[37]-5*b[45]+4.5*b[53] <= -0.82)
@constraint(m, e235, x[14]-7.25*b[38]-7.25*b[46]+3.9*b[54] <= -3.07)
@constraint(m, e236, x[15]-5.01*b[39]-5.01*b[47]+4.81*b[55] <= -0.220000000000001)
@constraint(m, e237, x[16]-5.6*b[40]-5.6*b[48]+3.75*b[56] <= -1.07)
@constraint(m, e238, x[19]+2.4125*b[43]-4.1*b[59] <= -1.86)
@constraint(m, e239, x[20]+3*b[44]-1.78*b[60] <= 0.44)
@constraint(m, e240, x[21]+0.5*b[45]-4.5*b[61] <= -2.46)
@constraint(m, e241, x[22]+3.35*b[46]-3.9*b[62] <= -1.86)
@constraint(m, e242, x[23]+0.2*b[47]-4.81*b[63] <= -2.16)
@constraint(m, e243, x[24]+1.85*b[48]-3.75*b[64] <= -1.36)
@NLconstraint(m, e244, x[25]*b[33]+x[27]*(b[41]-b[49]+b[57])+x[29]*(1-b[33]-b[41]+b[49]-b[57])+x[1]-x[31] <= 0.0)
@NLconstraint(m, e245, x[26]*b[34]+x[28]*(b[42]-b[50]+b[58])+x[30]*(1-b[34]-b[42]+b[50]-b[58])+x[2]-x[31] <= 0.0)
@NLconstraint(m, e246, x[27]*b[49]+x[25]*(1-b[33]-b[41])+x[29]*(b[33]+b[41]-b[49])+x[9] <= 5.18)
@NLconstraint(m, e247, x[28]*b[50]+x[26]*(1-b[34]-b[42])+x[30]*(b[34]+b[42]-b[50])+x[10] <= 5.18)
@NLconstraint(m, e248, x[29]*b[57]+x[27]*(1-b[41]-b[57])+x[25]*b[41]+x[17] <= 3.04)
@NLconstraint(m, e249, x[30]*b[58]+x[28]*(1-b[42]-b[58])+x[26]*b[42]+x[18] <= 3.04)
@constraint(m, e250, b[33]+b[41] <= 1.0)
@constraint(m, e251, b[34]+b[42] <= 1.0)
@constraint(m, e252, b[35]+b[43] <= 1.0)
@constraint(m, e253, b[36]+b[44] <= 1.0)
@constraint(m, e254, b[37]+b[45] <= 1.0)
@constraint(m, e255, b[38]+b[46] <= 1.0)
@constraint(m, e256, b[39]+b[47] <= 1.0)
@constraint(m, e257, b[40]+b[48] <= 1.0)
@constraint(m, e258, b[41]+b[57] <= 1.0)
@constraint(m, e259, b[42]+b[58] <= 1.0)
@constraint(m, e260, b[43]+b[59] <= 1.0)
@constraint(m, e261, b[44]+b[60] <= 1.0)
@constraint(m, e262, b[45]+b[61] <= 1.0)
@constraint(m, e263, b[46]+b[62] <= 1.0)
@constraint(m, e264, b[47]+b[63] <= 1.0)
@constraint(m, e265, b[48]+b[64] <= 1.0)
@constraint(m, e266, b[41]-b[49]+b[57] <= 1.0)
@constraint(m, e267, b[42]-b[50]+b[58] <= 1.0)
@constraint(m, e268, b[43]-b[51]+b[59] <= 1.0)
@constraint(m, e269, b[44]-b[52]+b[60] <= 1.0)
@constraint(m, e270, b[45]-b[53]+b[61] <= 1.0)
@constraint(m, e271, b[46]-b[54]+b[62] <= 1.0)
@constraint(m, e272, b[47]-b[55]+b[63] <= 1.0)
@constraint(m, e273, b[48]-b[56]+b[64] <= 1.0)
@constraint(m, e274, b[41]-b[49]+b[57] >= 0.0)
@constraint(m, e275, b[42]-b[50]+b[58] >= 0.0)
@constraint(m, e276, b[43]-b[51]+b[59] >= 0.0)
@constraint(m, e277, b[44]-b[52]+b[60] >= 0.0)
@constraint(m, e278, b[45]-b[53]+b[61] >= 0.0)
@constraint(m, e279, b[46]-b[54]+b[62] >= 0.0)
@constraint(m, e280, b[47]-b[55]+b[63] >= 0.0)
@constraint(m, e281, b[48]-b[56]+b[64] >= 0.0)
@constraint(m, e282, -b[33]-b[41]+b[49]-b[57] <= 0.0)
@constraint(m, e283, -b[34]-b[42]+b[50]-b[58] <= 0.0)
@constraint(m, e284, -b[35]-b[43]+b[51]-b[59] <= 0.0)
@constraint(m, e285, -b[36]-b[44]+b[52]-b[60] <= 0.0)
@constraint(m, e286, -b[37]-b[45]+b[53]-b[61] <= 0.0)
@constraint(m, e287, -b[38]-b[46]+b[54]-b[62] <= 0.0)
@constraint(m, e288, -b[39]-b[47]+b[55]-b[63] <= 0.0)
@constraint(m, e289, -b[40]-b[48]+b[56]-b[64] <= 0.0)
@constraint(m, e290, -b[33]-b[41]+b[49]-b[57] >= -1.0)
@constraint(m, e291, -b[34]-b[42]+b[50]-b[58] >= -1.0)
@constraint(m, e292, -b[35]-b[43]+b[51]-b[59] >= -1.0)
@constraint(m, e293, -b[36]-b[44]+b[52]-b[60] >= -1.0)
@constraint(m, e294, -b[37]-b[45]+b[53]-b[61] >= -1.0)
@constraint(m, e295, -b[38]-b[46]+b[54]-b[62] >= -1.0)
@constraint(m, e296, -b[39]-b[47]+b[55]-b[63] >= -1.0)
@constraint(m, e297, -b[40]-b[48]+b[56]-b[64] >= -1.0)
@constraint(m, e298, b[33]+b[41]-b[49] <= 1.0)
@constraint(m, e299, b[34]+b[42]-b[50] <= 1.0)
@constraint(m, e300, b[35]+b[43]-b[51] <= 1.0)
@constraint(m, e301, b[36]+b[44]-b[52] <= 1.0)
@constraint(m, e302, b[37]+b[45]-b[53] <= 1.0)
@constraint(m, e303, b[38]+b[46]-b[54] <= 1.0)
@constraint(m, e304, b[39]+b[47]-b[55] <= 1.0)
@constraint(m, e305, b[40]+b[48]-b[56] <= 1.0)
@constraint(m, e306, b[33]+b[41]-b[49] >= 0.0)
@constraint(m, e307, b[34]+b[42]-b[50] >= 0.0)
@constraint(m, e308, b[35]+b[43]-b[51] >= 0.0)
@constraint(m, e309, b[36]+b[44]-b[52] >= 0.0)
@constraint(m, e310, b[37]+b[45]-b[53] >= 0.0)
@constraint(m, e311, b[38]+b[46]-b[54] >= 0.0)
@constraint(m, e312, b[39]+b[47]-b[55] >= 0.0)
@constraint(m, e313, b[40]+b[48]-b[56] >= 0.0)
@constraint(m, e314, x[25]-190*b[251] >= -184.25)
@constraint(m, e315, x[25]-190*b[252] >= -185.75)
@constraint(m, e316, x[25]-190*b[253] >= -186.5)
@constraint(m, e317, x[26]-190*b[254] >= -185.0)
@constraint(m, e318, x[26]-190*b[255] >= -187.625)
@constraint(m, e319, x[26]-190*b[256] >= -182.0)
@constraint(m, e320, x[25]+190*b[251] <= 195.75)
@constraint(m, e321, x[25]+190*b[252] <= 194.25)
@constraint(m, e322, x[25]+190*b[253] <= 193.5)
@constraint(m, e323, x[26]+190*b[254] <= 195.0)
@constraint(m, e324, x[26]+190*b[255] <= 192.375)
@constraint(m, e325, x[26]+190*b[256] <= 198.0)
@constraint(m, e326, x[27]-190*b[251] >= -187.75)
@constraint(m, e327, x[27]-190*b[252] >= -187.875)
@constraint(m, e328, x[27]-190*b[253] >= -188.75)
@constraint(m, e329, x[28]-190*b[254] >= -185.875)
@constraint(m, e330, x[28]-190*b[255] >= -185.75)
@constraint(m, e331, x[28]-190*b[256] >= -184.5)
@constraint(m, e332, x[27]+190*b[251] <= 192.25)
@constraint(m, e333, x[27]+190*b[252] <= 192.125)
@constraint(m, e334, x[27]+190*b[253] <= 191.25)
@constraint(m, e335, x[28]+190*b[254] <= 194.125)
@constraint(m, e336, x[28]+190*b[255] <= 194.25)
@constraint(m, e337, x[28]+190*b[256] <= 195.5)
@constraint(m, e338, x[29]-190*b[251] >= -189.625)
@constraint(m, e339, x[29]-190*b[252] >= -189.125)
@constraint(m, e340, x[29]-190*b[253] >= -188.875)
@constraint(m, e341, x[30]-190*b[254] >= -189.75)
@constraint(m, e342, x[30]-190*b[255] >= -189.625)
@constraint(m, e343, x[30]-190*b[256] >= -188.7)
@constraint(m, e344, x[29]+190*b[251] <= 190.375)
@constraint(m, e345, x[29]+190*b[252] <= 190.875)
@constraint(m, e346, x[29]+190*b[253] <= 191.125)
@constraint(m, e347, x[30]+190*b[254] <= 190.25)
@constraint(m, e348, x[30]+190*b[255] <= 190.375)
@constraint(m, e349, x[30]+190*b[256] <= 191.3)
@constraint(m, e350, b[251]+b[252]+b[253] == 1.0)
@constraint(m, e351, b[254]+b[255]+b[256] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[32])

m = m 		 # model get returned when including this script. 
