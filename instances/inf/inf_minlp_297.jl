using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[35], 0.0)
set_upper_bound(i[35], 100.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(i[33], 0.0)
set_upper_bound(i[33], 100.0)
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(i[31], 0.0)
set_upper_bound(i[31], 100.0)
set_lower_bound(i[34], 0.0)
set_upper_bound(i[34], 100.0)
set_lower_bound(i[22], 0.0)
set_upper_bound(i[22], 100.0)
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 100.0)
set_lower_bound(i[15], 0.0)
set_upper_bound(i[15], 100.0)
set_lower_bound(i[25], 0.0)
set_upper_bound(i[25], 100.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(i[21], 0.0)
set_upper_bound(i[21], 100.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[13], 0.0)
set_upper_bound(i[13], 100.0)
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(i[26], 0.0)
set_upper_bound(i[26], 100.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 100.0)
set_lower_bound(i[18], 0.0)
set_upper_bound(i[18], 100.0)
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_lower_bound(i[19], 0.0)
set_upper_bound(i[19], 100.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(i[32], 0.0)
set_upper_bound(i[32], 100.0)
set_lower_bound(i[28], 0.0)
set_upper_bound(i[28], 100.0)
set_lower_bound(i[36], 0.0)
set_upper_bound(i[36], 100.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(i[17], 0.0)
set_upper_bound(i[17], 100.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_lower_bound(i[20], 0.0)
set_upper_bound(i[20], 100.0)
set_lower_bound(i[23], 0.0)
set_upper_bound(i[23], 100.0)
set_lower_bound(i[12], 0.0)
set_upper_bound(i[12], 100.0)
set_lower_bound(i[27], 0.0)
set_upper_bound(i[27], 100.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(i[24], 0.0)
set_upper_bound(i[24], 100.0)
set_lower_bound(i[29], 0.0)
set_upper_bound(i[29], 100.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(i[16], 0.0)
set_upper_bound(i[16], 100.0)
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(i[30], 0.0)
set_upper_bound(i[30], 100.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 3.0)
set_lower_bound(i[3], 1.0)
set_upper_bound(i[3], 3.0)
set_lower_bound(i[4], 1.0)
set_upper_bound(i[4], 3.0)
set_lower_bound(i[5], 1.0)
set_upper_bound(i[5], 3.0)
set_lower_bound(i[6], 1.0)
set_upper_bound(i[6], 3.0)
set_lower_bound(i[7], 1.0)
set_upper_bound(i[7], 3.0)
set_lower_bound(i[8], 1.0)
set_upper_bound(i[8], 3.0)
set_lower_bound(i[9], 1.0)
set_upper_bound(i[9], 3.0)
set_lower_bound(i[10], 1.0)
set_upper_bound(i[10], 3.0)
set_lower_bound(i[11], 1.0)
set_upper_bound(i[11], 3.0)
set_lower_bound(i[12], 1.0)
set_upper_bound(i[12], 3.0)
set_lower_bound(i[13], 1.0)
set_upper_bound(i[13], 3.0)
set_lower_bound(i[14], 1.0)
set_upper_bound(i[14], 3.0)
set_lower_bound(i[15], 1.0)
set_upper_bound(i[15], 3.0)
set_lower_bound(i[16], 1.0)
set_upper_bound(i[16], 3.0)
set_lower_bound(i[17], 1.0)
set_upper_bound(i[17], 3.0)
set_lower_bound(i[18], 1.0)
set_upper_bound(i[18], 3.0)
set_lower_bound(i[19], 1.0)
set_upper_bound(i[19], 3.0)
set_lower_bound(i[20], 1.0)
set_upper_bound(i[20], 3.0)
set_lower_bound(i[21], 1.0)
set_upper_bound(i[21], 3.0)
set_lower_bound(i[22], 1.0)
set_upper_bound(i[22], 3.0)
set_lower_bound(i[23], 1.0)
set_upper_bound(i[23], 3.0)
set_lower_bound(i[24], 1.0)
set_upper_bound(i[24], 3.0)
set_lower_bound(i[25], 1.0)
set_upper_bound(i[25], 3.0)
set_lower_bound(i[26], 1.0)
set_upper_bound(i[26], 3.0)
set_lower_bound(i[27], 1.0)
set_upper_bound(i[27], 3.0)
set_lower_bound(i[28], 1.0)
set_upper_bound(i[28], 3.0)
set_lower_bound(i[29], 1.0)
set_upper_bound(i[29], 3.0)
set_lower_bound(i[30], 1.0)
set_upper_bound(i[30], 3.0)
set_lower_bound(i[31], 1.0)
set_upper_bound(i[31], 3.0)
set_lower_bound(i[32], 1.0)
set_upper_bound(i[32], 3.0)
set_lower_bound(i[33], 1.0)
set_upper_bound(i[33], 3.0)
set_lower_bound(i[34], 1.0)
set_upper_bound(i[34], 3.0)
set_lower_bound(i[35], 1.0)
set_upper_bound(i[35], 3.0)
set_lower_bound(i[36], 1.0)
set_upper_bound(i[36], 3.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-7.04*i[2]-106.92*i[3]-42.78*i[4]-64.14*i[5]-97.2*i[6]-60.24*i[7]-42.47*i[8]-52.5*i[9]-44.7*i[10]-31.08*i[11]-30.63*i[12]-31.08*i[13]-83.58*i[14]-83.58*i[15]-42.47*i[16]-42.47*i[17]-42.47*i[18]-42.47*i[19]-24.1*i[20]-21.16*i[21]-24.1*i[22]-48.9*i[23]-43.79*i[24]-19.7*i[25]-8.76*i[26]-24.81*i[27]-26.27*i[28]-13.11*i[29]-11.7*i[30]-7.29*i[31]-53.31*i[32]-13.11*i[33]-20.05*i[34]-10.93*i[35]-34.32*i[36] == -1353.23)
@NLconstraint(m, e2, -1000*i[2]*(x[37]-x[38])+x[61] == 0.0)
@NLconstraint(m, e3, -65.814*i[3]*(x[37]-x[39])+x[62] == 0.0)
@NLconstraint(m, e4, -164.497*i[4]*(x[37]-x[41])+x[63] == 0.0)
@NLconstraint(m, e5, -109.708*i[5]*(x[38]-x[40])+x[64] == 0.0)
@NLconstraint(m, e6, -72.396*i[6]*(x[38]-x[42])+x[65] == 0.0)
@NLconstraint(m, e7, -116.807*i[7]*(x[39]-x[45])+x[66] == 0.0)
@NLconstraint(m, e8, -165.673*i[8]*(x[39]-x[60])+x[67] == 0.0)
@NLconstraint(m, e9, -134.041*i[9]*(x[40]-x[45])+x[68] == 0.0)
@NLconstraint(m, e10, -157.418*i[10]*(x[41]-x[46])+x[69] == 0.0)
@NLconstraint(m, e11, -226.384*i[11]*(x[42]-x[44])+x[70] == 0.0)
@NLconstraint(m, e12, -229.752*i[12]*(x[42]-x[46])+x[71] == 0.0)
@NLconstraint(m, e13, -226.384*i[13]*(x[43]-x[44])+x[72] == 0.0)
@NLconstraint(m, e14, -84.191*i[14]*(x[44]-x[45])+x[73] == 0.0)
@NLconstraint(m, e15, -84.191*i[15]*(x[44]-x[46])+x[74] == 0.0)
@NLconstraint(m, e16, -165.673*i[16]*(x[45]-x[47])+x[75] == 0.0)
@NLconstraint(m, e17, -165.673*i[17]*(x[45]-x[48])+x[76] == 0.0)
@NLconstraint(m, e18, -165.673*i[18]*(x[46]-x[47])+x[77] == 0.0)
@NLconstraint(m, e19, -165.673*i[19]*(x[46]-x[48])+x[78] == 0.0)
@NLconstraint(m, e20, -292.017*i[20]*(x[47]-x[49])+x[79] == 0.0)
@NLconstraint(m, e21, -332.536*i[21]*(x[47]-x[50])+x[80] == 0.0)
@NLconstraint(m, e22, -292.017*i[22]*(x[48]-x[49])+x[81] == 0.0)
@NLconstraint(m, e23, -143.892*i[23]*(x[48]-x[59])+x[82] == 0.0)
@NLconstraint(m, e24, -160.694*i[24]*(x[49]-x[59])+x[83] == 0.0)
@NLconstraint(m, e25, -284.254*i[25]*(x[50]-x[52])+x[84] == 0.0)
@NLconstraint(m, e26, -803.468*i[26]*(x[51]-x[52])+x[85] == 0.0)
@NLconstraint(m, e27, -283.673*i[27]*(x[51]-x[57])+x[86] == 0.0)
@NLconstraint(m, e28, -267.823*i[28]*(x[51]-x[60])+x[87] == 0.0)
@NLconstraint(m, e29, -536.68*i[29]*(x[52]-x[53])+x[88] == 0.0)
@NLconstraint(m, e30, -601.732*i[30]*(x[52]-x[55])+x[89] == 0.0)
@NLconstraint(m, e31, -965.278*i[31]*(x[53]-x[54])+x[90] == 0.0)
@NLconstraint(m, e32, -132.004*i[32]*(x[53]-x[58])+x[91] == 0.0)
@NLconstraint(m, e33, -536.68*i[33]*(x[54]-x[57])+x[92] == 0.0)
@NLconstraint(m, e34, -351.01*i[34]*(x[55]-x[56])+x[93] == 0.0)
@NLconstraint(m, e35, -643.519*i[35]*(x[56]-x[59])+x[94] == 0.0)
@NLconstraint(m, e36, -205.015*i[36]*(x[57]-x[58])+x[95] == 0.0)
@constraint(m, e37, x[61]+x[62]+x[63] == 22.45614)
@constraint(m, e38, -x[61]+x[64]+x[65] == 26.315789)
@constraint(m, e39, -x[62]+x[66]+x[67] == -63.157895)
@constraint(m, e40, -x[64]+x[68] == -25.964912)
@constraint(m, e41, -x[63]+x[69] == -24.912281)
@constraint(m, e42, -x[65]+x[70]+x[71] == -47.719298)
@constraint(m, e43, x[72] == 40.350877)
@constraint(m, e44, -x[70]-x[72]+x[73]+x[74] == -60.0)
@constraint(m, e45, -x[66]-x[68]-x[73]+x[75]+x[76] == -61.403509)
@constraint(m, e46, -x[69]-x[71]-x[74]+x[77]+x[78] == -68.421053)
@constraint(m, e47, -x[75]-x[77]+x[79]+x[80] == 0.0)
@constraint(m, e48, -x[76]-x[78]+x[81]+x[82] == 0.0)
@constraint(m, e49, -x[79]-x[81]+x[83] == 7.12280699999999)
@constraint(m, e50, -x[80]+x[84] == -68.070175)
@constraint(m, e51, x[85]+x[86]+x[87] == -35.789474)
@constraint(m, e52, -x[84]-x[85]+x[88]+x[89] == 19.298246)
@constraint(m, e53, -x[88]+x[90]+x[91] == 0.0)
@constraint(m, e54, -x[90]+x[92] == 23.508772)
@constraint(m, e55, -x[89]+x[93] == -63.508772)
@constraint(m, e56, -x[93]+x[94] == -44.912281)
@constraint(m, e57, -x[86]-x[92]+x[95] == 140.350877)
@constraint(m, e58, -x[91]-x[95] == 105.263158)
@constraint(m, e59, -x[82]-x[83]-x[94] == 231.578947)
@constraint(m, e60, -x[67]-x[87] == 0.0)
@constraint(m, e61, 61.403509*i[2]+x[61] >= 0.0)
@constraint(m, e62, 61.403509*i[3]+x[62] >= 0.0)
@constraint(m, e63, 61.403509*i[4]+x[63] >= 0.0)
@constraint(m, e64, 61.403509*i[5]+x[64] >= 0.0)
@constraint(m, e65, 61.403509*i[6]+x[65] >= 0.0)
@constraint(m, e66, 61.403509*i[7]+x[66] >= 0.0)
@constraint(m, e67, 140.350877*i[8]+x[67] >= 0.0)
@constraint(m, e68, 61.403509*i[9]+x[68] >= 0.0)
@constraint(m, e69, 61.403509*i[10]+x[69] >= 0.0)
@constraint(m, e70, 61.403509*i[11]+x[70] >= 0.0)
@constraint(m, e71, 61.403509*i[12]+x[71] >= 0.0)
@constraint(m, e72, 61.403509*i[13]+x[72] >= 0.0)
@constraint(m, e73, 61.403509*i[14]+x[73] >= 0.0)
@constraint(m, e74, 61.403509*i[15]+x[74] >= 0.0)
@constraint(m, e75, 140.350877*i[16]+x[75] >= 0.0)
@constraint(m, e76, 140.350877*i[17]+x[76] >= 0.0)
@constraint(m, e77, 140.350877*i[18]+x[77] >= 0.0)
@constraint(m, e78, 140.350877*i[19]+x[78] >= 0.0)
@constraint(m, e79, 175.438596*i[20]+x[79] >= 0.0)
@constraint(m, e80, 175.438596*i[21]+x[80] >= 0.0)
@constraint(m, e81, 175.438596*i[22]+x[81] >= 0.0)
@constraint(m, e82, 175.438596*i[23]+x[82] >= 0.0)
@constraint(m, e83, 175.438596*i[24]+x[83] >= 0.0)
@constraint(m, e84, 175.438596*i[25]+x[84] >= 0.0)
@constraint(m, e85, 175.438596*i[26]+x[85] >= 0.0)
@constraint(m, e86, 175.438596*i[27]+x[86] >= 0.0)
@constraint(m, e87, 175.438596*i[28]+x[87] >= 0.0)
@constraint(m, e88, 175.438596*i[29]+x[88] >= 0.0)
@constraint(m, e89, 175.438596*i[30]+x[89] >= 0.0)
@constraint(m, e90, 175.438596*i[31]+x[90] >= 0.0)
@constraint(m, e91, 175.438596*i[32]+x[91] >= 0.0)
@constraint(m, e92, 175.438596*i[33]+x[92] >= 0.0)
@constraint(m, e93, 175.438596*i[34]+x[93] >= 0.0)
@constraint(m, e94, 175.438596*i[35]+x[94] >= 0.0)
@constraint(m, e95, 175.438596*i[36]+x[95] >= 0.0)
@constraint(m, e96, -61.403509*i[2]+x[61] <= 0.0)
@constraint(m, e97, -61.403509*i[3]+x[62] <= 0.0)
@constraint(m, e98, -61.403509*i[4]+x[63] <= 0.0)
@constraint(m, e99, -61.403509*i[5]+x[64] <= 0.0)
@constraint(m, e100, -61.403509*i[6]+x[65] <= 0.0)
@constraint(m, e101, -61.403509*i[7]+x[66] <= 0.0)
@constraint(m, e102, -140.350877*i[8]+x[67] <= 0.0)
@constraint(m, e103, -61.403509*i[9]+x[68] <= 0.0)
@constraint(m, e104, -61.403509*i[10]+x[69] <= 0.0)
@constraint(m, e105, -61.403509*i[11]+x[70] <= 0.0)
@constraint(m, e106, -61.403509*i[12]+x[71] <= 0.0)
@constraint(m, e107, -61.403509*i[13]+x[72] <= 0.0)
@constraint(m, e108, -61.403509*i[14]+x[73] <= 0.0)
@constraint(m, e109, -61.403509*i[15]+x[74] <= 0.0)
@constraint(m, e110, -140.350877*i[16]+x[75] <= 0.0)
@constraint(m, e111, -140.350877*i[17]+x[76] <= 0.0)
@constraint(m, e112, -140.350877*i[18]+x[77] <= 0.0)
@constraint(m, e113, -140.350877*i[19]+x[78] <= 0.0)
@constraint(m, e114, -175.438596*i[20]+x[79] <= 0.0)
@constraint(m, e115, -175.438596*i[21]+x[80] <= 0.0)
@constraint(m, e116, -175.438596*i[22]+x[81] <= 0.0)
@constraint(m, e117, -175.438596*i[23]+x[82] <= 0.0)
@constraint(m, e118, -175.438596*i[24]+x[83] <= 0.0)
@constraint(m, e119, -175.438596*i[25]+x[84] <= 0.0)
@constraint(m, e120, -175.438596*i[26]+x[85] <= 0.0)
@constraint(m, e121, -175.438596*i[27]+x[86] <= 0.0)
@constraint(m, e122, -175.438596*i[28]+x[87] <= 0.0)
@constraint(m, e123, -175.438596*i[29]+x[88] <= 0.0)
@constraint(m, e124, -175.438596*i[30]+x[89] <= 0.0)
@constraint(m, e125, -175.438596*i[31]+x[90] <= 0.0)
@constraint(m, e126, -175.438596*i[32]+x[91] <= 0.0)
@constraint(m, e127, -175.438596*i[33]+x[92] <= 0.0)
@constraint(m, e128, -175.438596*i[34]+x[93] <= 0.0)
@constraint(m, e129, -175.438596*i[35]+x[94] <= 0.0)
@constraint(m, e130, -175.438596*i[36]+x[95] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
