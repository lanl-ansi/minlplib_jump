using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141]
@variable(m, x[x_Idx])
b_Idx = Any[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98]
@variable(m, b[b_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[101], 0.0)
setcategory(b[35], :Bin)
setcategory(b[38], :Bin)
setcategory(b[44], :Bin)
setlowerbound(x[118], 0.0)
setlowerbound(x[136], 0.0)
setcategory(b[71], :Bin)
setcategory(b[78], :Bin)
setlowerbound(x[140], 0.0)
setlowerbound(x[114], 0.0)
setcategory(b[75], :Bin)
setlowerbound(x[132], 0.0)
setcategory(b[66], :Bin)
setcategory(b[85], :Bin)
setcategory(b[15], :Bin)
setcategory(b[80], :Bin)
setcategory(b[82], :Bin)
setlowerbound(x[110], 0.0)
setcategory(b[70], :Bin)
setlowerbound(x[105], 0.0)
setlowerbound(x[138], 0.0)
setcategory(b[42], :Bin)
setcategory(b[45], :Bin)
setcategory(b[49], :Bin)
setcategory(b[81], :Bin)
setlowerbound(x[113], 0.0)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setlowerbound(x[130], 0.0)
setcategory(b[23], :Bin)
setlowerbound(x[100], 0.0)
setcategory(b[64], :Bin)
setcategory(b[54], :Bin)
setlowerbound(x[111], 0.0)
setlowerbound(x[106], 0.0)
setcategory(b[21], :Bin)
setcategory(b[28], :Bin)
setcategory(b[36], :Bin)
setcategory(b[22], :Bin)
setcategory(b[90], :Bin)
setlowerbound(x[131], 0.0)
setcategory(b[87], :Bin)
setcategory(b[98], :Bin)
setlowerbound(x[137], 0.0)
setcategory(b[95], :Bin)
setcategory(b[77], :Bin)
setcategory(b[84], :Bin)
setcategory(b[46], :Bin)
setcategory(b[53], :Bin)
setcategory(b[33], :Bin)
setcategory(b[56], :Bin)
setlowerbound(x[134], 0.0)
setcategory(b[30], :Bin)
setcategory(b[79], :Bin)
setcategory(b[29], :Bin)
setlowerbound(x[128], 0.0)
setcategory(b[40], :Bin)
setcategory(b[61], :Bin)
setcategory(b[58], :Bin)
setcategory(b[74], :Bin)
setcategory(b[32], :Bin)
setcategory(b[34], :Bin)
setlowerbound(x[122], 0.0)
setcategory(b[57], :Bin)
setlowerbound(x[129], 0.0)
setcategory(b[72], :Bin)
setcategory(b[89], :Bin)
setcategory(b[92], :Bin)
setcategory(b[96], :Bin)
setcategory(b[16], :Bin)
setlowerbound(x[104], 0.0)
setcategory(b[86], :Bin)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setcategory(b[60], :Bin)
setcategory(b[51], :Bin)
setcategory(b[69], :Bin)
setlowerbound(x[139], 0.0)
setcategory(b[68], :Bin)
setlowerbound(x[126], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setcategory(b[20], :Bin)
setcategory(b[43], :Bin)
setcategory(b[47], :Bin)
setcategory(b[19], :Bin)
setcategory(b[25], :Bin)
setlowerbound(x[116], 0.0)
setcategory(b[65], :Bin)
setcategory(b[83], :Bin)
setcategory(b[59], :Bin)
setcategory(b[17], :Bin)
setcategory(b[39], :Bin)
setcategory(b[76], :Bin)
setlowerbound(x[99], 0.0)
setcategory(b[67], :Bin)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[127], 0.0)
setcategory(b[37], :Bin)
setcategory(b[50], :Bin)
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setcategory(b[88], :Bin)
setlowerbound(x[124], 0.0)
setcategory(b[97], :Bin)
setlowerbound(x[119], 0.0)
setcategory(b[93], :Bin)
setcategory(b[94], :Bin)
setlowerbound(x[109], 0.0)
setcategory(b[31], :Bin)
setlowerbound(x[135], 0.0)
setcategory(b[62], :Bin)
setcategory(b[91], :Bin)
setlowerbound(x[125], 0.0)
setcategory(b[52], :Bin)
setcategory(b[24], :Bin)
setcategory(b[55], :Bin)
setlowerbound(x[108], 0.0)
setcategory(b[63], :Bin)
setlowerbound(x[102], 0.0)
setlowerbound(x[133], 0.0)
setcategory(b[26], :Bin)
setcategory(b[73], :Bin)
setlowerbound(x[1], 2.5)
setupperbound(x[1], 37.5)
setlowerbound(x[2], 3.5)
setupperbound(x[2], 36.5)
setlowerbound(x[3], 1.5)
setupperbound(x[3], 38.5)
setlowerbound(x[4], 1.0)
setupperbound(x[4], 39.0)
setlowerbound(x[5], 2.0)
setupperbound(x[5], 38.0)
setlowerbound(x[6], 2.5)
setupperbound(x[6], 37.5)
setlowerbound(x[7], 4.0)
setupperbound(x[7], 36.0)
setlowerbound(x[8], 3.0)
setupperbound(x[8], 37.0)
setlowerbound(x[9], 2.5)
setupperbound(x[9], 37.5)
setlowerbound(x[10], 1.5)
setupperbound(x[10], 38.5)
setlowerbound(x[11], 1.5)
setupperbound(x[11], 38.5)
setlowerbound(x[12], 2.0)
setupperbound(x[12], 38.0)
setlowerbound(x[13], 1.0)
setupperbound(x[13], 39.0)
setlowerbound(x[14], 3.0)
setupperbound(x[14], 37.0)


# ----- Constraints ----- #
@constraint(m, e1, -(150*( ((-4)+x[1])^2+ ((-10)+x[8])^2)+390*( ((-10)+x[2])^2+ ((-15)+x[9])^2)+240*( ((-7)+x[3])^2+ ((-9)+x[10])^2)+70*( ((-3)+x[4])^2+ ((-3)+x[11])^2)+165*( ((-20)+x[5])^2+ ((-17)+x[12])^2)+100*( ((-18)+x[6])^2+ ((-8)+x[13])^2)+200*( ((-30)+x[7])^2+ ((-20)+x[14])^2))-300*x[99]-240*x[100]-210*x[101]-140*x[102]-300*x[103]-250*x[104]-100*x[105]-150*x[106]-220*x[107]-200*x[108]-300*x[109]-120*x[110]-300*x[111]-150*x[112]-150*x[113]-100*x[114]-120*x[115]-180*x[116]-130*x[117]-190*x[118]-220*x[119]-300*x[120]-240*x[121]-210*x[122]-140*x[123]-300*x[124]-250*x[125]-100*x[126]-150*x[127]-220*x[128]-200*x[129]-300*x[130]-120*x[131]-300*x[132]-150*x[133]-150*x[134]-100*x[135]-120*x[136]-180*x[137]-130*x[138]-190*x[139]-220*x[140]+x[141] == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[99] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[100] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[101] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[102] >= 0.0)
@constraint(m, e6, -x[1]+x[6]+x[103] >= 0.0)
@constraint(m, e7, -x[1]+x[7]+x[104] >= 0.0)
@constraint(m, e8, -x[2]+x[3]+x[105] >= 0.0)
@constraint(m, e9, -x[2]+x[4]+x[106] >= 0.0)
@constraint(m, e10, -x[2]+x[5]+x[107] >= 0.0)
@constraint(m, e11, -x[2]+x[6]+x[108] >= 0.0)
@constraint(m, e12, -x[2]+x[7]+x[109] >= 0.0)
@constraint(m, e13, -x[3]+x[4]+x[110] >= 0.0)
@constraint(m, e14, -x[3]+x[5]+x[111] >= 0.0)
@constraint(m, e15, -x[3]+x[6]+x[112] >= 0.0)
@constraint(m, e16, -x[3]+x[7]+x[113] >= 0.0)
@constraint(m, e17, -x[4]+x[5]+x[114] >= 0.0)
@constraint(m, e18, -x[4]+x[6]+x[115] >= 0.0)
@constraint(m, e19, -x[4]+x[7]+x[116] >= 0.0)
@constraint(m, e20, -x[5]+x[6]+x[117] >= 0.0)
@constraint(m, e21, -x[5]+x[7]+x[118] >= 0.0)
@constraint(m, e22, -x[6]+x[7]+x[119] >= 0.0)
@constraint(m, e23, x[1]-x[2]+x[99] >= 0.0)
@constraint(m, e24, x[1]-x[3]+x[100] >= 0.0)
@constraint(m, e25, x[1]-x[4]+x[101] >= 0.0)
@constraint(m, e26, x[1]-x[5]+x[102] >= 0.0)
@constraint(m, e27, x[1]-x[6]+x[103] >= 0.0)
@constraint(m, e28, x[1]-x[7]+x[104] >= 0.0)
@constraint(m, e29, x[2]-x[3]+x[105] >= 0.0)
@constraint(m, e30, x[2]-x[4]+x[106] >= 0.0)
@constraint(m, e31, x[2]-x[5]+x[107] >= 0.0)
@constraint(m, e32, x[2]-x[6]+x[108] >= 0.0)
@constraint(m, e33, x[2]-x[7]+x[109] >= 0.0)
@constraint(m, e34, x[3]-x[4]+x[110] >= 0.0)
@constraint(m, e35, x[3]-x[5]+x[111] >= 0.0)
@constraint(m, e36, x[3]-x[6]+x[112] >= 0.0)
@constraint(m, e37, x[3]-x[7]+x[113] >= 0.0)
@constraint(m, e38, x[4]-x[5]+x[114] >= 0.0)
@constraint(m, e39, x[4]-x[6]+x[115] >= 0.0)
@constraint(m, e40, x[4]-x[7]+x[116] >= 0.0)
@constraint(m, e41, x[5]-x[6]+x[117] >= 0.0)
@constraint(m, e42, x[5]-x[7]+x[118] >= 0.0)
@constraint(m, e43, x[6]-x[7]+x[119] >= 0.0)
@constraint(m, e44, -x[8]+x[9]+x[120] >= 0.0)
@constraint(m, e45, -x[8]+x[10]+x[121] >= 0.0)
@constraint(m, e46, -x[8]+x[11]+x[122] >= 0.0)
@constraint(m, e47, -x[8]+x[12]+x[123] >= 0.0)
@constraint(m, e48, -x[8]+x[13]+x[124] >= 0.0)
@constraint(m, e49, -x[8]+x[14]+x[125] >= 0.0)
@constraint(m, e50, -x[9]+x[10]+x[126] >= 0.0)
@constraint(m, e51, -x[9]+x[11]+x[127] >= 0.0)
@constraint(m, e52, -x[9]+x[12]+x[128] >= 0.0)
@constraint(m, e53, -x[9]+x[13]+x[129] >= 0.0)
@constraint(m, e54, -x[9]+x[14]+x[130] >= 0.0)
@constraint(m, e55, -x[10]+x[11]+x[131] >= 0.0)
@constraint(m, e56, -x[10]+x[12]+x[132] >= 0.0)
@constraint(m, e57, -x[10]+x[13]+x[133] >= 0.0)
@constraint(m, e58, -x[10]+x[14]+x[134] >= 0.0)
@constraint(m, e59, -x[11]+x[12]+x[135] >= 0.0)
@constraint(m, e60, -x[11]+x[13]+x[136] >= 0.0)
@constraint(m, e61, -x[11]+x[14]+x[137] >= 0.0)
@constraint(m, e62, -x[12]+x[13]+x[138] >= 0.0)
@constraint(m, e63, -x[12]+x[14]+x[139] >= 0.0)
@constraint(m, e64, -x[13]+x[14]+x[140] >= 0.0)
@constraint(m, e65, x[8]-x[9]+x[120] >= 0.0)
@constraint(m, e66, x[8]-x[10]+x[121] >= 0.0)
@constraint(m, e67, x[8]-x[11]+x[122] >= 0.0)
@constraint(m, e68, x[8]-x[12]+x[123] >= 0.0)
@constraint(m, e69, x[8]-x[13]+x[124] >= 0.0)
@constraint(m, e70, x[8]-x[14]+x[125] >= 0.0)
@constraint(m, e71, x[9]-x[10]+x[126] >= 0.0)
@constraint(m, e72, x[9]-x[11]+x[127] >= 0.0)
@constraint(m, e73, x[9]-x[12]+x[128] >= 0.0)
@constraint(m, e74, x[9]-x[13]+x[129] >= 0.0)
@constraint(m, e75, x[9]-x[14]+x[130] >= 0.0)
@constraint(m, e76, x[10]-x[11]+x[131] >= 0.0)
@constraint(m, e77, x[10]-x[12]+x[132] >= 0.0)
@constraint(m, e78, x[10]-x[13]+x[133] >= 0.0)
@constraint(m, e79, x[10]-x[14]+x[134] >= 0.0)
@constraint(m, e80, x[11]-x[12]+x[135] >= 0.0)
@constraint(m, e81, x[11]-x[13]+x[136] >= 0.0)
@constraint(m, e82, x[11]-x[14]+x[137] >= 0.0)
@constraint(m, e83, x[12]-x[13]+x[138] >= 0.0)
@constraint(m, e84, x[12]-x[14]+x[139] >= 0.0)
@constraint(m, e85, x[13]-x[14]+x[140] >= 0.0)
@constraint(m, e86, x[1]-x[2]+40*b[15] <= 34.0)
@constraint(m, e87, x[1]-x[3]+40*b[16] <= 36.0)
@constraint(m, e88, x[1]-x[4]+40*b[17] <= 36.5)
@constraint(m, e89, x[1]-x[5]+40*b[18] <= 35.5)
@constraint(m, e90, x[1]-x[6]+40*b[19] <= 35.0)
@constraint(m, e91, x[1]-x[7]+40*b[20] <= 33.5)
@constraint(m, e92, x[2]-x[3]+40*b[21] <= 35.0)
@constraint(m, e93, x[2]-x[4]+40*b[22] <= 35.5)
@constraint(m, e94, x[2]-x[5]+40*b[23] <= 34.5)
@constraint(m, e95, x[2]-x[6]+40*b[24] <= 34.0)
@constraint(m, e96, x[2]-x[7]+40*b[25] <= 32.5)
@constraint(m, e97, x[3]-x[4]+40*b[26] <= 37.5)
@constraint(m, e98, x[3]-x[5]+40*b[27] <= 36.5)
@constraint(m, e99, x[3]-x[6]+40*b[28] <= 36.0)
@constraint(m, e100, x[3]-x[7]+40*b[29] <= 34.5)
@constraint(m, e101, x[4]-x[5]+40*b[30] <= 37.0)
@constraint(m, e102, x[4]-x[6]+40*b[31] <= 36.5)
@constraint(m, e103, x[4]-x[7]+40*b[32] <= 35.0)
@constraint(m, e104, x[5]-x[6]+40*b[33] <= 35.5)
@constraint(m, e105, x[5]-x[7]+40*b[34] <= 34.0)
@constraint(m, e106, x[6]-x[7]+40*b[35] <= 33.5)
@constraint(m, e107, -x[1]+x[2]+40*b[36] <= 34.0)
@constraint(m, e108, -x[1]+x[3]+40*b[37] <= 36.0)
@constraint(m, e109, -x[1]+x[4]+40*b[38] <= 36.5)
@constraint(m, e110, -x[1]+x[5]+40*b[39] <= 35.5)
@constraint(m, e111, -x[1]+x[6]+40*b[40] <= 35.0)
@constraint(m, e112, -x[1]+x[7]+40*b[41] <= 33.5)
@constraint(m, e113, -x[2]+x[3]+40*b[42] <= 35.0)
@constraint(m, e114, -x[2]+x[4]+40*b[43] <= 35.5)
@constraint(m, e115, -x[2]+x[5]+40*b[44] <= 34.5)
@constraint(m, e116, -x[2]+x[6]+40*b[45] <= 34.0)
@constraint(m, e117, -x[2]+x[7]+40*b[46] <= 32.5)
@constraint(m, e118, -x[3]+x[4]+40*b[47] <= 37.5)
@constraint(m, e119, -x[3]+x[5]+40*b[48] <= 36.5)
@constraint(m, e120, -x[3]+x[6]+40*b[49] <= 36.0)
@constraint(m, e121, -x[3]+x[7]+40*b[50] <= 34.5)
@constraint(m, e122, -x[4]+x[5]+40*b[51] <= 37.0)
@constraint(m, e123, -x[4]+x[6]+40*b[52] <= 36.5)
@constraint(m, e124, -x[4]+x[7]+40*b[53] <= 35.0)
@constraint(m, e125, -x[5]+x[6]+40*b[54] <= 35.5)
@constraint(m, e126, -x[5]+x[7]+40*b[55] <= 34.0)
@constraint(m, e127, -x[6]+x[7]+40*b[56] <= 33.5)
@constraint(m, e128, x[8]-x[9]+40*b[57] <= 34.5)
@constraint(m, e129, x[8]-x[10]+40*b[58] <= 35.5)
@constraint(m, e130, x[8]-x[11]+40*b[59] <= 35.5)
@constraint(m, e131, x[8]-x[12]+40*b[60] <= 35.0)
@constraint(m, e132, x[8]-x[13]+40*b[61] <= 36.0)
@constraint(m, e133, x[8]-x[14]+40*b[62] <= 34.0)
@constraint(m, e134, x[9]-x[10]+40*b[63] <= 36.0)
@constraint(m, e135, x[9]-x[11]+40*b[64] <= 36.0)
@constraint(m, e136, x[9]-x[12]+40*b[65] <= 35.5)
@constraint(m, e137, x[9]-x[13]+40*b[66] <= 36.5)
@constraint(m, e138, x[9]-x[14]+40*b[67] <= 34.5)
@constraint(m, e139, x[10]-x[11]+40*b[68] <= 37.0)
@constraint(m, e140, x[10]-x[12]+40*b[69] <= 36.5)
@constraint(m, e141, x[10]-x[13]+40*b[70] <= 37.5)
@constraint(m, e142, x[10]-x[14]+40*b[71] <= 35.5)
@constraint(m, e143, x[11]-x[12]+40*b[72] <= 36.5)
@constraint(m, e144, x[11]-x[13]+40*b[73] <= 37.5)
@constraint(m, e145, x[11]-x[14]+40*b[74] <= 35.5)
@constraint(m, e146, x[12]-x[13]+40*b[75] <= 37.0)
@constraint(m, e147, x[12]-x[14]+40*b[76] <= 35.0)
@constraint(m, e148, x[13]-x[14]+40*b[77] <= 36.0)
@constraint(m, e149, -x[8]+x[9]+40*b[78] <= 34.5)
@constraint(m, e150, -x[8]+x[10]+40*b[79] <= 35.5)
@constraint(m, e151, -x[8]+x[11]+40*b[80] <= 35.5)
@constraint(m, e152, -x[8]+x[12]+40*b[81] <= 35.0)
@constraint(m, e153, -x[8]+x[13]+40*b[82] <= 36.0)
@constraint(m, e154, -x[8]+x[14]+40*b[83] <= 34.0)
@constraint(m, e155, -x[9]+x[10]+40*b[84] <= 36.0)
@constraint(m, e156, -x[9]+x[11]+40*b[85] <= 36.0)
@constraint(m, e157, -x[9]+x[12]+40*b[86] <= 35.5)
@constraint(m, e158, -x[9]+x[13]+40*b[87] <= 36.5)
@constraint(m, e159, -x[9]+x[14]+40*b[88] <= 34.5)
@constraint(m, e160, -x[10]+x[11]+40*b[89] <= 37.0)
@constraint(m, e161, -x[10]+x[12]+40*b[90] <= 36.5)
@constraint(m, e162, -x[10]+x[13]+40*b[91] <= 37.5)
@constraint(m, e163, -x[10]+x[14]+40*b[92] <= 35.5)
@constraint(m, e164, -x[11]+x[12]+40*b[93] <= 36.5)
@constraint(m, e165, -x[11]+x[13]+40*b[94] <= 37.5)
@constraint(m, e166, -x[11]+x[14]+40*b[95] <= 35.5)
@constraint(m, e167, -x[12]+x[13]+40*b[96] <= 37.0)
@constraint(m, e168, -x[12]+x[14]+40*b[97] <= 35.0)
@constraint(m, e169, -x[13]+x[14]+40*b[98] <= 36.0)
@constraint(m, e170, b[15]+b[36]+b[57]+b[78] == 1.0)
@constraint(m, e171, b[16]+b[37]+b[58]+b[79] == 1.0)
@constraint(m, e172, b[17]+b[38]+b[59]+b[80] == 1.0)
@constraint(m, e173, b[18]+b[39]+b[60]+b[81] == 1.0)
@constraint(m, e174, b[19]+b[40]+b[61]+b[82] == 1.0)
@constraint(m, e175, b[20]+b[41]+b[62]+b[83] == 1.0)
@constraint(m, e176, b[21]+b[42]+b[63]+b[84] == 1.0)
@constraint(m, e177, b[22]+b[43]+b[64]+b[85] == 1.0)
@constraint(m, e178, b[23]+b[44]+b[65]+b[86] == 1.0)
@constraint(m, e179, b[24]+b[45]+b[66]+b[87] == 1.0)
@constraint(m, e180, b[25]+b[46]+b[67]+b[88] == 1.0)
@constraint(m, e181, b[26]+b[47]+b[68]+b[89] == 1.0)
@constraint(m, e182, b[27]+b[48]+b[69]+b[90] == 1.0)
@constraint(m, e183, b[28]+b[49]+b[70]+b[91] == 1.0)
@constraint(m, e184, b[29]+b[50]+b[71]+b[92] == 1.0)
@constraint(m, e185, b[30]+b[51]+b[72]+b[93] == 1.0)
@constraint(m, e186, b[31]+b[52]+b[73]+b[94] == 1.0)
@constraint(m, e187, b[32]+b[53]+b[74]+b[95] == 1.0)
@constraint(m, e188, b[33]+b[54]+b[75]+b[96] == 1.0)
@constraint(m, e189, b[34]+b[55]+b[76]+b[97] == 1.0)
@constraint(m, e190, b[35]+b[56]+b[77]+b[98] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[141])
m = m 		 # model get returned when including this script. 
