using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166]
@variable(m, x[x_Idx])
b_Idx = Any[167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[146], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[116], 0.0)
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
setlowerbound(x[136], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[149], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[147], 0.0)
setupperbound(x[147], 0.0)
setlowerbound(x[148], -1.0)
setupperbound(x[148], -1.0)
setlowerbound(x[149], 0.0)
setupperbound(x[149], 0.0)
setlowerbound(x[150], -1.0)
setupperbound(x[150], -1.0)
setlowerbound(x[151], 1.0)
setupperbound(x[151], 1.0)
setlowerbound(x[152], 1.0)
setupperbound(x[152], 1.0)
setlowerbound(x[153], 0.0)
setupperbound(x[153], 0.0)
setlowerbound(x[154], -2.5)
setupperbound(x[154], -2.5)
setlowerbound(x[155], 2.5)
setupperbound(x[155], 2.5)
setlowerbound(x[156], 0.0)
setupperbound(x[156], 0.0)
setlowerbound(x[157], 6.0)
setupperbound(x[157], 6.0)
setlowerbound(x[158], 0.0)
setupperbound(x[158], 0.0)
setlowerbound(x[159], -1.0)
setupperbound(x[159], -1.0)
setlowerbound(x[160], 0.0)
setupperbound(x[160], 0.0)
setlowerbound(x[161], 0.0)
setupperbound(x[161], 0.0)
setlowerbound(x[162], -3.0)
setupperbound(x[162], -3.0)
setlowerbound(x[163], 7.0)
setupperbound(x[163], 7.0)
setlowerbound(x[164], 1.0)
setupperbound(x[164], 1.0)
setlowerbound(x[165], 2.0)
setupperbound(x[165], 2.0)
setlowerbound(x[166], 4.0)
setupperbound(x[166], 4.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[62]-x[63]-x[64]-x[65]-x[66] == 0.0)
@constraint(m, e2, x[2]-10.8*b[167]-10.8*b[177] == 3.0)
@constraint(m, e3, x[3]-0.1*b[168]-0.1*b[178] == 2.6)
@constraint(m, e4, x[4]-12.2*b[169]-12.2*b[179] == 2.2)
@constraint(m, e5, x[5]-0.0999999999999996*b[170]-0.0999999999999996*b[180] == 5.7)
@constraint(m, e6, x[6]-6.7*b[171]-6.7*b[181] == 2.3)
@constraint(m, e7, x[2]+x[7] == 16.8)
@constraint(m, e8, x[3]+x[8] == 5.3)
@constraint(m, e9, x[4]+x[9] == 16.6)
@constraint(m, e10, x[5]+x[10] == 11.5)
@constraint(m, e11, x[6]+x[11] == 11.3)
@constraint(m, e12, -x[12]+x[27]-x[67]+x[77]+x[87]-x[97] == 0.0)
@constraint(m, e13, -x[12]+x[28]-x[68]+x[78]+x[88]-x[98] == 0.0)
@constraint(m, e14, -x[13]+x[22]-x[69]+x[79]+x[89]-x[99] == 0.0)
@constraint(m, e15, -x[13]+x[29]-x[70]+x[80]+x[90]-x[100] == 0.0)
@constraint(m, e16, -x[13]+x[30]-x[71]+x[81]+x[91]-x[101] == 0.0)
@constraint(m, e17, -x[14]+x[23]-x[72]+x[82]+x[92]-x[102] == 0.0)
@constraint(m, e18, -x[14]+x[24]-x[73]+x[83]+x[93]-x[103] == 0.0)
@constraint(m, e19, -x[15]+x[25]-x[74]+x[84]+x[94]-x[104] == 0.0)
@constraint(m, e20, -x[15]+x[31]-x[75]+x[85]+x[95]-x[105] == 0.0)
@constraint(m, e21, -x[16]+x[26]-x[76]+x[86]+x[96]-x[106] == 0.0)
@constraint(m, e22, -x[17]+x[37]-x[107]-x[117]+x[127]+x[137] == 0.0)
@constraint(m, e23, -x[17]+x[38]-x[108]-x[118]+x[128]+x[138] == 0.0)
@constraint(m, e24, -x[18]+x[32]-x[109]-x[119]+x[129]+x[139] == 0.0)
@constraint(m, e25, -x[18]+x[39]-x[110]-x[120]+x[130]+x[140] == 0.0)
@constraint(m, e26, -x[18]+x[40]-x[111]-x[121]+x[131]+x[141] == 0.0)
@constraint(m, e27, -x[19]+x[33]-x[112]-x[122]+x[132]+x[142] == 0.0)
@constraint(m, e28, -x[19]+x[34]-x[113]-x[123]+x[133]+x[143] == 0.0)
@constraint(m, e29, -x[20]+x[35]-x[114]-x[124]+x[134]+x[144] == 0.0)
@constraint(m, e30, -x[20]+x[41]-x[115]-x[125]+x[135]+x[145] == 0.0)
@constraint(m, e31, -x[21]+x[36]-x[116]-x[126]+x[136]+x[146] == 0.0)
@constraint(m, e32, b[167]+b[172]+b[177]+b[182] == 1.0)
@constraint(m, e33, b[168]+b[173]+b[178]+b[183] == 1.0)
@constraint(m, e34, b[169]+b[174]+b[179]+b[184] == 1.0)
@constraint(m, e35, b[170]+b[175]+b[180]+b[185] == 1.0)
@constraint(m, e36, b[171]+b[176]+b[181]+b[186] == 1.0)
@constraint(m, e37, x[67]+2000*b[167] >= 0.0)
@constraint(m, e38, x[68]+2000*b[167] >= 0.0)
@constraint(m, e39, x[69]+2000*b[168] >= 0.0)
@constraint(m, e40, x[70]+2000*b[168] >= 0.0)
@constraint(m, e41, x[71]+2000*b[168] >= 0.0)
@constraint(m, e42, x[72]+2000*b[169] >= 0.0)
@constraint(m, e43, x[73]+2000*b[169] >= 0.0)
@constraint(m, e44, x[74]+2000*b[170] >= 0.0)
@constraint(m, e45, x[75]+2000*b[170] >= 0.0)
@constraint(m, e46, x[76]+2000*b[171] >= 0.0)
@constraint(m, e47, x[67]-2000*b[167] <= 0.0)
@constraint(m, e48, x[68]-2000*b[167] <= 0.0)
@constraint(m, e49, x[69]-2000*b[168] <= 0.0)
@constraint(m, e50, x[70]-2000*b[168] <= 0.0)
@constraint(m, e51, x[71]-2000*b[168] <= 0.0)
@constraint(m, e52, x[72]-2000*b[169] <= 0.0)
@constraint(m, e53, x[73]-2000*b[169] <= 0.0)
@constraint(m, e54, x[74]-2000*b[170] <= 0.0)
@constraint(m, e55, x[75]-2000*b[170] <= 0.0)
@constraint(m, e56, x[76]-2000*b[171] <= 0.0)
@constraint(m, e57, x[67]-x[157]-2000*b[167] >= -2000.0)
@constraint(m, e58, x[68]-x[158]-2000*b[167] >= -2000.0)
@constraint(m, e59, x[69]-x[159]-2000*b[168] >= -2000.0)
@constraint(m, e60, x[70]-x[160]-2000*b[168] >= -2000.0)
@constraint(m, e61, x[71]-x[161]-2000*b[168] >= -2000.0)
@constraint(m, e62, x[72]-x[162]-2000*b[169] >= -2000.0)
@constraint(m, e63, x[73]-x[163]-2000*b[169] >= -2000.0)
@constraint(m, e64, x[74]-x[164]-2000*b[170] >= -2000.0)
@constraint(m, e65, x[75]-x[165]-2000*b[170] >= -2000.0)
@constraint(m, e66, x[76]-x[166]-2000*b[171] >= -2000.0)
@constraint(m, e67, x[67]-x[157]+2000*b[167] <= 2000.0)
@constraint(m, e68, x[68]-x[158]+2000*b[167] <= 2000.0)
@constraint(m, e69, x[69]-x[159]+2000*b[168] <= 2000.0)
@constraint(m, e70, x[70]-x[160]+2000*b[168] <= 2000.0)
@constraint(m, e71, x[71]-x[161]+2000*b[168] <= 2000.0)
@constraint(m, e72, x[72]-x[162]+2000*b[169] <= 2000.0)
@constraint(m, e73, x[73]-x[163]+2000*b[169] <= 2000.0)
@constraint(m, e74, x[74]-x[164]+2000*b[170] <= 2000.0)
@constraint(m, e75, x[75]-x[165]+2000*b[170] <= 2000.0)
@constraint(m, e76, x[76]-x[166]+2000*b[171] <= 2000.0)
@constraint(m, e77, x[77]+2000*b[172] >= 0.0)
@constraint(m, e78, x[78]+2000*b[172] >= 0.0)
@constraint(m, e79, x[79]+2000*b[173] >= 0.0)
@constraint(m, e80, x[80]+2000*b[173] >= 0.0)
@constraint(m, e81, x[81]+2000*b[173] >= 0.0)
@constraint(m, e82, x[82]+2000*b[174] >= 0.0)
@constraint(m, e83, x[83]+2000*b[174] >= 0.0)
@constraint(m, e84, x[84]+2000*b[175] >= 0.0)
@constraint(m, e85, x[85]+2000*b[175] >= 0.0)
@constraint(m, e86, x[86]+2000*b[176] >= 0.0)
@constraint(m, e87, x[77]-2000*b[172] <= 0.0)
@constraint(m, e88, x[78]-2000*b[172] <= 0.0)
@constraint(m, e89, x[79]-2000*b[173] <= 0.0)
@constraint(m, e90, x[80]-2000*b[173] <= 0.0)
@constraint(m, e91, x[81]-2000*b[173] <= 0.0)
@constraint(m, e92, x[82]-2000*b[174] <= 0.0)
@constraint(m, e93, x[83]-2000*b[174] <= 0.0)
@constraint(m, e94, x[84]-2000*b[175] <= 0.0)
@constraint(m, e95, x[85]-2000*b[175] <= 0.0)
@constraint(m, e96, x[86]-2000*b[176] <= 0.0)
@constraint(m, e97, x[77]-x[147]-2000*b[172] >= -2000.0)
@constraint(m, e98, x[78]-x[148]-2000*b[172] >= -2000.0)
@constraint(m, e99, x[79]-x[149]-2000*b[173] >= -2000.0)
@constraint(m, e100, x[80]-x[150]-2000*b[173] >= -2000.0)
@constraint(m, e101, x[81]-x[151]-2000*b[173] >= -2000.0)
@constraint(m, e102, x[82]-x[152]-2000*b[174] >= -2000.0)
@constraint(m, e103, x[83]-x[153]-2000*b[174] >= -2000.0)
@constraint(m, e104, x[84]-x[154]-2000*b[175] >= -2000.0)
@constraint(m, e105, x[85]-x[155]-2000*b[175] >= -2000.0)
@constraint(m, e106, x[86]-x[156]-2000*b[176] >= -2000.0)
@constraint(m, e107, x[77]-x[147]+2000*b[172] <= 2000.0)
@constraint(m, e108, x[78]-x[148]+2000*b[172] <= 2000.0)
@constraint(m, e109, x[79]-x[149]+2000*b[173] <= 2000.0)
@constraint(m, e110, x[80]-x[150]+2000*b[173] <= 2000.0)
@constraint(m, e111, x[81]-x[151]+2000*b[173] <= 2000.0)
@constraint(m, e112, x[82]-x[152]+2000*b[174] <= 2000.0)
@constraint(m, e113, x[83]-x[153]+2000*b[174] <= 2000.0)
@constraint(m, e114, x[84]-x[154]+2000*b[175] <= 2000.0)
@constraint(m, e115, x[85]-x[155]+2000*b[175] <= 2000.0)
@constraint(m, e116, x[86]-x[156]+2000*b[176] <= 2000.0)
@constraint(m, e117, x[87]+2000*b[177] >= 0.0)
@constraint(m, e118, x[88]+2000*b[177] >= 0.0)
@constraint(m, e119, x[89]+2000*b[178] >= 0.0)
@constraint(m, e120, x[90]+2000*b[178] >= 0.0)
@constraint(m, e121, x[91]+2000*b[178] >= 0.0)
@constraint(m, e122, x[92]+2000*b[179] >= 0.0)
@constraint(m, e123, x[93]+2000*b[179] >= 0.0)
@constraint(m, e124, x[94]+2000*b[180] >= 0.0)
@constraint(m, e125, x[95]+2000*b[180] >= 0.0)
@constraint(m, e126, x[96]+2000*b[181] >= 0.0)
@constraint(m, e127, x[87]-2000*b[177] <= 0.0)
@constraint(m, e128, x[88]-2000*b[177] <= 0.0)
@constraint(m, e129, x[89]-2000*b[178] <= 0.0)
@constraint(m, e130, x[90]-2000*b[178] <= 0.0)
@constraint(m, e131, x[91]-2000*b[178] <= 0.0)
@constraint(m, e132, x[92]-2000*b[179] <= 0.0)
@constraint(m, e133, x[93]-2000*b[179] <= 0.0)
@constraint(m, e134, x[94]-2000*b[180] <= 0.0)
@constraint(m, e135, x[95]-2000*b[180] <= 0.0)
@constraint(m, e136, x[96]-2000*b[181] <= 0.0)
@constraint(m, e137, x[87]-x[157]-2000*b[177] >= -2000.0)
@constraint(m, e138, x[88]-x[158]-2000*b[177] >= -2000.0)
@constraint(m, e139, x[89]-x[159]-2000*b[178] >= -2000.0)
@constraint(m, e140, x[90]-x[160]-2000*b[178] >= -2000.0)
@constraint(m, e141, x[91]-x[161]-2000*b[178] >= -2000.0)
@constraint(m, e142, x[92]-x[162]-2000*b[179] >= -2000.0)
@constraint(m, e143, x[93]-x[163]-2000*b[179] >= -2000.0)
@constraint(m, e144, x[94]-x[164]-2000*b[180] >= -2000.0)
@constraint(m, e145, x[95]-x[165]-2000*b[180] >= -2000.0)
@constraint(m, e146, x[96]-x[166]-2000*b[181] >= -2000.0)
@constraint(m, e147, x[87]-x[157]+2000*b[177] <= 2000.0)
@constraint(m, e148, x[88]-x[158]+2000*b[177] <= 2000.0)
@constraint(m, e149, x[89]-x[159]+2000*b[178] <= 2000.0)
@constraint(m, e150, x[90]-x[160]+2000*b[178] <= 2000.0)
@constraint(m, e151, x[91]-x[161]+2000*b[178] <= 2000.0)
@constraint(m, e152, x[92]-x[162]+2000*b[179] <= 2000.0)
@constraint(m, e153, x[93]-x[163]+2000*b[179] <= 2000.0)
@constraint(m, e154, x[94]-x[164]+2000*b[180] <= 2000.0)
@constraint(m, e155, x[95]-x[165]+2000*b[180] <= 2000.0)
@constraint(m, e156, x[96]-x[166]+2000*b[181] <= 2000.0)
@constraint(m, e157, x[97]+2000*b[182] >= 0.0)
@constraint(m, e158, x[98]+2000*b[182] >= 0.0)
@constraint(m, e159, x[99]+2000*b[183] >= 0.0)
@constraint(m, e160, x[100]+2000*b[183] >= 0.0)
@constraint(m, e161, x[101]+2000*b[183] >= 0.0)
@constraint(m, e162, x[102]+2000*b[184] >= 0.0)
@constraint(m, e163, x[103]+2000*b[184] >= 0.0)
@constraint(m, e164, x[104]+2000*b[185] >= 0.0)
@constraint(m, e165, x[105]+2000*b[185] >= 0.0)
@constraint(m, e166, x[106]+2000*b[186] >= 0.0)
@constraint(m, e167, x[97]-2000*b[182] <= 0.0)
@constraint(m, e168, x[98]-2000*b[182] <= 0.0)
@constraint(m, e169, x[99]-2000*b[183] <= 0.0)
@constraint(m, e170, x[100]-2000*b[183] <= 0.0)
@constraint(m, e171, x[101]-2000*b[183] <= 0.0)
@constraint(m, e172, x[102]-2000*b[184] <= 0.0)
@constraint(m, e173, x[103]-2000*b[184] <= 0.0)
@constraint(m, e174, x[104]-2000*b[185] <= 0.0)
@constraint(m, e175, x[105]-2000*b[185] <= 0.0)
@constraint(m, e176, x[106]-2000*b[186] <= 0.0)
@constraint(m, e177, x[97]-x[147]-2000*b[182] >= -2000.0)
@constraint(m, e178, x[98]-x[148]-2000*b[182] >= -2000.0)
@constraint(m, e179, x[99]-x[149]-2000*b[183] >= -2000.0)
@constraint(m, e180, x[100]-x[150]-2000*b[183] >= -2000.0)
@constraint(m, e181, x[101]-x[151]-2000*b[183] >= -2000.0)
@constraint(m, e182, x[102]-x[152]-2000*b[184] >= -2000.0)
@constraint(m, e183, x[103]-x[153]-2000*b[184] >= -2000.0)
@constraint(m, e184, x[104]-x[154]-2000*b[185] >= -2000.0)
@constraint(m, e185, x[105]-x[155]-2000*b[185] >= -2000.0)
@constraint(m, e186, x[106]-x[156]-2000*b[186] >= -2000.0)
@constraint(m, e187, x[97]-x[147]+2000*b[182] <= 2000.0)
@constraint(m, e188, x[98]-x[148]+2000*b[182] <= 2000.0)
@constraint(m, e189, x[99]-x[149]+2000*b[183] <= 2000.0)
@constraint(m, e190, x[100]-x[150]+2000*b[183] <= 2000.0)
@constraint(m, e191, x[101]-x[151]+2000*b[183] <= 2000.0)
@constraint(m, e192, x[102]-x[152]+2000*b[184] <= 2000.0)
@constraint(m, e193, x[103]-x[153]+2000*b[184] <= 2000.0)
@constraint(m, e194, x[104]-x[154]+2000*b[185] <= 2000.0)
@constraint(m, e195, x[105]-x[155]+2000*b[185] <= 2000.0)
@constraint(m, e196, x[106]-x[156]+2000*b[186] <= 2000.0)
@constraint(m, e197, x[107]+2000*b[167] >= 0.0)
@constraint(m, e198, x[108]+2000*b[167] >= 0.0)
@constraint(m, e199, x[109]+2000*b[168] >= 0.0)
@constraint(m, e200, x[110]+2000*b[168] >= 0.0)
@constraint(m, e201, x[111]+2000*b[168] >= 0.0)
@constraint(m, e202, x[112]+2000*b[169] >= 0.0)
@constraint(m, e203, x[113]+2000*b[169] >= 0.0)
@constraint(m, e204, x[114]+2000*b[170] >= 0.0)
@constraint(m, e205, x[115]+2000*b[170] >= 0.0)
@constraint(m, e206, x[116]+2000*b[171] >= 0.0)
@constraint(m, e207, x[107]-2000*b[167] <= 0.0)
@constraint(m, e208, x[108]-2000*b[167] <= 0.0)
@constraint(m, e209, x[109]-2000*b[168] <= 0.0)
@constraint(m, e210, x[110]-2000*b[168] <= 0.0)
@constraint(m, e211, x[111]-2000*b[168] <= 0.0)
@constraint(m, e212, x[112]-2000*b[169] <= 0.0)
@constraint(m, e213, x[113]-2000*b[169] <= 0.0)
@constraint(m, e214, x[114]-2000*b[170] <= 0.0)
@constraint(m, e215, x[115]-2000*b[170] <= 0.0)
@constraint(m, e216, x[116]-2000*b[171] <= 0.0)
@constraint(m, e217, x[107]-x[147]-2000*b[167] >= -2000.0)
@constraint(m, e218, x[108]-x[148]-2000*b[167] >= -2000.0)
@constraint(m, e219, x[109]-x[149]-2000*b[168] >= -2000.0)
@constraint(m, e220, x[110]-x[150]-2000*b[168] >= -2000.0)
@constraint(m, e221, x[111]-x[151]-2000*b[168] >= -2000.0)
@constraint(m, e222, x[112]-x[152]-2000*b[169] >= -2000.0)
@constraint(m, e223, x[113]-x[153]-2000*b[169] >= -2000.0)
@constraint(m, e224, x[114]-x[154]-2000*b[170] >= -2000.0)
@constraint(m, e225, x[115]-x[155]-2000*b[170] >= -2000.0)
@constraint(m, e226, x[116]-x[156]-2000*b[171] >= -2000.0)
@constraint(m, e227, x[107]-x[147]+2000*b[167] <= 2000.0)
@constraint(m, e228, x[108]-x[148]+2000*b[167] <= 2000.0)
@constraint(m, e229, x[109]-x[149]+2000*b[168] <= 2000.0)
@constraint(m, e230, x[110]-x[150]+2000*b[168] <= 2000.0)
@constraint(m, e231, x[111]-x[151]+2000*b[168] <= 2000.0)
@constraint(m, e232, x[112]-x[152]+2000*b[169] <= 2000.0)
@constraint(m, e233, x[113]-x[153]+2000*b[169] <= 2000.0)
@constraint(m, e234, x[114]-x[154]+2000*b[170] <= 2000.0)
@constraint(m, e235, x[115]-x[155]+2000*b[170] <= 2000.0)
@constraint(m, e236, x[116]-x[156]+2000*b[171] <= 2000.0)
@constraint(m, e237, x[117]+2000*b[172] >= 0.0)
@constraint(m, e238, x[118]+2000*b[172] >= 0.0)
@constraint(m, e239, x[119]+2000*b[173] >= 0.0)
@constraint(m, e240, x[120]+2000*b[173] >= 0.0)
@constraint(m, e241, x[121]+2000*b[173] >= 0.0)
@constraint(m, e242, x[122]+2000*b[174] >= 0.0)
@constraint(m, e243, x[123]+2000*b[174] >= 0.0)
@constraint(m, e244, x[124]+2000*b[175] >= 0.0)
@constraint(m, e245, x[125]+2000*b[175] >= 0.0)
@constraint(m, e246, x[126]+2000*b[176] >= 0.0)
@constraint(m, e247, x[117]-2000*b[172] <= 0.0)
@constraint(m, e248, x[118]-2000*b[172] <= 0.0)
@constraint(m, e249, x[119]-2000*b[173] <= 0.0)
@constraint(m, e250, x[120]-2000*b[173] <= 0.0)
@constraint(m, e251, x[121]-2000*b[173] <= 0.0)
@constraint(m, e252, x[122]-2000*b[174] <= 0.0)
@constraint(m, e253, x[123]-2000*b[174] <= 0.0)
@constraint(m, e254, x[124]-2000*b[175] <= 0.0)
@constraint(m, e255, x[125]-2000*b[175] <= 0.0)
@constraint(m, e256, x[126]-2000*b[176] <= 0.0)
@constraint(m, e257, x[117]-x[157]-2000*b[172] >= -2000.0)
@constraint(m, e258, x[118]-x[158]-2000*b[172] >= -2000.0)
@constraint(m, e259, x[119]-x[159]-2000*b[173] >= -2000.0)
@constraint(m, e260, x[120]-x[160]-2000*b[173] >= -2000.0)
@constraint(m, e261, x[121]-x[161]-2000*b[173] >= -2000.0)
@constraint(m, e262, x[122]-x[162]-2000*b[174] >= -2000.0)
@constraint(m, e263, x[123]-x[163]-2000*b[174] >= -2000.0)
@constraint(m, e264, x[124]-x[164]-2000*b[175] >= -2000.0)
@constraint(m, e265, x[125]-x[165]-2000*b[175] >= -2000.0)
@constraint(m, e266, x[126]-x[166]-2000*b[176] >= -2000.0)
@constraint(m, e267, x[117]-x[157]+2000*b[172] <= 2000.0)
@constraint(m, e268, x[118]-x[158]+2000*b[172] <= 2000.0)
@constraint(m, e269, x[119]-x[159]+2000*b[173] <= 2000.0)
@constraint(m, e270, x[120]-x[160]+2000*b[173] <= 2000.0)
@constraint(m, e271, x[121]-x[161]+2000*b[173] <= 2000.0)
@constraint(m, e272, x[122]-x[162]+2000*b[174] <= 2000.0)
@constraint(m, e273, x[123]-x[163]+2000*b[174] <= 2000.0)
@constraint(m, e274, x[124]-x[164]+2000*b[175] <= 2000.0)
@constraint(m, e275, x[125]-x[165]+2000*b[175] <= 2000.0)
@constraint(m, e276, x[126]-x[166]+2000*b[176] <= 2000.0)
@constraint(m, e277, x[127]+2000*b[177] >= 0.0)
@constraint(m, e278, x[128]+2000*b[177] >= 0.0)
@constraint(m, e279, x[129]+2000*b[178] >= 0.0)
@constraint(m, e280, x[130]+2000*b[178] >= 0.0)
@constraint(m, e281, x[131]+2000*b[178] >= 0.0)
@constraint(m, e282, x[132]+2000*b[179] >= 0.0)
@constraint(m, e283, x[133]+2000*b[179] >= 0.0)
@constraint(m, e284, x[134]+2000*b[180] >= 0.0)
@constraint(m, e285, x[135]+2000*b[180] >= 0.0)
@constraint(m, e286, x[136]+2000*b[181] >= 0.0)
@constraint(m, e287, x[127]-2000*b[177] <= 0.0)
@constraint(m, e288, x[128]-2000*b[177] <= 0.0)
@constraint(m, e289, x[129]-2000*b[178] <= 0.0)
@constraint(m, e290, x[130]-2000*b[178] <= 0.0)
@constraint(m, e291, x[131]-2000*b[178] <= 0.0)
@constraint(m, e292, x[132]-2000*b[179] <= 0.0)
@constraint(m, e293, x[133]-2000*b[179] <= 0.0)
@constraint(m, e294, x[134]-2000*b[180] <= 0.0)
@constraint(m, e295, x[135]-2000*b[180] <= 0.0)
@constraint(m, e296, x[136]-2000*b[181] <= 0.0)
@constraint(m, e297, x[127]-x[147]-2000*b[177] >= -2000.0)
@constraint(m, e298, x[128]-x[148]-2000*b[177] >= -2000.0)
@constraint(m, e299, x[129]-x[149]-2000*b[178] >= -2000.0)
@constraint(m, e300, x[130]-x[150]-2000*b[178] >= -2000.0)
@constraint(m, e301, x[131]-x[151]-2000*b[178] >= -2000.0)
@constraint(m, e302, x[132]-x[152]-2000*b[179] >= -2000.0)
@constraint(m, e303, x[133]-x[153]-2000*b[179] >= -2000.0)
@constraint(m, e304, x[134]-x[154]-2000*b[180] >= -2000.0)
@constraint(m, e305, x[135]-x[155]-2000*b[180] >= -2000.0)
@constraint(m, e306, x[136]-x[156]-2000*b[181] >= -2000.0)
@constraint(m, e307, x[127]-x[147]+2000*b[177] <= 2000.0)
@constraint(m, e308, x[128]-x[148]+2000*b[177] <= 2000.0)
@constraint(m, e309, x[129]-x[149]+2000*b[178] <= 2000.0)
@constraint(m, e310, x[130]-x[150]+2000*b[178] <= 2000.0)
@constraint(m, e311, x[131]-x[151]+2000*b[178] <= 2000.0)
@constraint(m, e312, x[132]-x[152]+2000*b[179] <= 2000.0)
@constraint(m, e313, x[133]-x[153]+2000*b[179] <= 2000.0)
@constraint(m, e314, x[134]-x[154]+2000*b[180] <= 2000.0)
@constraint(m, e315, x[135]-x[155]+2000*b[180] <= 2000.0)
@constraint(m, e316, x[136]-x[156]+2000*b[181] <= 2000.0)
@constraint(m, e317, x[137]+2000*b[182] >= 0.0)
@constraint(m, e318, x[138]+2000*b[182] >= 0.0)
@constraint(m, e319, x[139]+2000*b[183] >= 0.0)
@constraint(m, e320, x[140]+2000*b[183] >= 0.0)
@constraint(m, e321, x[141]+2000*b[183] >= 0.0)
@constraint(m, e322, x[142]+2000*b[184] >= 0.0)
@constraint(m, e323, x[143]+2000*b[184] >= 0.0)
@constraint(m, e324, x[144]+2000*b[185] >= 0.0)
@constraint(m, e325, x[145]+2000*b[185] >= 0.0)
@constraint(m, e326, x[146]+2000*b[186] >= 0.0)
@constraint(m, e327, x[137]-2000*b[182] <= 0.0)
@constraint(m, e328, x[138]-2000*b[182] <= 0.0)
@constraint(m, e329, x[139]-2000*b[183] <= 0.0)
@constraint(m, e330, x[140]-2000*b[183] <= 0.0)
@constraint(m, e331, x[141]-2000*b[183] <= 0.0)
@constraint(m, e332, x[142]-2000*b[184] <= 0.0)
@constraint(m, e333, x[143]-2000*b[184] <= 0.0)
@constraint(m, e334, x[144]-2000*b[185] <= 0.0)
@constraint(m, e335, x[145]-2000*b[185] <= 0.0)
@constraint(m, e336, x[146]-2000*b[186] <= 0.0)
@constraint(m, e337, x[137]-x[157]-2000*b[182] >= -2000.0)
@constraint(m, e338, x[138]-x[158]-2000*b[182] >= -2000.0)
@constraint(m, e339, x[139]-x[159]-2000*b[183] >= -2000.0)
@constraint(m, e340, x[140]-x[160]-2000*b[183] >= -2000.0)
@constraint(m, e341, x[141]-x[161]-2000*b[183] >= -2000.0)
@constraint(m, e342, x[142]-x[162]-2000*b[184] >= -2000.0)
@constraint(m, e343, x[143]-x[163]-2000*b[184] >= -2000.0)
@constraint(m, e344, x[144]-x[164]-2000*b[185] >= -2000.0)
@constraint(m, e345, x[145]-x[165]-2000*b[185] >= -2000.0)
@constraint(m, e346, x[146]-x[166]-2000*b[186] >= -2000.0)
@constraint(m, e347, x[137]-x[157]+2000*b[182] <= 2000.0)
@constraint(m, e348, x[138]-x[158]+2000*b[182] <= 2000.0)
@constraint(m, e349, x[139]-x[159]+2000*b[183] <= 2000.0)
@constraint(m, e350, x[140]-x[160]+2000*b[183] <= 2000.0)
@constraint(m, e351, x[141]-x[161]+2000*b[183] <= 2000.0)
@constraint(m, e352, x[142]-x[162]+2000*b[184] <= 2000.0)
@constraint(m, e353, x[143]-x[163]+2000*b[184] <= 2000.0)
@constraint(m, e354, x[144]-x[164]+2000*b[185] <= 2000.0)
@constraint(m, e355, x[145]-x[165]+2000*b[185] <= 2000.0)
@constraint(m, e356, x[146]-x[166]+2000*b[186] <= 2000.0)
@constraint(m, e357, -0.5*x[2]-x[157] <= 0.0)
@constraint(m, e358, -0.5*x[2]-x[158] <= 0.0)
@constraint(m, e359, -0.5*x[3]-x[159] <= 0.0)
@constraint(m, e360, -0.5*x[3]-x[160] <= 0.0)
@constraint(m, e361, -0.5*x[3]-x[161] <= 0.0)
@constraint(m, e362, -0.5*x[4]-x[162] <= 0.0)
@constraint(m, e363, -0.5*x[4]-x[163] <= 0.0)
@constraint(m, e364, -0.5*x[5]-x[164] <= 0.0)
@constraint(m, e365, -0.5*x[5]-x[165] <= 0.0)
@constraint(m, e366, -0.5*x[6]-x[166] <= 0.0)
@constraint(m, e367, -0.5*x[2]+x[157] <= 0.0)
@constraint(m, e368, -0.5*x[2]+x[158] <= 0.0)
@constraint(m, e369, -0.5*x[3]+x[159] <= 0.0)
@constraint(m, e370, -0.5*x[3]+x[160] <= 0.0)
@constraint(m, e371, -0.5*x[3]+x[161] <= 0.0)
@constraint(m, e372, -0.5*x[4]+x[162] <= 0.0)
@constraint(m, e373, -0.5*x[4]+x[163] <= 0.0)
@constraint(m, e374, -0.5*x[5]+x[164] <= 0.0)
@constraint(m, e375, -0.5*x[5]+x[165] <= 0.0)
@constraint(m, e376, -0.5*x[6]+x[166] <= 0.0)
@constraint(m, e377, -0.5*x[7]-x[147] <= 0.0)
@constraint(m, e378, -0.5*x[7]-x[148] <= 0.0)
@constraint(m, e379, -0.5*x[8]-x[149] <= 0.0)
@constraint(m, e380, -0.5*x[8]-x[150] <= 0.0)
@constraint(m, e381, -0.5*x[8]-x[151] <= 0.0)
@constraint(m, e382, -0.5*x[9]-x[152] <= 0.0)
@constraint(m, e383, -0.5*x[9]-x[153] <= 0.0)
@constraint(m, e384, -0.5*x[10]-x[154] <= 0.0)
@constraint(m, e385, -0.5*x[10]-x[155] <= 0.0)
@constraint(m, e386, -0.5*x[11]-x[156] <= 0.0)
@constraint(m, e387, -0.5*x[7]+x[147] <= 0.0)
@constraint(m, e388, -0.5*x[7]+x[148] <= 0.0)
@constraint(m, e389, -0.5*x[8]+x[149] <= 0.0)
@constraint(m, e390, -0.5*x[8]+x[150] <= 0.0)
@constraint(m, e391, -0.5*x[8]+x[151] <= 0.0)
@constraint(m, e392, -0.5*x[9]+x[152] <= 0.0)
@constraint(m, e393, -0.5*x[9]+x[153] <= 0.0)
@constraint(m, e394, -0.5*x[10]+x[154] <= 0.0)
@constraint(m, e395, -0.5*x[10]+x[155] <= 0.0)
@constraint(m, e396, -0.5*x[11]+x[156] <= 0.0)
@constraint(m, e397, x[22]-x[27]+x[42]-x[47] == 0.0)
@constraint(m, e398, x[23]-x[28]+x[43]-x[48] == 0.0)
@constraint(m, e399, x[24]-x[29]+x[44]-x[49] == 0.0)
@constraint(m, e400, x[25]-x[30]+x[45]-x[50] == 0.0)
@constraint(m, e401, x[26]-x[31]+x[46]-x[51] == 0.0)
@constraint(m, e402, x[32]-x[37]+x[52]-x[57] == 0.0)
@constraint(m, e403, x[33]-x[38]+x[53]-x[58] == 0.0)
@constraint(m, e404, x[34]-x[39]+x[54]-x[59] == 0.0)
@constraint(m, e405, x[35]-x[40]+x[55]-x[60] == 0.0)
@constraint(m, e406, x[36]-x[41]+x[56]-x[61] == 0.0)
@constraint(m, e407, -x[42]-x[47]-x[52]-x[57]+x[62] == 0.0)
@constraint(m, e408, -x[43]-x[48]-x[53]-x[58]+x[63] == 0.0)
@constraint(m, e409, -x[44]-x[49]-x[54]-x[59]+x[64] == 0.0)
@constraint(m, e410, -x[45]-x[50]-x[55]-x[60]+x[65] == 0.0)
@constraint(m, e411, -x[46]-x[51]-x[56]-x[61]+x[66] == 0.0)
@constraint(m, e412, -0.5*x[2]-0.5*x[3]+x[12]-x[13]+2000*b[187]+2000*b[197] >= 0.0)
@constraint(m, e413, -0.5*x[2]-0.5*x[4]+x[12]-x[14]+2000*b[188]+2000*b[198] >= 0.0)
@constraint(m, e414, -0.5*x[2]-0.5*x[5]+x[12]-x[15]+2000*b[189]+2000*b[199] >= 0.0)
@constraint(m, e415, -0.5*x[2]-0.5*x[6]+x[12]-x[16]+2000*b[190]+2000*b[200] >= 0.0)
@constraint(m, e416, -0.5*x[3]-0.5*x[4]+x[13]-x[14]+2000*b[191]+2000*b[201] >= 0.0)
@constraint(m, e417, -0.5*x[3]-0.5*x[5]+x[13]-x[15]+2000*b[192]+2000*b[202] >= 0.0)
@constraint(m, e418, -0.5*x[3]-0.5*x[6]+x[13]-x[16]+2000*b[193]+2000*b[203] >= 0.0)
@constraint(m, e419, -0.5*x[4]-0.5*x[5]+x[14]-x[15]+2000*b[194]+2000*b[204] >= 0.0)
@constraint(m, e420, -0.5*x[4]-0.5*x[6]+x[14]-x[16]+2000*b[195]+2000*b[205] >= 0.0)
@constraint(m, e421, -0.5*x[5]-0.5*x[6]+x[15]-x[16]+2000*b[196]+2000*b[206] >= 0.0)
@constraint(m, e422, -0.5*x[2]-0.5*x[3]-x[12]+x[13]-2000*b[187]+2000*b[197] >= -2000.0)
@constraint(m, e423, -0.5*x[2]-0.5*x[4]-x[12]+x[14]-2000*b[188]+2000*b[198] >= -2000.0)
@constraint(m, e424, -0.5*x[2]-0.5*x[5]-x[12]+x[15]-2000*b[189]+2000*b[199] >= -2000.0)
@constraint(m, e425, -0.5*x[2]-0.5*x[6]-x[12]+x[16]-2000*b[190]+2000*b[200] >= -2000.0)
@constraint(m, e426, -0.5*x[3]-0.5*x[4]-x[13]+x[14]-2000*b[191]+2000*b[201] >= -2000.0)
@constraint(m, e427, -0.5*x[3]-0.5*x[5]-x[13]+x[15]-2000*b[192]+2000*b[202] >= -2000.0)
@constraint(m, e428, -0.5*x[3]-0.5*x[6]-x[13]+x[16]-2000*b[193]+2000*b[203] >= -2000.0)
@constraint(m, e429, -0.5*x[4]-0.5*x[5]-x[14]+x[15]-2000*b[194]+2000*b[204] >= -2000.0)
@constraint(m, e430, -0.5*x[4]-0.5*x[6]-x[14]+x[16]-2000*b[195]+2000*b[205] >= -2000.0)
@constraint(m, e431, -0.5*x[5]-0.5*x[6]-x[15]+x[16]-2000*b[196]+2000*b[206] >= -2000.0)
@constraint(m, e432, -0.5*x[7]-0.5*x[8]+x[17]-x[18]+2000*b[187]-2000*b[197] >= -2000.0)
@constraint(m, e433, -0.5*x[7]-0.5*x[9]+x[17]-x[19]+2000*b[188]-2000*b[198] >= -2000.0)
@constraint(m, e434, -0.5*x[7]-0.5*x[10]+x[17]-x[20]+2000*b[189]-2000*b[199] >= -2000.0)
@constraint(m, e435, -0.5*x[7]-0.5*x[11]+x[17]-x[21]+2000*b[190]-2000*b[200] >= -2000.0)
@constraint(m, e436, -0.5*x[8]-0.5*x[9]+x[18]-x[19]+2000*b[191]-2000*b[201] >= -2000.0)
@constraint(m, e437, -0.5*x[8]-0.5*x[10]+x[18]-x[20]+2000*b[192]-2000*b[202] >= -2000.0)
@constraint(m, e438, -0.5*x[8]-0.5*x[11]+x[18]-x[21]+2000*b[193]-2000*b[203] >= -2000.0)
@constraint(m, e439, -0.5*x[9]-0.5*x[10]+x[19]-x[20]+2000*b[194]-2000*b[204] >= -2000.0)
@constraint(m, e440, -0.5*x[9]-0.5*x[11]+x[19]-x[21]+2000*b[195]-2000*b[205] >= -2000.0)
@constraint(m, e441, -0.5*x[10]-0.5*x[11]+x[20]-x[21]+2000*b[196]-2000*b[206] >= -2000.0)
@constraint(m, e442, -0.5*x[7]-0.5*x[8]-x[17]+x[18]-2000*b[187]-2000*b[197] >= -4000.0)
@constraint(m, e443, -0.5*x[7]-0.5*x[9]-x[17]+x[19]-2000*b[188]-2000*b[198] >= -4000.0)
@constraint(m, e444, -0.5*x[7]-0.5*x[10]-x[17]+x[20]-2000*b[189]-2000*b[199] >= -4000.0)
@constraint(m, e445, -0.5*x[7]-0.5*x[11]-x[17]+x[21]-2000*b[190]-2000*b[200] >= -4000.0)
@constraint(m, e446, -0.5*x[8]-0.5*x[9]-x[18]+x[19]-2000*b[191]-2000*b[201] >= -4000.0)
@constraint(m, e447, -0.5*x[8]-0.5*x[10]-x[18]+x[20]-2000*b[192]-2000*b[202] >= -4000.0)
@constraint(m, e448, -0.5*x[8]-0.5*x[11]-x[18]+x[21]-2000*b[193]-2000*b[203] >= -4000.0)
@constraint(m, e449, -0.5*x[9]-0.5*x[10]-x[19]+x[20]-2000*b[194]-2000*b[204] >= -4000.0)
@constraint(m, e450, -0.5*x[9]-0.5*x[11]-x[19]+x[21]-2000*b[195]-2000*b[205] >= -4000.0)
@constraint(m, e451, -0.5*x[10]-0.5*x[11]-x[20]+x[21]-2000*b[196]-2000*b[206] >= -4000.0)
@constraint(m, e452, -0.5*x[2]+x[12] >= 0.0)
@constraint(m, e453, -0.5*x[3]+x[13] >= 0.0)
@constraint(m, e454, -0.5*x[4]+x[14] >= 0.0)
@constraint(m, e455, -0.5*x[5]+x[15] >= 0.0)
@constraint(m, e456, -0.5*x[6]+x[16] >= 0.0)
@constraint(m, e457, -0.5*x[7]+x[17] >= 0.0)
@constraint(m, e458, -0.5*x[8]+x[18] >= 0.0)
@constraint(m, e459, -0.5*x[9]+x[19] >= 0.0)
@constraint(m, e460, -0.5*x[10]+x[20] >= 0.0)
@constraint(m, e461, -0.5*x[11]+x[21] >= 0.0)
@constraint(m, e462, 0.5*x[2]+x[12] <= 2000.0)
@constraint(m, e463, 0.5*x[3]+x[13] <= 2000.0)
@constraint(m, e464, 0.5*x[4]+x[14] <= 2000.0)
@constraint(m, e465, 0.5*x[5]+x[15] <= 2000.0)
@constraint(m, e466, 0.5*x[6]+x[16] <= 2000.0)
@constraint(m, e467, 0.5*x[7]+x[17] <= 2000.0)
@constraint(m, e468, 0.5*x[8]+x[18] <= 2000.0)
@constraint(m, e469, 0.5*x[9]+x[19] <= 2000.0)
@constraint(m, e470, 0.5*x[10]+x[20] <= 2000.0)
@constraint(m, e471, 0.5*x[11]+x[21] <= 2000.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
