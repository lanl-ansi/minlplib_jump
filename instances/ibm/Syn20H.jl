using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132]
@variable(m, x[x_Idx])
b_Idx = Any[133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152]
@variable(m, b[b_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setcategory(b[133], :Bin)
setlowerbound(x[113], 0.0)
setcategory(b[137], :Bin)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[130], 0.0)
setcategory(b[141], :Bin)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setcategory(b[136], :Bin)
setcategory(b[143], :Bin)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setcategory(b[150], :Bin)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setcategory(b[145], :Bin)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setcategory(b[144], :Bin)
setlowerbound(x[126], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setcategory(b[142], :Bin)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[116], 0.0)
setcategory(b[138], :Bin)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setcategory(b[135], :Bin)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setcategory(b[151], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[127], 0.0)
setcategory(b[134], :Bin)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setcategory(b[140], :Bin)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setcategory(b[146], :Bin)
setcategory(b[149], :Bin)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[152], :Bin)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setcategory(b[139], :Bin)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setcategory(b[147], :Bin)
setcategory(b[148], :Bin)
setlowerbound(x[102], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[2], 10.0)
setupperbound(x[13], 7.0)
setupperbound(x[30], 5.0)
setupperbound(x[31], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-5*x[8]-200*x[38]-250*x[39]-200*x[40]-700*x[41]-400*x[42]-500*x[43]-400*x[44]-600*x[45]-700*x[46]+5*b[133]+8*b[134]+6*b[135]+10*b[136]+6*b[137]+7*b[138]+4*b[139]+5*b[140]+2*b[141]+4*b[142]+3*b[143]+7*b[144]+3*b[145]+2*b[146]+4*b[147]+2*b[148]+3*b[149]+5*b[150]+2*b[151]+8*b[152] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@constraint(m, e6, x[14]-x[17]-x[18] == 0.0)
@constraint(m, e7, x[16]-x[19]-x[20]-x[21] == 0.0)
@constraint(m, e8, x[24]-x[28]-x[29] == 0.0)
@constraint(m, e9, -x[25]-x[31]+x[32] == 0.0)
@constraint(m, e10, x[26]-x[33]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[35]-x[36]-x[37] == 0.0)
@NLconstraint(m, e12, (x[51]/(1e-6+b[133])-log(1+x[47]/(1e-6+b[133])))*(1e-6+b[133]) <= 0.0)
@constraint(m, e13, x[48] == 0.0)
@constraint(m, e14, x[52] == 0.0)
@constraint(m, e15, x[3]-x[47]-x[48] == 0.0)
@constraint(m, e16, x[5]-x[51]-x[52] == 0.0)
@constraint(m, e17, x[47]-10*b[133] <= 0.0)
@constraint(m, e18, x[48]+10*b[133] <= 10.0)
@constraint(m, e19, x[51]-2.39789527279837*b[133] <= 0.0)
@constraint(m, e20, x[52]+2.39789527279837*b[133] <= 2.39789527279837)
@NLconstraint(m, e21, (x[53]/(1e-6+b[134])-1.2*log(1+x[49]/(1e-6+b[134])))*(1e-6+b[134]) <= 0.0)
@constraint(m, e22, x[50] == 0.0)
@constraint(m, e23, x[54] == 0.0)
@constraint(m, e24, x[4]-x[49]-x[50] == 0.0)
@constraint(m, e25, x[6]-x[53]-x[54] == 0.0)
@constraint(m, e26, x[49]-10*b[134] <= 0.0)
@constraint(m, e27, x[50]+10*b[134] <= 10.0)
@constraint(m, e28, x[53]-2.87747432735804*b[134] <= 0.0)
@constraint(m, e29, x[54]+2.87747432735804*b[134] <= 2.87747432735804)
@constraint(m, e30, -0.75*x[55]+x[63] == 0.0)
@constraint(m, e31, x[56] == 0.0)
@constraint(m, e32, x[64] == 0.0)
@constraint(m, e33, x[10]-x[55]-x[56] == 0.0)
@constraint(m, e34, x[14]-x[63]-x[64] == 0.0)
@constraint(m, e35, x[55]-2.87747432735804*b[135] <= 0.0)
@constraint(m, e36, x[56]+2.87747432735804*b[135] <= 2.87747432735804)
@constraint(m, e37, x[63]-2.15810574551853*b[135] <= 0.0)
@constraint(m, e38, x[64]+2.15810574551853*b[135] <= 2.15810574551853)
@NLconstraint(m, e39, (x[65]/(1e-6+b[136])-1.5*log(1+x[57]/(1e-6+b[136])))*(1e-6+b[136]) <= 0.0)
@constraint(m, e40, x[58] == 0.0)
@constraint(m, e41, x[67] == 0.0)
@constraint(m, e42, x[11]-x[57]-x[58] == 0.0)
@constraint(m, e43, x[15]-x[65]-x[67] == 0.0)
@constraint(m, e44, x[57]-2.87747432735804*b[136] <= 0.0)
@constraint(m, e45, x[58]+2.87747432735804*b[136] <= 2.87747432735804)
@constraint(m, e46, x[65]-2.03277599268042*b[136] <= 0.0)
@constraint(m, e47, x[67]+2.03277599268042*b[136] <= 2.03277599268042)
@constraint(m, e48, -x[59]+x[69] == 0.0)
@constraint(m, e49, -0.5*x[61]+x[69] == 0.0)
@constraint(m, e50, x[60] == 0.0)
@constraint(m, e51, x[62] == 0.0)
@constraint(m, e52, x[70] == 0.0)
@constraint(m, e53, x[12]-x[59]-x[60] == 0.0)
@constraint(m, e54, x[13]-x[61]-x[62] == 0.0)
@constraint(m, e55, x[16]-x[69]-x[70] == 0.0)
@constraint(m, e56, x[59]-2.87747432735804*b[137] <= 0.0)
@constraint(m, e57, x[60]+2.87747432735804*b[137] <= 2.87747432735804)
@constraint(m, e58, x[61]-7*b[137] <= 0.0)
@constraint(m, e59, x[62]+7*b[137] <= 7.0)
@constraint(m, e60, x[69]-3.5*b[137] <= 0.0)
@constraint(m, e61, x[70]+3.5*b[137] <= 3.5)
@NLconstraint(m, e62, (x[81]/(1e-6+b[138])-1.25*log(1+x[71]/(1e-6+b[138])))*(1e-6+b[138]) <= 0.0)
@constraint(m, e63, x[72] == 0.0)
@constraint(m, e64, x[83] == 0.0)
@constraint(m, e65, x[17]-x[71]-x[72] == 0.0)
@constraint(m, e66, x[22]-x[81]-x[83] == 0.0)
@constraint(m, e67, x[71]-2.15810574551853*b[138] <= 0.0)
@constraint(m, e68, x[72]+2.15810574551853*b[138] <= 2.15810574551853)
@constraint(m, e69, x[81]-1.43746550029693*b[138] <= 0.0)
@constraint(m, e70, x[83]+1.43746550029693*b[138] <= 1.43746550029693)
@NLconstraint(m, e71, (x[85]/(1e-6+b[139])-0.9*log(1+x[73]/(1e-6+b[139])))*(1e-6+b[139]) <= 0.0)
@constraint(m, e72, x[74] == 0.0)
@constraint(m, e73, x[87] == 0.0)
@constraint(m, e74, x[18]-x[73]-x[74] == 0.0)
@constraint(m, e75, x[23]-x[85]-x[87] == 0.0)
@constraint(m, e76, x[73]-2.15810574551853*b[139] <= 0.0)
@constraint(m, e77, x[74]+2.15810574551853*b[139] <= 2.15810574551853)
@constraint(m, e78, x[85]-1.03497516021379*b[139] <= 0.0)
@constraint(m, e79, x[87]+1.03497516021379*b[139] <= 1.03497516021379)
@NLconstraint(m, e80, (x[89]/(1e-6+b[140])-log(1+x[66]/(1e-6+b[140])))*(1e-6+b[140]) <= 0.0)
@constraint(m, e81, x[68] == 0.0)
@constraint(m, e82, x[90] == 0.0)
@constraint(m, e83, x[15]-x[66]-x[68] == 0.0)
@constraint(m, e84, x[24]-x[89]-x[90] == 0.0)
@constraint(m, e85, x[66]-2.03277599268042*b[140] <= 0.0)
@constraint(m, e86, x[68]+2.03277599268042*b[140] <= 2.03277599268042)
@constraint(m, e87, x[89]-1.10947836929589*b[140] <= 0.0)
@constraint(m, e88, x[90]+1.10947836929589*b[140] <= 1.10947836929589)
@constraint(m, e89, -0.9*x[75]+x[91] == 0.0)
@constraint(m, e90, x[76] == 0.0)
@constraint(m, e91, x[92] == 0.0)
@constraint(m, e92, x[19]-x[75]-x[76] == 0.0)
@constraint(m, e93, x[25]-x[91]-x[92] == 0.0)
@constraint(m, e94, x[75]-3.5*b[141] <= 0.0)
@constraint(m, e95, x[76]+3.5*b[141] <= 3.5)
@constraint(m, e96, x[91]-3.15*b[141] <= 0.0)
@constraint(m, e97, x[92]+3.15*b[141] <= 3.15)
@constraint(m, e98, -0.6*x[77]+x[93] == 0.0)
@constraint(m, e99, x[78] == 0.0)
@constraint(m, e100, x[94] == 0.0)
@constraint(m, e101, x[20]-x[77]-x[78] == 0.0)
@constraint(m, e102, x[26]-x[93]-x[94] == 0.0)
@constraint(m, e103, x[77]-3.5*b[142] <= 0.0)
@constraint(m, e104, x[78]+3.5*b[142] <= 3.5)
@constraint(m, e105, x[93]-2.1*b[142] <= 0.0)
@constraint(m, e106, x[94]+2.1*b[142] <= 2.1)
@NLconstraint(m, e107, (x[95]/(1e-6+b[143])-1.1*log(1+x[79]/(1e-6+b[143])))*(1e-6+b[143]) <= 0.0)
@constraint(m, e108, x[80] == 0.0)
@constraint(m, e109, x[96] == 0.0)
@constraint(m, e110, x[21]-x[79]-x[80] == 0.0)
@constraint(m, e111, x[27]-x[95]-x[96] == 0.0)
@constraint(m, e112, x[79]-3.5*b[143] <= 0.0)
@constraint(m, e113, x[80]+3.5*b[143] <= 3.5)
@constraint(m, e114, x[95]-1.6544851364539*b[143] <= 0.0)
@constraint(m, e115, x[96]+1.6544851364539*b[143] <= 1.6544851364539)
@constraint(m, e116, -0.9*x[82]+x[115] == 0.0)
@constraint(m, e117, -x[101]+x[115] == 0.0)
@constraint(m, e118, x[84] == 0.0)
@constraint(m, e119, x[102] == 0.0)
@constraint(m, e120, x[116] == 0.0)
@constraint(m, e121, x[22]-x[82]-x[84] == 0.0)
@constraint(m, e122, x[30]-x[101]-x[102] == 0.0)
@constraint(m, e123, x[38]-x[115]-x[116] == 0.0)
@constraint(m, e124, x[82]-1.43746550029693*b[144] <= 0.0)
@constraint(m, e125, x[84]+1.43746550029693*b[144] <= 1.43746550029693)
@constraint(m, e126, x[101]-5*b[144] <= 0.0)
@constraint(m, e127, x[102]+5*b[144] <= 5.0)
@constraint(m, e128, x[115]-5*b[144] <= 0.0)
@constraint(m, e129, x[116]+5*b[144] <= 5.0)
@NLconstraint(m, e130, (x[117]/(1e-6+b[145])-log(1+x[86]/(1e-6+b[145])))*(1e-6+b[145]) <= 0.0)
@constraint(m, e131, x[88] == 0.0)
@constraint(m, e132, x[118] == 0.0)
@constraint(m, e133, x[23]-x[86]-x[88] == 0.0)
@constraint(m, e134, x[39]-x[117]-x[118] == 0.0)
@constraint(m, e135, x[86]-1.03497516021379*b[145] <= 0.0)
@constraint(m, e136, x[88]+1.03497516021379*b[145] <= 1.03497516021379)
@constraint(m, e137, x[117]-0.710483612536911*b[145] <= 0.0)
@constraint(m, e138, x[118]+0.710483612536911*b[145] <= 0.710483612536911)
@NLconstraint(m, e139, (x[119]/(1e-6+b[146])-0.7*log(1+x[97]/(1e-6+b[146])))*(1e-6+b[146]) <= 0.0)
@constraint(m, e140, x[98] == 0.0)
@constraint(m, e141, x[120] == 0.0)
@constraint(m, e142, x[28]-x[97]-x[98] == 0.0)
@constraint(m, e143, x[40]-x[119]-x[120] == 0.0)
@constraint(m, e144, x[97]-1.10947836929589*b[146] <= 0.0)
@constraint(m, e145, x[98]+1.10947836929589*b[146] <= 1.10947836929589)
@constraint(m, e146, x[119]-0.522508489006913*b[146] <= 0.0)
@constraint(m, e147, x[120]+0.522508489006913*b[146] <= 0.522508489006913)
@NLconstraint(m, e148, (x[121]/(1e-6+b[147])-0.65*log(1+x[99]/(1e-6+b[147])))*(1e-6+b[147]) <= 0.0)
@NLconstraint(m, e149, (x[121]/(1e-6+b[147])-0.65*log(1+x[103]/(1e-6+b[147])))*(1e-6+b[147]) <= 0.0)
@constraint(m, e150, x[100] == 0.0)
@constraint(m, e151, x[104] == 0.0)
@constraint(m, e152, x[122] == 0.0)
@constraint(m, e153, x[29]-x[99]-x[100] == 0.0)
@constraint(m, e154, x[32]-x[103]-x[104] == 0.0)
@constraint(m, e155, x[41]-x[121]-x[122] == 0.0)
@constraint(m, e156, x[99]-1.10947836929589*b[147] <= 0.0)
@constraint(m, e157, x[100]+1.10947836929589*b[147] <= 1.10947836929589)
@constraint(m, e158, x[103]-8.15*b[147] <= 0.0)
@constraint(m, e159, x[104]+8.15*b[147] <= 8.15)
@constraint(m, e160, x[121]-1.43894002153683*b[147] <= 0.0)
@constraint(m, e161, x[122]+1.43894002153683*b[147] <= 1.43894002153683)
@constraint(m, e162, -x[105]+x[123] == 0.0)
@constraint(m, e163, x[106] == 0.0)
@constraint(m, e164, x[124] == 0.0)
@constraint(m, e165, x[33]-x[105]-x[106] == 0.0)
@constraint(m, e166, x[42]-x[123]-x[124] == 0.0)
@constraint(m, e167, x[105]-2.1*b[148] <= 0.0)
@constraint(m, e168, x[106]+2.1*b[148] <= 2.1)
@constraint(m, e169, x[123]-2.1*b[148] <= 0.0)
@constraint(m, e170, x[124]+2.1*b[148] <= 2.1)
@constraint(m, e171, -x[107]+x[125] == 0.0)
@constraint(m, e172, x[108] == 0.0)
@constraint(m, e173, x[126] == 0.0)
@constraint(m, e174, x[34]-x[107]-x[108] == 0.0)
@constraint(m, e175, x[43]-x[125]-x[126] == 0.0)
@constraint(m, e176, x[107]-2.1*b[149] <= 0.0)
@constraint(m, e177, x[108]+2.1*b[149] <= 2.1)
@constraint(m, e178, x[125]-2.1*b[149] <= 0.0)
@constraint(m, e179, x[126]+2.1*b[149] <= 2.1)
@NLconstraint(m, e180, (x[127]/(1e-6+b[150])-0.75*log(1+x[109]/(1e-6+b[150])))*(1e-6+b[150]) <= 0.0)
@constraint(m, e181, x[110] == 0.0)
@constraint(m, e182, x[128] == 0.0)
@constraint(m, e183, x[35]-x[109]-x[110] == 0.0)
@constraint(m, e184, x[44]-x[127]-x[128] == 0.0)
@constraint(m, e185, x[109]-1.6544851364539*b[150] <= 0.0)
@constraint(m, e186, x[110]+1.6544851364539*b[150] <= 1.6544851364539)
@constraint(m, e187, x[127]-0.732188035236726*b[150] <= 0.0)
@constraint(m, e188, x[128]+0.732188035236726*b[150] <= 0.732188035236726)
@NLconstraint(m, e189, (x[129]/(1e-6+b[151])-0.8*log(1+x[111]/(1e-6+b[151])))*(1e-6+b[151]) <= 0.0)
@constraint(m, e190, x[112] == 0.0)
@constraint(m, e191, x[130] == 0.0)
@constraint(m, e192, x[36]-x[111]-x[112] == 0.0)
@constraint(m, e193, x[45]-x[129]-x[130] == 0.0)
@constraint(m, e194, x[111]-1.6544851364539*b[151] <= 0.0)
@constraint(m, e195, x[112]+1.6544851364539*b[151] <= 1.6544851364539)
@constraint(m, e196, x[129]-0.781000570919175*b[151] <= 0.0)
@constraint(m, e197, x[130]+0.781000570919175*b[151] <= 0.781000570919175)
@NLconstraint(m, e198, (x[131]/(1e-6+b[152])-0.85*log(1+x[113]/(1e-6+b[152])))*(1e-6+b[152]) <= 0.0)
@constraint(m, e199, x[114] == 0.0)
@constraint(m, e200, x[132] == 0.0)
@constraint(m, e201, x[37]-x[113]-x[114] == 0.0)
@constraint(m, e202, x[46]-x[131]-x[132] == 0.0)
@constraint(m, e203, x[113]-1.6544851364539*b[152] <= 0.0)
@constraint(m, e204, x[114]+1.6544851364539*b[152] <= 1.6544851364539)
@constraint(m, e205, x[131]-0.829813106601623*b[152] <= 0.0)
@constraint(m, e206, x[132]+0.829813106601623*b[152] <= 0.829813106601623)
@constraint(m, e207, b[133]+b[134] == 1.0)
@constraint(m, e208, -b[135]+b[138]+b[139] >= 0.0)
@constraint(m, e209, -b[138]+b[144] >= 0.0)
@constraint(m, e210, -b[139]+b[145] >= 0.0)
@constraint(m, e211, -b[136]+b[140] >= 0.0)
@constraint(m, e212, -b[140]+b[146]+b[147] >= 0.0)
@constraint(m, e213, -b[137]+b[141]+b[142]+b[143] >= 0.0)
@constraint(m, e214, -b[141]+b[147] >= 0.0)
@constraint(m, e215, -b[142]+b[148]+b[149] >= 0.0)
@constraint(m, e216, -b[143]+b[150]+b[151]+b[152] >= 0.0)
@constraint(m, e217, b[133]+b[134]-b[135] >= 0.0)
@constraint(m, e218, b[133]+b[134]-b[136] >= 0.0)
@constraint(m, e219, b[133]+b[134]-b[137] >= 0.0)
@constraint(m, e220, b[135]-b[138] >= 0.0)
@constraint(m, e221, b[135]-b[139] >= 0.0)
@constraint(m, e222, b[136]-b[140] >= 0.0)
@constraint(m, e223, b[137]-b[141] >= 0.0)
@constraint(m, e224, b[137]-b[142] >= 0.0)
@constraint(m, e225, b[137]-b[143] >= 0.0)
@constraint(m, e226, b[138]-b[144] >= 0.0)
@constraint(m, e227, b[139]-b[145] >= 0.0)
@constraint(m, e228, b[140]-b[146] >= 0.0)
@constraint(m, e229, b[140]-b[147] >= 0.0)
@constraint(m, e230, b[142]-b[148] >= 0.0)
@constraint(m, e231, b[142]-b[149] >= 0.0)
@constraint(m, e232, b[143]-b[150] >= 0.0)
@constraint(m, e233, b[143]-b[151] >= 0.0)
@constraint(m, e234, b[143]-b[152] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])
m = m 		 # model get returned when including this script. 
