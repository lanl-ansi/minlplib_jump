using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 94, 95, 96, 97, 98, 99, 100]
@variable(m, x[x_Idx])
b_Idx = Any[73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93]
@variable(m, b[b_Idx])
setlowerbound(x[16], 0.0)
setcategory(b[78], :Bin)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setcategory(b[75], :Bin)
setcategory(b[85], :Bin)
setlowerbound(x[42], 0.0)
setcategory(b[80], :Bin)
setcategory(b[82], :Bin)
setlowerbound(x[56], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setcategory(b[81], :Bin)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setcategory(b[90], :Bin)
setlowerbound(x[36], 0.0)
setcategory(b[87], :Bin)
setlowerbound(x[54], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[27], 0.0)
setcategory(b[77], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[84], :Bin)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setcategory(b[79], :Bin)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setcategory(b[74], :Bin)
setcategory(b[89], :Bin)
setlowerbound(x[24], 0.0)
setcategory(b[92], :Bin)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setcategory(b[86], :Bin)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setcategory(b[83], :Bin)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setcategory(b[76], :Bin)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setcategory(b[88], :Bin)
setlowerbound(x[60], 0.0)
setlowerbound(x[17], 0.0)
setcategory(b[93], :Bin)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setcategory(b[91], :Bin)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[70], 0.0)
setcategory(b[73], :Bin)
setlowerbound(x[65], 0.0)
setlowerbound(x[1], 11.5)
setupperbound(x[1], 52.5)
setlowerbound(x[2], 12.5)
setupperbound(x[2], 51.5)
setlowerbound(x[3], 10.5)
setupperbound(x[3], 53.5)
setlowerbound(x[4], 7.0)
setupperbound(x[4], 82.0)
setlowerbound(x[5], 6.5)
setupperbound(x[5], 82.5)
setlowerbound(x[6], 5.5)
setupperbound(x[6], 83.5)


# ----- Constraints ----- #
@constraint(m, e1, -300*x[94]-240*x[95]-100*x[96]-300*x[97]-240*x[98]-100*x[99]+x[100] == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[94] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[95] >= 0.0)
@constraint(m, e4, -x[2]+x[3]+x[96] >= 0.0)
@constraint(m, e5, x[1]-x[2]+x[94] >= 0.0)
@constraint(m, e6, x[1]-x[3]+x[95] >= 0.0)
@constraint(m, e7, x[2]-x[3]+x[96] >= 0.0)
@constraint(m, e8, -x[4]+x[5]+x[97] >= 0.0)
@constraint(m, e9, -x[4]+x[6]+x[98] >= 0.0)
@constraint(m, e10, -x[5]+x[6]+x[99] >= 0.0)
@constraint(m, e11, x[4]-x[5]+x[97] >= 0.0)
@constraint(m, e12, x[4]-x[6]+x[98] >= 0.0)
@constraint(m, e13, x[5]-x[6]+x[99] >= 0.0)
@constraint(m, e14, x[1]-x[7]-x[9]-x[11]-x[13] == 0.0)
@constraint(m, e15, x[1]-x[8]-x[10]-x[12]-x[14] == 0.0)
@constraint(m, e16, x[2]-x[15]-x[17]-x[19]-x[21] == 0.0)
@constraint(m, e17, x[2]-x[16]-x[18]-x[20]-x[22] == 0.0)
@constraint(m, e18, x[3]-x[23]-x[25]-x[27]-x[29] == 0.0)
@constraint(m, e19, x[3]-x[24]-x[26]-x[28]-x[30] == 0.0)
@constraint(m, e20, x[4]-x[31]-x[33]-x[35]-x[37] == 0.0)
@constraint(m, e21, x[4]-x[32]-x[34]-x[36]-x[38] == 0.0)
@constraint(m, e22, x[5]-x[39]-x[41]-x[43]-x[45] == 0.0)
@constraint(m, e23, x[5]-x[40]-x[42]-x[44]-x[46] == 0.0)
@constraint(m, e24, x[6]-x[47]-x[49]-x[51]-x[53] == 0.0)
@constraint(m, e25, x[6]-x[48]-x[50]-x[52]-x[54] == 0.0)
@constraint(m, e26, x[7]-52.5*b[73] <= 0.0)
@constraint(m, e27, x[8]-52.5*b[74] <= 0.0)
@constraint(m, e28, x[9]-52.5*b[76] <= 0.0)
@constraint(m, e29, x[10]-52.5*b[77] <= 0.0)
@constraint(m, e30, x[11]-52.5*b[79] <= 0.0)
@constraint(m, e31, x[12]-52.5*b[80] <= 0.0)
@constraint(m, e32, x[13]-52.5*b[82] <= 0.0)
@constraint(m, e33, x[14]-52.5*b[83] <= 0.0)
@constraint(m, e34, x[15]-52.5*b[73] <= 0.0)
@constraint(m, e35, x[16]-51.5*b[75] <= 0.0)
@constraint(m, e36, x[17]-52.5*b[76] <= 0.0)
@constraint(m, e37, x[18]-51.5*b[78] <= 0.0)
@constraint(m, e38, x[19]-52.5*b[79] <= 0.0)
@constraint(m, e39, x[20]-51.5*b[81] <= 0.0)
@constraint(m, e40, x[21]-52.5*b[82] <= 0.0)
@constraint(m, e41, x[22]-51.5*b[84] <= 0.0)
@constraint(m, e42, x[23]-52.5*b[74] <= 0.0)
@constraint(m, e43, x[24]-51.5*b[75] <= 0.0)
@constraint(m, e44, x[25]-52.5*b[77] <= 0.0)
@constraint(m, e45, x[26]-51.5*b[78] <= 0.0)
@constraint(m, e46, x[27]-52.5*b[80] <= 0.0)
@constraint(m, e47, x[28]-51.5*b[81] <= 0.0)
@constraint(m, e48, x[29]-52.5*b[83] <= 0.0)
@constraint(m, e49, x[30]-51.5*b[84] <= 0.0)
@constraint(m, e50, x[31]-82*b[73] <= 0.0)
@constraint(m, e51, x[32]-82*b[74] <= 0.0)
@constraint(m, e52, x[33]-82*b[76] <= 0.0)
@constraint(m, e53, x[34]-82*b[77] <= 0.0)
@constraint(m, e54, x[35]-82*b[79] <= 0.0)
@constraint(m, e55, x[36]-82*b[80] <= 0.0)
@constraint(m, e56, x[37]-82*b[82] <= 0.0)
@constraint(m, e57, x[38]-82*b[83] <= 0.0)
@constraint(m, e58, x[39]-82*b[73] <= 0.0)
@constraint(m, e59, x[40]-82.5*b[75] <= 0.0)
@constraint(m, e60, x[41]-82*b[76] <= 0.0)
@constraint(m, e61, x[42]-82.5*b[78] <= 0.0)
@constraint(m, e62, x[43]-82*b[79] <= 0.0)
@constraint(m, e63, x[44]-82.5*b[81] <= 0.0)
@constraint(m, e64, x[45]-82*b[82] <= 0.0)
@constraint(m, e65, x[46]-82.5*b[84] <= 0.0)
@constraint(m, e66, x[47]-82*b[74] <= 0.0)
@constraint(m, e67, x[48]-82.5*b[75] <= 0.0)
@constraint(m, e68, x[49]-82*b[77] <= 0.0)
@constraint(m, e69, x[50]-82.5*b[78] <= 0.0)
@constraint(m, e70, x[51]-82*b[80] <= 0.0)
@constraint(m, e71, x[52]-82.5*b[81] <= 0.0)
@constraint(m, e72, x[53]-82*b[83] <= 0.0)
@constraint(m, e73, x[54]-82.5*b[84] <= 0.0)
@constraint(m, e74, x[7]-x[15]+6*b[73] <= 0.0)
@constraint(m, e75, x[8]-x[23]+4*b[74] <= 0.0)
@constraint(m, e76, x[16]-x[24]+5*b[75] <= 0.0)
@constraint(m, e77, -x[9]+x[17]+6*b[76] <= 0.0)
@constraint(m, e78, -x[10]+x[25]+4*b[77] <= 0.0)
@constraint(m, e79, -x[18]+x[26]+5*b[78] <= 0.0)
@constraint(m, e80, x[35]-x[43]+5.5*b[79] <= 0.0)
@constraint(m, e81, x[36]-x[51]+4.5*b[80] <= 0.0)
@constraint(m, e82, x[44]-x[52]+4*b[81] <= 0.0)
@constraint(m, e83, -x[37]+x[45]+5.5*b[82] <= 0.0)
@constraint(m, e84, -x[38]+x[53]+4.5*b[83] <= 0.0)
@constraint(m, e85, -x[46]+x[54]+4*b[84] <= 0.0)
@constraint(m, e86, b[73]+b[76]+b[79]+b[82] == 1.0)
@constraint(m, e87, b[74]+b[77]+b[80]+b[83] == 1.0)
@constraint(m, e88, b[75]+b[78]+b[81]+b[84] == 1.0)
@constraint(m, e89, x[1]-x[55]-x[58]-x[61] == 0.0)
@constraint(m, e90, x[2]-x[56]-x[59]-x[62] == 0.0)
@constraint(m, e91, x[3]-x[57]-x[60]-x[63] == 0.0)
@constraint(m, e92, x[4]-x[64]-x[67]-x[70] == 0.0)
@constraint(m, e93, x[5]-x[65]-x[68]-x[71] == 0.0)
@constraint(m, e94, x[6]-x[66]-x[69]-x[72] == 0.0)
@constraint(m, e95, x[55]-18.5*b[85] <= 0.0)
@constraint(m, e96, x[56]-17.5*b[86] <= 0.0)
@constraint(m, e97, x[57]-19.5*b[87] <= 0.0)
@constraint(m, e98, x[58]-52.5*b[88] <= 0.0)
@constraint(m, e99, x[59]-51.5*b[89] <= 0.0)
@constraint(m, e100, x[60]-53.5*b[90] <= 0.0)
@constraint(m, e101, x[61]-31.5*b[91] <= 0.0)
@constraint(m, e102, x[62]-30.5*b[92] <= 0.0)
@constraint(m, e103, x[63]-32.5*b[93] <= 0.0)
@constraint(m, e104, x[64]-13*b[85] <= 0.0)
@constraint(m, e105, x[65]-13.5*b[86] <= 0.0)
@constraint(m, e106, x[66]-14.5*b[87] <= 0.0)
@constraint(m, e107, x[67]-82*b[88] <= 0.0)
@constraint(m, e108, x[68]-82.5*b[89] <= 0.0)
@constraint(m, e109, x[69]-83.5*b[90] <= 0.0)
@constraint(m, e110, x[70]-51*b[91] <= 0.0)
@constraint(m, e111, x[71]-51.5*b[92] <= 0.0)
@constraint(m, e112, x[72]-52.5*b[93] <= 0.0)
@NLconstraint(m, e113, ( (x[55]/(1e-6+b[85]))^2-35*x[55]/(1e-6+b[85])+306.25*b[85]+ (x[64]/(1e-6+b[85]))^2-14*x[64]/(1e-6+b[85])+49*b[85]-36*b[85])*(1e-6+b[85]) <= 0.0)
@NLconstraint(m, e114, ( (x[56]/(1e-6+b[86]))^2-37*x[56]/(1e-6+b[86])+342.25*b[86]+ (x[65]/(1e-6+b[86]))^2-15*x[65]/(1e-6+b[86])+56.25*b[86]-36*b[86])*(1e-6+b[86]) <= 0.0)
@NLconstraint(m, e115, ( (x[57]/(1e-6+b[87]))^2-33*x[57]/(1e-6+b[87])+272.25*b[87]+ (x[66]/(1e-6+b[87]))^2-17*x[66]/(1e-6+b[87])+72.25*b[87]-36*b[87])*(1e-6+b[87]) <= 0.0)
@NLconstraint(m, e116, ( (x[58]/(1e-6+b[88]))^2-105*x[58]/(1e-6+b[88])+2756.25*b[88]+ (x[67]/(1e-6+b[88]))^2-154*x[67]/(1e-6+b[88])+5929*b[88]-25*b[88])*(1e-6+b[88]) <= 0.0)
@NLconstraint(m, e117, ( (x[59]/(1e-6+b[89]))^2-107*x[59]/(1e-6+b[89])+2862.25*b[89]+ (x[68]/(1e-6+b[89]))^2-155*x[68]/(1e-6+b[89])+6006.25*b[89]-25*b[89])*(1e-6+b[89]) <= 0.0)
@NLconstraint(m, e118, ( (x[60]/(1e-6+b[90]))^2-103*x[60]/(1e-6+b[90])+2652.25*b[90]+ (x[69]/(1e-6+b[90]))^2-157*x[69]/(1e-6+b[90])+6162.25*b[90]-25*b[90])*(1e-6+b[90]) <= 0.0)
@NLconstraint(m, e119, ( (x[61]/(1e-6+b[91]))^2-65*x[61]/(1e-6+b[91])+1056.25*b[91]+ (x[70]/(1e-6+b[91]))^2-94*x[70]/(1e-6+b[91])+2209*b[91]-16*b[91])*(1e-6+b[91]) <= 0.0)
@NLconstraint(m, e120, ( (x[62]/(1e-6+b[92]))^2-67*x[62]/(1e-6+b[92])+1122.25*b[92]+ (x[71]/(1e-6+b[92]))^2-95*x[71]/(1e-6+b[92])+2256.25*b[92]-16*b[92])*(1e-6+b[92]) <= 0.0)
@NLconstraint(m, e121, ( (x[63]/(1e-6+b[93]))^2-63*x[63]/(1e-6+b[93])+992.25*b[93]+ (x[72]/(1e-6+b[93]))^2-97*x[72]/(1e-6+b[93])+2352.25*b[93]-16*b[93])*(1e-6+b[93]) <= 0.0)
@NLconstraint(m, e122, ( (x[55]/(1e-6+b[85]))^2-35*x[55]/(1e-6+b[85])+306.25*b[85]+ (x[64]/(1e-6+b[85]))^2-26*x[64]/(1e-6+b[85])+169*b[85]-36*b[85])*(1e-6+b[85]) <= 0.0)
@NLconstraint(m, e123, ( (x[56]/(1e-6+b[86]))^2-37*x[56]/(1e-6+b[86])+342.25*b[86]+ (x[65]/(1e-6+b[86]))^2-25*x[65]/(1e-6+b[86])+156.25*b[86]-36*b[86])*(1e-6+b[86]) <= 0.0)
@NLconstraint(m, e124, ( (x[57]/(1e-6+b[87]))^2-33*x[57]/(1e-6+b[87])+272.25*b[87]+ (x[66]/(1e-6+b[87]))^2-23*x[66]/(1e-6+b[87])+132.25*b[87]-36*b[87])*(1e-6+b[87]) <= 0.0)
@NLconstraint(m, e125, ( (x[58]/(1e-6+b[88]))^2-105*x[58]/(1e-6+b[88])+2756.25*b[88]+ (x[67]/(1e-6+b[88]))^2-166*x[67]/(1e-6+b[88])+6889*b[88]-25*b[88])*(1e-6+b[88]) <= 0.0)
@NLconstraint(m, e126, ( (x[59]/(1e-6+b[89]))^2-107*x[59]/(1e-6+b[89])+2862.25*b[89]+ (x[68]/(1e-6+b[89]))^2-165*x[68]/(1e-6+b[89])+6806.25*b[89]-25*b[89])*(1e-6+b[89]) <= 0.0)
@NLconstraint(m, e127, ( (x[60]/(1e-6+b[90]))^2-103*x[60]/(1e-6+b[90])+2652.25*b[90]+ (x[69]/(1e-6+b[90]))^2-163*x[69]/(1e-6+b[90])+6642.25*b[90]-25*b[90])*(1e-6+b[90]) <= 0.0)
@NLconstraint(m, e128, ( (x[61]/(1e-6+b[91]))^2-65*x[61]/(1e-6+b[91])+1056.25*b[91]+ (x[70]/(1e-6+b[91]))^2-106*x[70]/(1e-6+b[91])+2809*b[91]-16*b[91])*(1e-6+b[91]) <= 0.0)
@NLconstraint(m, e129, ( (x[62]/(1e-6+b[92]))^2-67*x[62]/(1e-6+b[92])+1122.25*b[92]+ (x[71]/(1e-6+b[92]))^2-105*x[71]/(1e-6+b[92])+2756.25*b[92]-16*b[92])*(1e-6+b[92]) <= 0.0)
@NLconstraint(m, e130, ( (x[63]/(1e-6+b[93]))^2-63*x[63]/(1e-6+b[93])+992.25*b[93]+ (x[72]/(1e-6+b[93]))^2-103*x[72]/(1e-6+b[93])+2652.25*b[93]-16*b[93])*(1e-6+b[93]) <= 0.0)
@NLconstraint(m, e131, ( (x[55]/(1e-6+b[85]))^2-25*x[55]/(1e-6+b[85])+156.25*b[85]+ (x[64]/(1e-6+b[85]))^2-14*x[64]/(1e-6+b[85])+49*b[85]-36*b[85])*(1e-6+b[85]) <= 0.0)
@NLconstraint(m, e132, ( (x[56]/(1e-6+b[86]))^2-23*x[56]/(1e-6+b[86])+132.25*b[86]+ (x[65]/(1e-6+b[86]))^2-15*x[65]/(1e-6+b[86])+56.25*b[86]-36*b[86])*(1e-6+b[86]) <= 0.0)
@NLconstraint(m, e133, ( (x[57]/(1e-6+b[87]))^2-27*x[57]/(1e-6+b[87])+182.25*b[87]+ (x[66]/(1e-6+b[87]))^2-17*x[66]/(1e-6+b[87])+72.25*b[87]-36*b[87])*(1e-6+b[87]) <= 0.0)
@NLconstraint(m, e134, ( (x[58]/(1e-6+b[88]))^2-95*x[58]/(1e-6+b[88])+2256.25*b[88]+ (x[67]/(1e-6+b[88]))^2-154*x[67]/(1e-6+b[88])+5929*b[88]-25*b[88])*(1e-6+b[88]) <= 0.0)
@NLconstraint(m, e135, ( (x[59]/(1e-6+b[89]))^2-93*x[59]/(1e-6+b[89])+2162.25*b[89]+ (x[68]/(1e-6+b[89]))^2-155*x[68]/(1e-6+b[89])+6006.25*b[89]-25*b[89])*(1e-6+b[89]) <= 0.0)
@NLconstraint(m, e136, ( (x[60]/(1e-6+b[90]))^2-97*x[60]/(1e-6+b[90])+2352.25*b[90]+ (x[69]/(1e-6+b[90]))^2-157*x[69]/(1e-6+b[90])+6162.25*b[90]-25*b[90])*(1e-6+b[90]) <= 0.0)
@NLconstraint(m, e137, ( (x[61]/(1e-6+b[91]))^2-55*x[61]/(1e-6+b[91])+756.25*b[91]+ (x[70]/(1e-6+b[91]))^2-94*x[70]/(1e-6+b[91])+2209*b[91]-16*b[91])*(1e-6+b[91]) <= 0.0)
@NLconstraint(m, e138, ( (x[62]/(1e-6+b[92]))^2-53*x[62]/(1e-6+b[92])+702.25*b[92]+ (x[71]/(1e-6+b[92]))^2-95*x[71]/(1e-6+b[92])+2256.25*b[92]-16*b[92])*(1e-6+b[92]) <= 0.0)
@NLconstraint(m, e139, ( (x[63]/(1e-6+b[93]))^2-57*x[63]/(1e-6+b[93])+812.25*b[93]+ (x[72]/(1e-6+b[93]))^2-97*x[72]/(1e-6+b[93])+2352.25*b[93]-16*b[93])*(1e-6+b[93]) <= 0.0)
@NLconstraint(m, e140, ( (x[55]/(1e-6+b[85]))^2-25*x[55]/(1e-6+b[85])+156.25*b[85]+ (x[64]/(1e-6+b[85]))^2-26*x[64]/(1e-6+b[85])+169*b[85]-36*b[85])*(1e-6+b[85]) <= 0.0)
@NLconstraint(m, e141, ( (x[56]/(1e-6+b[86]))^2-23*x[56]/(1e-6+b[86])+132.25*b[86]+ (x[65]/(1e-6+b[86]))^2-25*x[65]/(1e-6+b[86])+156.25*b[86]-36*b[86])*(1e-6+b[86]) <= 0.0)
@NLconstraint(m, e142, ( (x[57]/(1e-6+b[87]))^2-27*x[57]/(1e-6+b[87])+182.25*b[87]+ (x[66]/(1e-6+b[87]))^2-23*x[66]/(1e-6+b[87])+132.25*b[87]-36*b[87])*(1e-6+b[87]) <= 0.0)
@NLconstraint(m, e143, ( (x[58]/(1e-6+b[88]))^2-95*x[58]/(1e-6+b[88])+2256.25*b[88]+ (x[67]/(1e-6+b[88]))^2-166*x[67]/(1e-6+b[88])+6889*b[88]-25*b[88])*(1e-6+b[88]) <= 0.0)
@NLconstraint(m, e144, ( (x[59]/(1e-6+b[89]))^2-93*x[59]/(1e-6+b[89])+2162.25*b[89]+ (x[68]/(1e-6+b[89]))^2-165*x[68]/(1e-6+b[89])+6806.25*b[89]-25*b[89])*(1e-6+b[89]) <= 0.0)
@NLconstraint(m, e145, ( (x[60]/(1e-6+b[90]))^2-97*x[60]/(1e-6+b[90])+2352.25*b[90]+ (x[69]/(1e-6+b[90]))^2-163*x[69]/(1e-6+b[90])+6642.25*b[90]-25*b[90])*(1e-6+b[90]) <= 0.0)
@NLconstraint(m, e146, ( (x[61]/(1e-6+b[91]))^2-55*x[61]/(1e-6+b[91])+756.25*b[91]+ (x[70]/(1e-6+b[91]))^2-106*x[70]/(1e-6+b[91])+2809*b[91]-16*b[91])*(1e-6+b[91]) <= 0.0)
@NLconstraint(m, e147, ( (x[62]/(1e-6+b[92]))^2-53*x[62]/(1e-6+b[92])+702.25*b[92]+ (x[71]/(1e-6+b[92]))^2-105*x[71]/(1e-6+b[92])+2756.25*b[92]-16*b[92])*(1e-6+b[92]) <= 0.0)
@NLconstraint(m, e148, ( (x[63]/(1e-6+b[93]))^2-57*x[63]/(1e-6+b[93])+812.25*b[93]+ (x[72]/(1e-6+b[93]))^2-103*x[72]/(1e-6+b[93])+2652.25*b[93]-16*b[93])*(1e-6+b[93]) <= 0.0)
@constraint(m, e149, b[85]+b[88]+b[91] == 1.0)
@constraint(m, e150, b[86]+b[89]+b[92] == 1.0)
@constraint(m, e151, b[87]+b[90]+b[93] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[100])
m = m 		 # model get returned when including this script. 
