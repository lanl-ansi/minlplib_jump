using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 123]
@variable(m, x[x_Idx])
b_Idx = Any[111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]
@variable(m, b[b_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setcategory(b[118], :Bin)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setcategory(b[120], :Bin)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[100], 0.0)
setcategory(b[112], :Bin)
setcategory(b[111], :Bin)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[96], 0.0)
setcategory(b[115], :Bin)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setcategory(b[116], :Bin)
setlowerbound(x[88], 0.0)
setcategory(b[119], :Bin)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[114], :Bin)
setlowerbound(x[21], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[40], 0.0)
setcategory(b[117], :Bin)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
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
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[19], 0.0)
setcategory(b[113], :Bin)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[122], :Bin)
setlowerbound(x[20], 0.0)
setcategory(b[121], :Bin)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[1], 29.0)
setupperbound(x[2], 29.0)
setupperbound(x[3], 29.0)
setupperbound(x[4], 29.0)
setupperbound(x[5], 29.0)
setupperbound(x[6], 29.0)
setlowerbound(x[7], 1.0)
setupperbound(x[7], 40.0)
setlowerbound(x[8], 1.0)
setupperbound(x[8], 50.0)
setlowerbound(x[9], 1.0)
setupperbound(x[9], 60.0)
setlowerbound(x[10], 1.0)
setupperbound(x[10], 40.0)
setlowerbound(x[11], 1.0)
setupperbound(x[11], 50.0)
setlowerbound(x[12], 1.0)
setupperbound(x[12], 60.0)
setupperbound(x[13], 30.0)
setupperbound(x[14], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[13]-2*x[14]+x[123] == 0.0)
@constraint(m, e2, -x[1]-x[7]+x[13] >= 0.0)
@constraint(m, e3, -x[2]-x[8]+x[13] >= 0.0)
@constraint(m, e4, -x[3]-x[9]+x[13] >= 0.0)
@constraint(m, e5, -x[4]-x[10]+x[14] >= 0.0)
@constraint(m, e6, -x[5]-x[11]+x[14] >= 0.0)
@constraint(m, e7, -x[6]-x[12]+x[14] >= 0.0)
@NLconstraint(m, e8, 40/x[10]-x[7] <= 0.0)
@NLconstraint(m, e9, 50/x[11]-x[8] <= 0.0)
@NLconstraint(m, e10, 60/x[12]-x[9] <= 0.0)
@constraint(m, e11, x[1]-x[15]-x[17]-x[19]-x[21] == 0.0)
@constraint(m, e12, x[1]-x[16]-x[18]-x[20]-x[22] == 0.0)
@constraint(m, e13, x[2]-x[23]-x[25]-x[27]-x[29] == 0.0)
@constraint(m, e14, x[2]-x[24]-x[26]-x[28]-x[30] == 0.0)
@constraint(m, e15, x[3]-x[31]-x[33]-x[35]-x[37] == 0.0)
@constraint(m, e16, x[3]-x[32]-x[34]-x[36]-x[38] == 0.0)
@constraint(m, e17, x[4]-x[39]-x[41]-x[43]-x[45] == 0.0)
@constraint(m, e18, x[4]-x[40]-x[42]-x[44]-x[46] == 0.0)
@constraint(m, e19, x[5]-x[47]-x[49]-x[51]-x[53] == 0.0)
@constraint(m, e20, x[5]-x[48]-x[50]-x[52]-x[54] == 0.0)
@constraint(m, e21, x[6]-x[55]-x[57]-x[59]-x[61] == 0.0)
@constraint(m, e22, x[6]-x[56]-x[58]-x[60]-x[62] == 0.0)
@constraint(m, e23, x[7]-x[63]-x[65]-x[67]-x[69] == 0.0)
@constraint(m, e24, x[7]-x[64]-x[66]-x[68]-x[70] == 0.0)
@constraint(m, e25, x[8]-x[71]-x[73]-x[75]-x[77] == 0.0)
@constraint(m, e26, x[8]-x[72]-x[74]-x[76]-x[78] == 0.0)
@constraint(m, e27, x[9]-x[79]-x[81]-x[83]-x[85] == 0.0)
@constraint(m, e28, x[9]-x[80]-x[82]-x[84]-x[86] == 0.0)
@constraint(m, e29, x[10]-x[87]-x[89]-x[91]-x[93] == 0.0)
@constraint(m, e30, x[10]-x[88]-x[90]-x[92]-x[94] == 0.0)
@constraint(m, e31, x[11]-x[95]-x[97]-x[99]-x[101] == 0.0)
@constraint(m, e32, x[11]-x[96]-x[98]-x[100]-x[102] == 0.0)
@constraint(m, e33, x[12]-x[103]-x[105]-x[107]-x[109] == 0.0)
@constraint(m, e34, x[12]-x[104]-x[106]-x[108]-x[110] == 0.0)
@constraint(m, e35, x[15]-29*b[111] <= 0.0)
@constraint(m, e36, x[16]-29*b[112] <= 0.0)
@constraint(m, e37, x[17]-29*b[114] <= 0.0)
@constraint(m, e38, x[18]-29*b[115] <= 0.0)
@constraint(m, e39, x[19]-29*b[117] <= 0.0)
@constraint(m, e40, x[20]-29*b[118] <= 0.0)
@constraint(m, e41, x[21]-29*b[120] <= 0.0)
@constraint(m, e42, x[22]-29*b[121] <= 0.0)
@constraint(m, e43, x[23]-29*b[111] <= 0.0)
@constraint(m, e44, x[24]-29*b[113] <= 0.0)
@constraint(m, e45, x[25]-29*b[114] <= 0.0)
@constraint(m, e46, x[26]-29*b[116] <= 0.0)
@constraint(m, e47, x[27]-29*b[117] <= 0.0)
@constraint(m, e48, x[28]-29*b[119] <= 0.0)
@constraint(m, e49, x[29]-29*b[120] <= 0.0)
@constraint(m, e50, x[30]-29*b[122] <= 0.0)
@constraint(m, e51, x[31]-29*b[112] <= 0.0)
@constraint(m, e52, x[32]-29*b[113] <= 0.0)
@constraint(m, e53, x[33]-29*b[115] <= 0.0)
@constraint(m, e54, x[34]-29*b[116] <= 0.0)
@constraint(m, e55, x[35]-29*b[118] <= 0.0)
@constraint(m, e56, x[36]-29*b[119] <= 0.0)
@constraint(m, e57, x[37]-29*b[121] <= 0.0)
@constraint(m, e58, x[38]-29*b[122] <= 0.0)
@constraint(m, e59, x[39]-29*b[111] <= 0.0)
@constraint(m, e60, x[40]-29*b[112] <= 0.0)
@constraint(m, e61, x[41]-29*b[114] <= 0.0)
@constraint(m, e62, x[42]-29*b[115] <= 0.0)
@constraint(m, e63, x[43]-29*b[117] <= 0.0)
@constraint(m, e64, x[44]-29*b[118] <= 0.0)
@constraint(m, e65, x[45]-29*b[120] <= 0.0)
@constraint(m, e66, x[46]-29*b[121] <= 0.0)
@constraint(m, e67, x[47]-29*b[111] <= 0.0)
@constraint(m, e68, x[48]-29*b[113] <= 0.0)
@constraint(m, e69, x[49]-29*b[114] <= 0.0)
@constraint(m, e70, x[50]-29*b[116] <= 0.0)
@constraint(m, e71, x[51]-29*b[117] <= 0.0)
@constraint(m, e72, x[52]-29*b[119] <= 0.0)
@constraint(m, e73, x[53]-29*b[120] <= 0.0)
@constraint(m, e74, x[54]-29*b[122] <= 0.0)
@constraint(m, e75, x[55]-29*b[112] <= 0.0)
@constraint(m, e76, x[56]-29*b[113] <= 0.0)
@constraint(m, e77, x[57]-29*b[115] <= 0.0)
@constraint(m, e78, x[58]-29*b[116] <= 0.0)
@constraint(m, e79, x[59]-29*b[118] <= 0.0)
@constraint(m, e80, x[60]-29*b[119] <= 0.0)
@constraint(m, e81, x[61]-29*b[121] <= 0.0)
@constraint(m, e82, x[62]-29*b[122] <= 0.0)
@constraint(m, e83, x[63]-40*b[111] <= 0.0)
@constraint(m, e84, x[64]-40*b[112] <= 0.0)
@constraint(m, e85, x[65]-40*b[114] <= 0.0)
@constraint(m, e86, x[66]-40*b[115] <= 0.0)
@constraint(m, e87, x[67]-40*b[117] <= 0.0)
@constraint(m, e88, x[68]-40*b[118] <= 0.0)
@constraint(m, e89, x[69]-40*b[120] <= 0.0)
@constraint(m, e90, x[70]-40*b[121] <= 0.0)
@constraint(m, e91, x[71]-40*b[111] <= 0.0)
@constraint(m, e92, x[72]-50*b[113] <= 0.0)
@constraint(m, e93, x[73]-40*b[114] <= 0.0)
@constraint(m, e94, x[74]-50*b[116] <= 0.0)
@constraint(m, e95, x[75]-40*b[117] <= 0.0)
@constraint(m, e96, x[76]-50*b[119] <= 0.0)
@constraint(m, e97, x[77]-40*b[120] <= 0.0)
@constraint(m, e98, x[78]-50*b[122] <= 0.0)
@constraint(m, e99, x[79]-40*b[112] <= 0.0)
@constraint(m, e100, x[80]-50*b[113] <= 0.0)
@constraint(m, e101, x[81]-40*b[115] <= 0.0)
@constraint(m, e102, x[82]-50*b[116] <= 0.0)
@constraint(m, e103, x[83]-40*b[118] <= 0.0)
@constraint(m, e104, x[84]-50*b[119] <= 0.0)
@constraint(m, e105, x[85]-40*b[121] <= 0.0)
@constraint(m, e106, x[86]-50*b[122] <= 0.0)
@constraint(m, e107, x[87]-40*b[111] <= 0.0)
@constraint(m, e108, x[88]-40*b[112] <= 0.0)
@constraint(m, e109, x[89]-40*b[114] <= 0.0)
@constraint(m, e110, x[90]-40*b[115] <= 0.0)
@constraint(m, e111, x[91]-40*b[117] <= 0.0)
@constraint(m, e112, x[92]-40*b[118] <= 0.0)
@constraint(m, e113, x[93]-40*b[120] <= 0.0)
@constraint(m, e114, x[94]-40*b[121] <= 0.0)
@constraint(m, e115, x[95]-40*b[111] <= 0.0)
@constraint(m, e116, x[96]-50*b[113] <= 0.0)
@constraint(m, e117, x[97]-40*b[114] <= 0.0)
@constraint(m, e118, x[98]-50*b[116] <= 0.0)
@constraint(m, e119, x[99]-40*b[117] <= 0.0)
@constraint(m, e120, x[100]-50*b[119] <= 0.0)
@constraint(m, e121, x[101]-40*b[120] <= 0.0)
@constraint(m, e122, x[102]-50*b[122] <= 0.0)
@constraint(m, e123, x[103]-40*b[112] <= 0.0)
@constraint(m, e124, x[104]-50*b[113] <= 0.0)
@constraint(m, e125, x[105]-40*b[115] <= 0.0)
@constraint(m, e126, x[106]-50*b[116] <= 0.0)
@constraint(m, e127, x[107]-40*b[118] <= 0.0)
@constraint(m, e128, x[108]-50*b[119] <= 0.0)
@constraint(m, e129, x[109]-40*b[121] <= 0.0)
@constraint(m, e130, x[110]-50*b[122] <= 0.0)
@constraint(m, e131, x[15]-x[23]+x[63] <= 0.0)
@constraint(m, e132, x[16]-x[31]+x[64] <= 0.0)
@constraint(m, e133, x[24]-x[32]+x[72] <= 0.0)
@constraint(m, e134, -x[17]+x[25]+x[73] <= 0.0)
@constraint(m, e135, -x[18]+x[33]+x[81] <= 0.0)
@constraint(m, e136, -x[26]+x[34]+x[82] <= 0.0)
@constraint(m, e137, x[43]-x[51]+x[91] <= 0.0)
@constraint(m, e138, x[44]-x[59]+x[92] <= 0.0)
@constraint(m, e139, x[52]-x[60]+x[100] <= 0.0)
@constraint(m, e140, -x[45]+x[53]+x[101] <= 0.0)
@constraint(m, e141, -x[46]+x[61]+x[109] <= 0.0)
@constraint(m, e142, -x[54]+x[62]+x[110] <= 0.0)
@constraint(m, e143, b[111]+b[114]+b[117]+b[120] == 1.0)
@constraint(m, e144, b[112]+b[115]+b[118]+b[121] == 1.0)
@constraint(m, e145, b[113]+b[116]+b[119]+b[122] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[123])
m = m 		 # model get returned when including this script. 
