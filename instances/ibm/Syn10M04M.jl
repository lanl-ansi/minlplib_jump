using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221]
@variable(m, x[x_Idx])
b_Idx = Any[102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[62], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[48], 0.0)
setupperbound(x[2], 40.0)
setupperbound(x[3], 40.0)
setupperbound(x[4], 40.0)
setupperbound(x[5], 40.0)
setupperbound(x[46], 30.0)
setupperbound(x[47], 30.0)
setupperbound(x[48], 30.0)
setupperbound(x[49], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5]-5*x[26]-10*x[27]-5*x[28]-10*x[29]+2*x[46]+x[47]+2*x[48]+x[49]-80*x[78]-90*x[79]-120*x[80]-100*x[81]-285*x[82]-390*x[83]-350*x[84]-300*x[85]-290*x[86]-405*x[87]-190*x[88]-340*x[89]-280*x[90]-400*x[91]-430*x[92]-260*x[93]-290*x[94]-300*x[95]-240*x[96]-310*x[97]-350*x[98]-250*x[99]-300*x[100]-400*x[101]+5*b[142]+4*b[143]+6*b[144]+3*b[145]+8*b[146]+7*b[147]+6*b[148]+5*b[149]+6*b[150]+9*b[151]+4*b[152]+3*b[153]+10*b[154]+9*b[155]+5*b[156]+6*b[157]+6*b[158]+10*b[159]+6*b[160]+9*b[161]+7*b[162]+7*b[163]+4*b[164]+2*b[165]+4*b[166]+3*b[167]+2*b[168]+8*b[169]+5*b[170]+6*b[171]+7*b[172]+4*b[173]+2*b[174]+5*b[175]+2*b[176]+6*b[177]+4*b[178]+7*b[179]+4*b[180]+7*b[181] == 0.0)
@constraint(m, e2, x[2]-x[6]-x[10] == 0.0)
@constraint(m, e3, x[3]-x[7]-x[11] == 0.0)
@constraint(m, e4, x[4]-x[8]-x[12] == 0.0)
@constraint(m, e5, x[5]-x[9]-x[13] == 0.0)
@constraint(m, e6, -x[14]-x[18]+x[22] == 0.0)
@constraint(m, e7, -x[15]-x[19]+x[23] == 0.0)
@constraint(m, e8, -x[16]-x[20]+x[24] == 0.0)
@constraint(m, e9, -x[17]-x[21]+x[25] == 0.0)
@constraint(m, e10, x[22]-x[26]-x[30] == 0.0)
@constraint(m, e11, x[23]-x[27]-x[31] == 0.0)
@constraint(m, e12, x[24]-x[28]-x[32] == 0.0)
@constraint(m, e13, x[25]-x[29]-x[33] == 0.0)
@constraint(m, e14, x[30]-x[34]-x[38]-x[42] == 0.0)
@constraint(m, e15, x[31]-x[35]-x[39]-x[43] == 0.0)
@constraint(m, e16, x[32]-x[36]-x[40]-x[44] == 0.0)
@constraint(m, e17, x[33]-x[37]-x[41]-x[45] == 0.0)
@constraint(m, e18, x[50]-x[62]-x[66] == 0.0)
@constraint(m, e19, x[51]-x[63]-x[67] == 0.0)
@constraint(m, e20, x[52]-x[64]-x[68] == 0.0)
@constraint(m, e21, x[53]-x[65]-x[69] == 0.0)
@constraint(m, e22, x[58]-x[70]-x[74]-x[78] == 0.0)
@constraint(m, e23, x[59]-x[71]-x[75]-x[79] == 0.0)
@constraint(m, e24, x[60]-x[72]-x[76]-x[80] == 0.0)
@constraint(m, e25, x[61]-x[73]-x[77]-x[81] == 0.0)
@NLconstraint(m, e26, -log(1+x[6])+x[14]+b[102] <= 1.0)
@NLconstraint(m, e27, -log(1+x[7])+x[15]+b[103] <= 1.0)
@NLconstraint(m, e28, -log(1+x[8])+x[16]+b[104] <= 1.0)
@NLconstraint(m, e29, -log(1+x[9])+x[17]+b[105] <= 1.0)
@constraint(m, e30, x[6]-40*b[102] <= 0.0)
@constraint(m, e31, x[7]-40*b[103] <= 0.0)
@constraint(m, e32, x[8]-40*b[104] <= 0.0)
@constraint(m, e33, x[9]-40*b[105] <= 0.0)
@constraint(m, e34, x[14]-3.71357206670431*b[102] <= 0.0)
@constraint(m, e35, x[15]-3.71357206670431*b[103] <= 0.0)
@constraint(m, e36, x[16]-3.71357206670431*b[104] <= 0.0)
@constraint(m, e37, x[17]-3.71357206670431*b[105] <= 0.0)
@NLconstraint(m, e38, -1.2*log(1+x[10])+x[18]+b[106] <= 1.0)
@NLconstraint(m, e39, -1.2*log(1+x[11])+x[19]+b[107] <= 1.0)
@NLconstraint(m, e40, -1.2*log(1+x[12])+x[20]+b[108] <= 1.0)
@NLconstraint(m, e41, -1.2*log(1+x[13])+x[21]+b[109] <= 1.0)
@constraint(m, e42, x[10]-40*b[106] <= 0.0)
@constraint(m, e43, x[11]-40*b[107] <= 0.0)
@constraint(m, e44, x[12]-40*b[108] <= 0.0)
@constraint(m, e45, x[13]-40*b[109] <= 0.0)
@constraint(m, e46, x[18]-4.45628648004517*b[106] <= 0.0)
@constraint(m, e47, x[19]-4.45628648004517*b[107] <= 0.0)
@constraint(m, e48, x[20]-4.45628648004517*b[108] <= 0.0)
@constraint(m, e49, x[21]-4.45628648004517*b[109] <= 0.0)
@constraint(m, e50, -0.75*x[34]+x[50]+b[110] <= 1.0)
@constraint(m, e51, -0.75*x[35]+x[51]+b[111] <= 1.0)
@constraint(m, e52, -0.75*x[36]+x[52]+b[112] <= 1.0)
@constraint(m, e53, -0.75*x[37]+x[53]+b[113] <= 1.0)
@constraint(m, e54, -0.75*x[34]+x[50]-b[110] >= -1.0)
@constraint(m, e55, -0.75*x[35]+x[51]-b[111] >= -1.0)
@constraint(m, e56, -0.75*x[36]+x[52]-b[112] >= -1.0)
@constraint(m, e57, -0.75*x[37]+x[53]-b[113] >= -1.0)
@constraint(m, e58, x[34]-4.45628648004517*b[110] <= 0.0)
@constraint(m, e59, x[35]-4.45628648004517*b[111] <= 0.0)
@constraint(m, e60, x[36]-4.45628648004517*b[112] <= 0.0)
@constraint(m, e61, x[37]-4.45628648004517*b[113] <= 0.0)
@constraint(m, e62, x[50]-3.34221486003388*b[110] <= 0.0)
@constraint(m, e63, x[51]-3.34221486003388*b[111] <= 0.0)
@constraint(m, e64, x[52]-3.34221486003388*b[112] <= 0.0)
@constraint(m, e65, x[53]-3.34221486003388*b[113] <= 0.0)
@NLconstraint(m, e66, -1.5*log(1+x[38])+x[54]+b[114] <= 1.0)
@NLconstraint(m, e67, -1.5*log(1+x[39])+x[55]+b[115] <= 1.0)
@NLconstraint(m, e68, -1.5*log(1+x[40])+x[56]+b[116] <= 1.0)
@NLconstraint(m, e69, -1.5*log(1+x[41])+x[57]+b[117] <= 1.0)
@constraint(m, e70, x[38]-4.45628648004517*b[114] <= 0.0)
@constraint(m, e71, x[39]-4.45628648004517*b[115] <= 0.0)
@constraint(m, e72, x[40]-4.45628648004517*b[116] <= 0.0)
@constraint(m, e73, x[41]-4.45628648004517*b[117] <= 0.0)
@constraint(m, e74, x[54]-2.54515263975353*b[114] <= 0.0)
@constraint(m, e75, x[55]-2.54515263975353*b[115] <= 0.0)
@constraint(m, e76, x[56]-2.54515263975353*b[116] <= 0.0)
@constraint(m, e77, x[57]-2.54515263975353*b[117] <= 0.0)
@constraint(m, e78, -x[42]+x[58]+b[118] <= 1.0)
@constraint(m, e79, -x[43]+x[59]+b[119] <= 1.0)
@constraint(m, e80, -x[44]+x[60]+b[120] <= 1.0)
@constraint(m, e81, -x[45]+x[61]+b[121] <= 1.0)
@constraint(m, e82, -x[42]+x[58]-b[118] >= -1.0)
@constraint(m, e83, -x[43]+x[59]-b[119] >= -1.0)
@constraint(m, e84, -x[44]+x[60]-b[120] >= -1.0)
@constraint(m, e85, -x[45]+x[61]-b[121] >= -1.0)
@constraint(m, e86, -0.5*x[46]+x[58]+b[118] <= 1.0)
@constraint(m, e87, -0.5*x[47]+x[59]+b[119] <= 1.0)
@constraint(m, e88, -0.5*x[48]+x[60]+b[120] <= 1.0)
@constraint(m, e89, -0.5*x[49]+x[61]+b[121] <= 1.0)
@constraint(m, e90, -0.5*x[46]+x[58]-b[118] >= -1.0)
@constraint(m, e91, -0.5*x[47]+x[59]-b[119] >= -1.0)
@constraint(m, e92, -0.5*x[48]+x[60]-b[120] >= -1.0)
@constraint(m, e93, -0.5*x[49]+x[61]-b[121] >= -1.0)
@constraint(m, e94, x[42]-4.45628648004517*b[118] <= 0.0)
@constraint(m, e95, x[43]-4.45628648004517*b[119] <= 0.0)
@constraint(m, e96, x[44]-4.45628648004517*b[120] <= 0.0)
@constraint(m, e97, x[45]-4.45628648004517*b[121] <= 0.0)
@constraint(m, e98, x[46]-30*b[118] <= 0.0)
@constraint(m, e99, x[47]-30*b[119] <= 0.0)
@constraint(m, e100, x[48]-30*b[120] <= 0.0)
@constraint(m, e101, x[49]-30*b[121] <= 0.0)
@constraint(m, e102, x[58]-15*b[118] <= 0.0)
@constraint(m, e103, x[59]-15*b[119] <= 0.0)
@constraint(m, e104, x[60]-15*b[120] <= 0.0)
@constraint(m, e105, x[61]-15*b[121] <= 0.0)
@NLconstraint(m, e106, -1.25*log(1+x[62])+x[82]+b[122] <= 1.0)
@NLconstraint(m, e107, -1.25*log(1+x[63])+x[83]+b[123] <= 1.0)
@NLconstraint(m, e108, -1.25*log(1+x[64])+x[84]+b[124] <= 1.0)
@NLconstraint(m, e109, -1.25*log(1+x[65])+x[85]+b[125] <= 1.0)
@constraint(m, e110, x[62]-3.34221486003388*b[122] <= 0.0)
@constraint(m, e111, x[63]-3.34221486003388*b[123] <= 0.0)
@constraint(m, e112, x[64]-3.34221486003388*b[124] <= 0.0)
@constraint(m, e113, x[65]-3.34221486003388*b[125] <= 0.0)
@constraint(m, e114, x[82]-1.83548069293539*b[122] <= 0.0)
@constraint(m, e115, x[83]-1.83548069293539*b[123] <= 0.0)
@constraint(m, e116, x[84]-1.83548069293539*b[124] <= 0.0)
@constraint(m, e117, x[85]-1.83548069293539*b[125] <= 0.0)
@NLconstraint(m, e118, -0.9*log(1+x[66])+x[86]+b[126] <= 1.0)
@NLconstraint(m, e119, -0.9*log(1+x[67])+x[87]+b[127] <= 1.0)
@NLconstraint(m, e120, -0.9*log(1+x[68])+x[88]+b[128] <= 1.0)
@NLconstraint(m, e121, -0.9*log(1+x[69])+x[89]+b[129] <= 1.0)
@constraint(m, e122, x[66]-3.34221486003388*b[126] <= 0.0)
@constraint(m, e123, x[67]-3.34221486003388*b[127] <= 0.0)
@constraint(m, e124, x[68]-3.34221486003388*b[128] <= 0.0)
@constraint(m, e125, x[69]-3.34221486003388*b[129] <= 0.0)
@constraint(m, e126, x[86]-1.32154609891348*b[126] <= 0.0)
@constraint(m, e127, x[87]-1.32154609891348*b[127] <= 0.0)
@constraint(m, e128, x[88]-1.32154609891348*b[128] <= 0.0)
@constraint(m, e129, x[89]-1.32154609891348*b[129] <= 0.0)
@NLconstraint(m, e130, -log(1+x[54])+x[90]+b[130] <= 1.0)
@NLconstraint(m, e131, -log(1+x[55])+x[91]+b[131] <= 1.0)
@NLconstraint(m, e132, -log(1+x[56])+x[92]+b[132] <= 1.0)
@NLconstraint(m, e133, -log(1+x[57])+x[93]+b[133] <= 1.0)
@constraint(m, e134, x[54]-2.54515263975353*b[130] <= 0.0)
@constraint(m, e135, x[55]-2.54515263975353*b[131] <= 0.0)
@constraint(m, e136, x[56]-2.54515263975353*b[132] <= 0.0)
@constraint(m, e137, x[57]-2.54515263975353*b[133] <= 0.0)
@constraint(m, e138, x[90]-1.26558121681553*b[130] <= 0.0)
@constraint(m, e139, x[91]-1.26558121681553*b[131] <= 0.0)
@constraint(m, e140, x[92]-1.26558121681553*b[132] <= 0.0)
@constraint(m, e141, x[93]-1.26558121681553*b[133] <= 0.0)
@constraint(m, e142, -0.9*x[70]+x[94]+b[134] <= 1.0)
@constraint(m, e143, -0.9*x[71]+x[95]+b[135] <= 1.0)
@constraint(m, e144, -0.9*x[72]+x[96]+b[136] <= 1.0)
@constraint(m, e145, -0.9*x[73]+x[97]+b[137] <= 1.0)
@constraint(m, e146, -0.9*x[70]+x[94]-b[134] >= -1.0)
@constraint(m, e147, -0.9*x[71]+x[95]-b[135] >= -1.0)
@constraint(m, e148, -0.9*x[72]+x[96]-b[136] >= -1.0)
@constraint(m, e149, -0.9*x[73]+x[97]-b[137] >= -1.0)
@constraint(m, e150, x[70]-15*b[134] <= 0.0)
@constraint(m, e151, x[71]-15*b[135] <= 0.0)
@constraint(m, e152, x[72]-15*b[136] <= 0.0)
@constraint(m, e153, x[73]-15*b[137] <= 0.0)
@constraint(m, e154, x[94]-13.5*b[134] <= 0.0)
@constraint(m, e155, x[95]-13.5*b[135] <= 0.0)
@constraint(m, e156, x[96]-13.5*b[136] <= 0.0)
@constraint(m, e157, x[97]-13.5*b[137] <= 0.0)
@constraint(m, e158, -0.6*x[74]+x[98]+b[138] <= 1.0)
@constraint(m, e159, -0.6*x[75]+x[99]+b[139] <= 1.0)
@constraint(m, e160, -0.6*x[76]+x[100]+b[140] <= 1.0)
@constraint(m, e161, -0.6*x[77]+x[101]+b[141] <= 1.0)
@constraint(m, e162, -0.6*x[74]+x[98]-b[138] >= -1.0)
@constraint(m, e163, -0.6*x[75]+x[99]-b[139] >= -1.0)
@constraint(m, e164, -0.6*x[76]+x[100]-b[140] >= -1.0)
@constraint(m, e165, -0.6*x[77]+x[101]-b[141] >= -1.0)
@constraint(m, e166, x[74]-15*b[138] <= 0.0)
@constraint(m, e167, x[75]-15*b[139] <= 0.0)
@constraint(m, e168, x[76]-15*b[140] <= 0.0)
@constraint(m, e169, x[77]-15*b[141] <= 0.0)
@constraint(m, e170, x[98]-9*b[138] <= 0.0)
@constraint(m, e171, x[99]-9*b[139] <= 0.0)
@constraint(m, e172, x[100]-9*b[140] <= 0.0)
@constraint(m, e173, x[101]-9*b[141] <= 0.0)
@constraint(m, e174, 5*b[142]+x[182] <= 0.0)
@constraint(m, e175, 4*b[143]+x[183] <= 0.0)
@constraint(m, e176, 6*b[144]+x[184] <= 0.0)
@constraint(m, e177, 3*b[145]+x[185] <= 0.0)
@constraint(m, e178, 8*b[146]+x[186] <= 0.0)
@constraint(m, e179, 7*b[147]+x[187] <= 0.0)
@constraint(m, e180, 6*b[148]+x[188] <= 0.0)
@constraint(m, e181, 5*b[149]+x[189] <= 0.0)
@constraint(m, e182, 6*b[150]+x[190] <= 0.0)
@constraint(m, e183, 9*b[151]+x[191] <= 0.0)
@constraint(m, e184, 4*b[152]+x[192] <= 0.0)
@constraint(m, e185, 3*b[153]+x[193] <= 0.0)
@constraint(m, e186, 10*b[154]+x[194] <= 0.0)
@constraint(m, e187, 9*b[155]+x[195] <= 0.0)
@constraint(m, e188, 5*b[156]+x[196] <= 0.0)
@constraint(m, e189, 6*b[157]+x[197] <= 0.0)
@constraint(m, e190, 6*b[158]+x[198] <= 0.0)
@constraint(m, e191, 10*b[159]+x[199] <= 0.0)
@constraint(m, e192, 6*b[160]+x[200] <= 0.0)
@constraint(m, e193, 9*b[161]+x[201] <= 0.0)
@constraint(m, e194, 7*b[162]+x[202] <= 0.0)
@constraint(m, e195, 7*b[163]+x[203] <= 0.0)
@constraint(m, e196, 4*b[164]+x[204] <= 0.0)
@constraint(m, e197, 2*b[165]+x[205] <= 0.0)
@constraint(m, e198, 4*b[166]+x[206] <= 0.0)
@constraint(m, e199, 3*b[167]+x[207] <= 0.0)
@constraint(m, e200, 2*b[168]+x[208] <= 0.0)
@constraint(m, e201, 8*b[169]+x[209] <= 0.0)
@constraint(m, e202, 5*b[170]+x[210] <= 0.0)
@constraint(m, e203, 6*b[171]+x[211] <= 0.0)
@constraint(m, e204, 7*b[172]+x[212] <= 0.0)
@constraint(m, e205, 4*b[173]+x[213] <= 0.0)
@constraint(m, e206, 2*b[174]+x[214] <= 0.0)
@constraint(m, e207, 5*b[175]+x[215] <= 0.0)
@constraint(m, e208, 2*b[176]+x[216] <= 0.0)
@constraint(m, e209, 6*b[177]+x[217] <= 0.0)
@constraint(m, e210, 4*b[178]+x[218] <= 0.0)
@constraint(m, e211, 7*b[179]+x[219] <= 0.0)
@constraint(m, e212, 4*b[180]+x[220] <= 0.0)
@constraint(m, e213, 7*b[181]+x[221] <= 0.0)
@constraint(m, e214, 5*b[142]+x[182] >= 0.0)
@constraint(m, e215, 4*b[143]+x[183] >= 0.0)
@constraint(m, e216, 6*b[144]+x[184] >= 0.0)
@constraint(m, e217, 3*b[145]+x[185] >= 0.0)
@constraint(m, e218, 8*b[146]+x[186] >= 0.0)
@constraint(m, e219, 7*b[147]+x[187] >= 0.0)
@constraint(m, e220, 6*b[148]+x[188] >= 0.0)
@constraint(m, e221, 5*b[149]+x[189] >= 0.0)
@constraint(m, e222, 6*b[150]+x[190] >= 0.0)
@constraint(m, e223, 9*b[151]+x[191] >= 0.0)
@constraint(m, e224, 4*b[152]+x[192] >= 0.0)
@constraint(m, e225, 3*b[153]+x[193] >= 0.0)
@constraint(m, e226, 10*b[154]+x[194] >= 0.0)
@constraint(m, e227, 9*b[155]+x[195] >= 0.0)
@constraint(m, e228, 5*b[156]+x[196] >= 0.0)
@constraint(m, e229, 6*b[157]+x[197] >= 0.0)
@constraint(m, e230, 6*b[158]+x[198] >= 0.0)
@constraint(m, e231, 10*b[159]+x[199] >= 0.0)
@constraint(m, e232, 6*b[160]+x[200] >= 0.0)
@constraint(m, e233, 9*b[161]+x[201] >= 0.0)
@constraint(m, e234, 7*b[162]+x[202] >= 0.0)
@constraint(m, e235, 7*b[163]+x[203] >= 0.0)
@constraint(m, e236, 4*b[164]+x[204] >= 0.0)
@constraint(m, e237, 2*b[165]+x[205] >= 0.0)
@constraint(m, e238, 4*b[166]+x[206] >= 0.0)
@constraint(m, e239, 3*b[167]+x[207] >= 0.0)
@constraint(m, e240, 2*b[168]+x[208] >= 0.0)
@constraint(m, e241, 8*b[169]+x[209] >= 0.0)
@constraint(m, e242, 5*b[170]+x[210] >= 0.0)
@constraint(m, e243, 6*b[171]+x[211] >= 0.0)
@constraint(m, e244, 7*b[172]+x[212] >= 0.0)
@constraint(m, e245, 4*b[173]+x[213] >= 0.0)
@constraint(m, e246, 2*b[174]+x[214] >= 0.0)
@constraint(m, e247, 5*b[175]+x[215] >= 0.0)
@constraint(m, e248, 2*b[176]+x[216] >= 0.0)
@constraint(m, e249, 6*b[177]+x[217] >= 0.0)
@constraint(m, e250, 4*b[178]+x[218] >= 0.0)
@constraint(m, e251, 7*b[179]+x[219] >= 0.0)
@constraint(m, e252, 4*b[180]+x[220] >= 0.0)
@constraint(m, e253, 7*b[181]+x[221] >= 0.0)
@constraint(m, e254, b[102]-b[103] <= 0.0)
@constraint(m, e255, b[102]-b[104] <= 0.0)
@constraint(m, e256, b[102]-b[105] <= 0.0)
@constraint(m, e257, b[103]-b[104] <= 0.0)
@constraint(m, e258, b[103]-b[105] <= 0.0)
@constraint(m, e259, b[104]-b[105] <= 0.0)
@constraint(m, e260, b[106]-b[107] <= 0.0)
@constraint(m, e261, b[106]-b[108] <= 0.0)
@constraint(m, e262, b[106]-b[109] <= 0.0)
@constraint(m, e263, b[107]-b[108] <= 0.0)
@constraint(m, e264, b[107]-b[109] <= 0.0)
@constraint(m, e265, b[108]-b[109] <= 0.0)
@constraint(m, e266, b[110]-b[111] <= 0.0)
@constraint(m, e267, b[110]-b[112] <= 0.0)
@constraint(m, e268, b[110]-b[113] <= 0.0)
@constraint(m, e269, b[111]-b[112] <= 0.0)
@constraint(m, e270, b[111]-b[113] <= 0.0)
@constraint(m, e271, b[112]-b[113] <= 0.0)
@constraint(m, e272, b[114]-b[115] <= 0.0)
@constraint(m, e273, b[114]-b[116] <= 0.0)
@constraint(m, e274, b[114]-b[117] <= 0.0)
@constraint(m, e275, b[115]-b[116] <= 0.0)
@constraint(m, e276, b[115]-b[117] <= 0.0)
@constraint(m, e277, b[116]-b[117] <= 0.0)
@constraint(m, e278, b[118]-b[119] <= 0.0)
@constraint(m, e279, b[118]-b[120] <= 0.0)
@constraint(m, e280, b[118]-b[121] <= 0.0)
@constraint(m, e281, b[119]-b[120] <= 0.0)
@constraint(m, e282, b[119]-b[121] <= 0.0)
@constraint(m, e283, b[120]-b[121] <= 0.0)
@constraint(m, e284, b[122]-b[123] <= 0.0)
@constraint(m, e285, b[122]-b[124] <= 0.0)
@constraint(m, e286, b[122]-b[125] <= 0.0)
@constraint(m, e287, b[123]-b[124] <= 0.0)
@constraint(m, e288, b[123]-b[125] <= 0.0)
@constraint(m, e289, b[124]-b[125] <= 0.0)
@constraint(m, e290, b[126]-b[127] <= 0.0)
@constraint(m, e291, b[126]-b[128] <= 0.0)
@constraint(m, e292, b[126]-b[129] <= 0.0)
@constraint(m, e293, b[127]-b[128] <= 0.0)
@constraint(m, e294, b[127]-b[129] <= 0.0)
@constraint(m, e295, b[128]-b[129] <= 0.0)
@constraint(m, e296, b[130]-b[131] <= 0.0)
@constraint(m, e297, b[130]-b[132] <= 0.0)
@constraint(m, e298, b[130]-b[133] <= 0.0)
@constraint(m, e299, b[131]-b[132] <= 0.0)
@constraint(m, e300, b[131]-b[133] <= 0.0)
@constraint(m, e301, b[132]-b[133] <= 0.0)
@constraint(m, e302, b[134]-b[135] <= 0.0)
@constraint(m, e303, b[134]-b[136] <= 0.0)
@constraint(m, e304, b[134]-b[137] <= 0.0)
@constraint(m, e305, b[135]-b[136] <= 0.0)
@constraint(m, e306, b[135]-b[137] <= 0.0)
@constraint(m, e307, b[136]-b[137] <= 0.0)
@constraint(m, e308, b[138]-b[139] <= 0.0)
@constraint(m, e309, b[138]-b[140] <= 0.0)
@constraint(m, e310, b[138]-b[141] <= 0.0)
@constraint(m, e311, b[139]-b[140] <= 0.0)
@constraint(m, e312, b[139]-b[141] <= 0.0)
@constraint(m, e313, b[140]-b[141] <= 0.0)
@constraint(m, e314, b[142]+b[143] <= 1.0)
@constraint(m, e315, b[142]+b[144] <= 1.0)
@constraint(m, e316, b[142]+b[145] <= 1.0)
@constraint(m, e317, b[142]+b[143] <= 1.0)
@constraint(m, e318, b[143]+b[144] <= 1.0)
@constraint(m, e319, b[143]+b[145] <= 1.0)
@constraint(m, e320, b[142]+b[144] <= 1.0)
@constraint(m, e321, b[143]+b[144] <= 1.0)
@constraint(m, e322, b[144]+b[145] <= 1.0)
@constraint(m, e323, b[142]+b[145] <= 1.0)
@constraint(m, e324, b[143]+b[145] <= 1.0)
@constraint(m, e325, b[144]+b[145] <= 1.0)
@constraint(m, e326, b[146]+b[147] <= 1.0)
@constraint(m, e327, b[146]+b[148] <= 1.0)
@constraint(m, e328, b[146]+b[149] <= 1.0)
@constraint(m, e329, b[146]+b[147] <= 1.0)
@constraint(m, e330, b[147]+b[148] <= 1.0)
@constraint(m, e331, b[147]+b[149] <= 1.0)
@constraint(m, e332, b[146]+b[148] <= 1.0)
@constraint(m, e333, b[147]+b[148] <= 1.0)
@constraint(m, e334, b[148]+b[149] <= 1.0)
@constraint(m, e335, b[146]+b[149] <= 1.0)
@constraint(m, e336, b[147]+b[149] <= 1.0)
@constraint(m, e337, b[148]+b[149] <= 1.0)
@constraint(m, e338, b[150]+b[151] <= 1.0)
@constraint(m, e339, b[150]+b[152] <= 1.0)
@constraint(m, e340, b[150]+b[153] <= 1.0)
@constraint(m, e341, b[150]+b[151] <= 1.0)
@constraint(m, e342, b[151]+b[152] <= 1.0)
@constraint(m, e343, b[151]+b[153] <= 1.0)
@constraint(m, e344, b[150]+b[152] <= 1.0)
@constraint(m, e345, b[151]+b[152] <= 1.0)
@constraint(m, e346, b[152]+b[153] <= 1.0)
@constraint(m, e347, b[150]+b[153] <= 1.0)
@constraint(m, e348, b[151]+b[153] <= 1.0)
@constraint(m, e349, b[152]+b[153] <= 1.0)
@constraint(m, e350, b[154]+b[155] <= 1.0)
@constraint(m, e351, b[154]+b[156] <= 1.0)
@constraint(m, e352, b[154]+b[157] <= 1.0)
@constraint(m, e353, b[154]+b[155] <= 1.0)
@constraint(m, e354, b[155]+b[156] <= 1.0)
@constraint(m, e355, b[155]+b[157] <= 1.0)
@constraint(m, e356, b[154]+b[156] <= 1.0)
@constraint(m, e357, b[155]+b[156] <= 1.0)
@constraint(m, e358, b[156]+b[157] <= 1.0)
@constraint(m, e359, b[154]+b[157] <= 1.0)
@constraint(m, e360, b[155]+b[157] <= 1.0)
@constraint(m, e361, b[156]+b[157] <= 1.0)
@constraint(m, e362, b[158]+b[159] <= 1.0)
@constraint(m, e363, b[158]+b[160] <= 1.0)
@constraint(m, e364, b[158]+b[161] <= 1.0)
@constraint(m, e365, b[158]+b[159] <= 1.0)
@constraint(m, e366, b[159]+b[160] <= 1.0)
@constraint(m, e367, b[159]+b[161] <= 1.0)
@constraint(m, e368, b[158]+b[160] <= 1.0)
@constraint(m, e369, b[159]+b[160] <= 1.0)
@constraint(m, e370, b[160]+b[161] <= 1.0)
@constraint(m, e371, b[158]+b[161] <= 1.0)
@constraint(m, e372, b[159]+b[161] <= 1.0)
@constraint(m, e373, b[160]+b[161] <= 1.0)
@constraint(m, e374, b[162]+b[163] <= 1.0)
@constraint(m, e375, b[162]+b[164] <= 1.0)
@constraint(m, e376, b[162]+b[165] <= 1.0)
@constraint(m, e377, b[162]+b[163] <= 1.0)
@constraint(m, e378, b[163]+b[164] <= 1.0)
@constraint(m, e379, b[163]+b[165] <= 1.0)
@constraint(m, e380, b[162]+b[164] <= 1.0)
@constraint(m, e381, b[163]+b[164] <= 1.0)
@constraint(m, e382, b[164]+b[165] <= 1.0)
@constraint(m, e383, b[162]+b[165] <= 1.0)
@constraint(m, e384, b[163]+b[165] <= 1.0)
@constraint(m, e385, b[164]+b[165] <= 1.0)
@constraint(m, e386, b[166]+b[167] <= 1.0)
@constraint(m, e387, b[166]+b[168] <= 1.0)
@constraint(m, e388, b[166]+b[169] <= 1.0)
@constraint(m, e389, b[166]+b[167] <= 1.0)
@constraint(m, e390, b[167]+b[168] <= 1.0)
@constraint(m, e391, b[167]+b[169] <= 1.0)
@constraint(m, e392, b[166]+b[168] <= 1.0)
@constraint(m, e393, b[167]+b[168] <= 1.0)
@constraint(m, e394, b[168]+b[169] <= 1.0)
@constraint(m, e395, b[166]+b[169] <= 1.0)
@constraint(m, e396, b[167]+b[169] <= 1.0)
@constraint(m, e397, b[168]+b[169] <= 1.0)
@constraint(m, e398, b[170]+b[171] <= 1.0)
@constraint(m, e399, b[170]+b[172] <= 1.0)
@constraint(m, e400, b[170]+b[173] <= 1.0)
@constraint(m, e401, b[170]+b[171] <= 1.0)
@constraint(m, e402, b[171]+b[172] <= 1.0)
@constraint(m, e403, b[171]+b[173] <= 1.0)
@constraint(m, e404, b[170]+b[172] <= 1.0)
@constraint(m, e405, b[171]+b[172] <= 1.0)
@constraint(m, e406, b[172]+b[173] <= 1.0)
@constraint(m, e407, b[170]+b[173] <= 1.0)
@constraint(m, e408, b[171]+b[173] <= 1.0)
@constraint(m, e409, b[172]+b[173] <= 1.0)
@constraint(m, e410, b[174]+b[175] <= 1.0)
@constraint(m, e411, b[174]+b[176] <= 1.0)
@constraint(m, e412, b[174]+b[177] <= 1.0)
@constraint(m, e413, b[174]+b[175] <= 1.0)
@constraint(m, e414, b[175]+b[176] <= 1.0)
@constraint(m, e415, b[175]+b[177] <= 1.0)
@constraint(m, e416, b[174]+b[176] <= 1.0)
@constraint(m, e417, b[175]+b[176] <= 1.0)
@constraint(m, e418, b[176]+b[177] <= 1.0)
@constraint(m, e419, b[174]+b[177] <= 1.0)
@constraint(m, e420, b[175]+b[177] <= 1.0)
@constraint(m, e421, b[176]+b[177] <= 1.0)
@constraint(m, e422, b[178]+b[179] <= 1.0)
@constraint(m, e423, b[178]+b[180] <= 1.0)
@constraint(m, e424, b[178]+b[181] <= 1.0)
@constraint(m, e425, b[178]+b[179] <= 1.0)
@constraint(m, e426, b[179]+b[180] <= 1.0)
@constraint(m, e427, b[179]+b[181] <= 1.0)
@constraint(m, e428, b[178]+b[180] <= 1.0)
@constraint(m, e429, b[179]+b[180] <= 1.0)
@constraint(m, e430, b[180]+b[181] <= 1.0)
@constraint(m, e431, b[178]+b[181] <= 1.0)
@constraint(m, e432, b[179]+b[181] <= 1.0)
@constraint(m, e433, b[180]+b[181] <= 1.0)
@constraint(m, e434, b[102]-b[142] <= 0.0)
@constraint(m, e435, -b[102]+b[103]-b[143] <= 0.0)
@constraint(m, e436, -b[102]-b[103]+b[104]-b[144] <= 0.0)
@constraint(m, e437, -b[102]-b[103]-b[104]+b[105]-b[145] <= 0.0)
@constraint(m, e438, b[106]-b[146] <= 0.0)
@constraint(m, e439, -b[106]+b[107]-b[147] <= 0.0)
@constraint(m, e440, -b[106]-b[107]+b[108]-b[148] <= 0.0)
@constraint(m, e441, -b[106]-b[107]-b[108]+b[109]-b[149] <= 0.0)
@constraint(m, e442, b[110]-b[150] <= 0.0)
@constraint(m, e443, -b[110]+b[111]-b[151] <= 0.0)
@constraint(m, e444, -b[110]-b[111]+b[112]-b[152] <= 0.0)
@constraint(m, e445, -b[110]-b[111]-b[112]+b[113]-b[153] <= 0.0)
@constraint(m, e446, b[114]-b[154] <= 0.0)
@constraint(m, e447, -b[114]+b[115]-b[155] <= 0.0)
@constraint(m, e448, -b[114]-b[115]+b[116]-b[156] <= 0.0)
@constraint(m, e449, -b[114]-b[115]-b[116]+b[117]-b[157] <= 0.0)
@constraint(m, e450, b[118]-b[158] <= 0.0)
@constraint(m, e451, -b[118]+b[119]-b[159] <= 0.0)
@constraint(m, e452, -b[118]-b[119]+b[120]-b[160] <= 0.0)
@constraint(m, e453, -b[118]-b[119]-b[120]+b[121]-b[161] <= 0.0)
@constraint(m, e454, b[122]-b[162] <= 0.0)
@constraint(m, e455, -b[122]+b[123]-b[163] <= 0.0)
@constraint(m, e456, -b[122]-b[123]+b[124]-b[164] <= 0.0)
@constraint(m, e457, -b[122]-b[123]-b[124]+b[125]-b[165] <= 0.0)
@constraint(m, e458, b[126]-b[166] <= 0.0)
@constraint(m, e459, -b[126]+b[127]-b[167] <= 0.0)
@constraint(m, e460, -b[126]-b[127]+b[128]-b[168] <= 0.0)
@constraint(m, e461, -b[126]-b[127]-b[128]+b[129]-b[169] <= 0.0)
@constraint(m, e462, b[130]-b[170] <= 0.0)
@constraint(m, e463, -b[130]+b[131]-b[171] <= 0.0)
@constraint(m, e464, -b[130]-b[131]+b[132]-b[172] <= 0.0)
@constraint(m, e465, -b[130]-b[131]-b[132]+b[133]-b[173] <= 0.0)
@constraint(m, e466, b[134]-b[174] <= 0.0)
@constraint(m, e467, -b[134]+b[135]-b[175] <= 0.0)
@constraint(m, e468, -b[134]-b[135]+b[136]-b[176] <= 0.0)
@constraint(m, e469, -b[134]-b[135]-b[136]+b[137]-b[177] <= 0.0)
@constraint(m, e470, b[138]-b[178] <= 0.0)
@constraint(m, e471, -b[138]+b[139]-b[179] <= 0.0)
@constraint(m, e472, -b[138]-b[139]+b[140]-b[180] <= 0.0)
@constraint(m, e473, -b[138]-b[139]-b[140]+b[141]-b[181] <= 0.0)
@constraint(m, e474, b[102]+b[106] == 1.0)
@constraint(m, e475, b[103]+b[107] == 1.0)
@constraint(m, e476, b[104]+b[108] == 1.0)
@constraint(m, e477, b[105]+b[109] == 1.0)
@constraint(m, e478, -b[110]+b[122]+b[126] >= 0.0)
@constraint(m, e479, -b[111]+b[123]+b[127] >= 0.0)
@constraint(m, e480, -b[112]+b[124]+b[128] >= 0.0)
@constraint(m, e481, -b[113]+b[125]+b[129] >= 0.0)
@constraint(m, e482, -b[114]+b[130] >= 0.0)
@constraint(m, e483, -b[115]+b[131] >= 0.0)
@constraint(m, e484, -b[116]+b[132] >= 0.0)
@constraint(m, e485, -b[117]+b[133] >= 0.0)
@constraint(m, e486, b[102]+b[106]-b[110] >= 0.0)
@constraint(m, e487, b[103]+b[107]-b[111] >= 0.0)
@constraint(m, e488, b[104]+b[108]-b[112] >= 0.0)
@constraint(m, e489, b[105]+b[109]-b[113] >= 0.0)
@constraint(m, e490, b[102]+b[106]-b[114] >= 0.0)
@constraint(m, e491, b[103]+b[107]-b[115] >= 0.0)
@constraint(m, e492, b[104]+b[108]-b[116] >= 0.0)
@constraint(m, e493, b[105]+b[109]-b[117] >= 0.0)
@constraint(m, e494, b[102]+b[106]-b[118] >= 0.0)
@constraint(m, e495, b[103]+b[107]-b[119] >= 0.0)
@constraint(m, e496, b[104]+b[108]-b[120] >= 0.0)
@constraint(m, e497, b[105]+b[109]-b[121] >= 0.0)
@constraint(m, e498, b[110]-b[122] >= 0.0)
@constraint(m, e499, b[111]-b[123] >= 0.0)
@constraint(m, e500, b[112]-b[124] >= 0.0)
@constraint(m, e501, b[113]-b[125] >= 0.0)
@constraint(m, e502, b[110]-b[126] >= 0.0)
@constraint(m, e503, b[111]-b[127] >= 0.0)
@constraint(m, e504, b[112]-b[128] >= 0.0)
@constraint(m, e505, b[113]-b[129] >= 0.0)
@constraint(m, e506, b[114]-b[130] >= 0.0)
@constraint(m, e507, b[115]-b[131] >= 0.0)
@constraint(m, e508, b[116]-b[132] >= 0.0)
@constraint(m, e509, b[117]-b[133] >= 0.0)
@constraint(m, e510, b[118]-b[134] >= 0.0)
@constraint(m, e511, b[119]-b[135] >= 0.0)
@constraint(m, e512, b[120]-b[136] >= 0.0)
@constraint(m, e513, b[121]-b[137] >= 0.0)
@constraint(m, e514, b[118]-b[138] >= 0.0)
@constraint(m, e515, b[119]-b[139] >= 0.0)
@constraint(m, e516, b[120]-b[140] >= 0.0)
@constraint(m, e517, b[121]-b[141] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
