using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343]
@variable(m, x[x_Idx])
b_Idx = Any[253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312]
@variable(m, b[b_Idx])
setcategory(b[304], :Bin)
setlowerbound(x[146], 0.0)
setcategory(b[301], :Bin)
setlowerbound(x[62], 0.0)
setlowerbound(x[114], 0.0)
setcategory(b[300], :Bin)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[328], 0.0)
setlowerbound(x[91], 0.0)
setcategory(b[271], :Bin)
setlowerbound(x[59], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[241], 0.0)
setlowerbound(x[251], 0.0)
setlowerbound(x[165], 0.0)
setlowerbound(x[186], 0.0)
setlowerbound(x[243], 0.0)
setlowerbound(x[327], 0.0)
setcategory(b[282], :Bin)
setlowerbound(x[202], 0.0)
setlowerbound(x[220], 0.0)
setlowerbound(x[250], 0.0)
setcategory(b[291], :Bin)
setlowerbound(x[248], 0.0)
setlowerbound(x[319], 0.0)
setcategory(b[270], :Bin)
setcategory(b[309], :Bin)
setlowerbound(x[88], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[332], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[55], 0.0)
setcategory(b[264], :Bin)
setlowerbound(x[172], 0.0)
setlowerbound(x[226], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[188], 0.0)
setlowerbound(x[321], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[238], 0.0)
setcategory(b[275], :Bin)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setcategory(b[286], :Bin)
setlowerbound(x[95], 0.0)
setcategory(b[310], :Bin)
setlowerbound(x[200], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[206], 0.0)
setlowerbound(x[244], 0.0)
setlowerbound(x[215], 0.0)
setlowerbound(x[174], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setcategory(b[262], :Bin)
setlowerbound(x[150], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[218], 0.0)
setlowerbound(x[225], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[318], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[278], :Bin)
setlowerbound(x[231], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setcategory(b[276], :Bin)
setlowerbound(x[38], 0.0)
setlowerbound(x[232], 0.0)
setcategory(b[295], :Bin)
setlowerbound(x[42], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[138], 0.0)
setcategory(b[269], :Bin)
setlowerbound(x[77], 0.0)
setcategory(b[285], :Bin)
setcategory(b[289], :Bin)
setlowerbound(x[234], 0.0)
setcategory(b[274], :Bin)
setlowerbound(x[329], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[219], 0.0)
setlowerbound(x[185], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[326], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[224], 0.0)
setlowerbound(x[324], 0.0)
setlowerbound(x[179], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[175], 0.0)
setlowerbound(x[330], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[209], 0.0)
setcategory(b[299], :Bin)
setlowerbound(x[53], 0.0)
setcategory(b[255], :Bin)
setlowerbound(x[128], 0.0)
setlowerbound(x[313], 0.0)
setcategory(b[305], :Bin)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setcategory(b[256], :Bin)
setlowerbound(x[13], 0.0)
setcategory(b[281], :Bin)
setcategory(b[260], :Bin)
setlowerbound(x[67], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[199], 0.0)
setlowerbound(x[331], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[213], 0.0)
setlowerbound(x[173], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[252], 0.0)
setcategory(b[297], :Bin)
setlowerbound(x[176], 0.0)
setlowerbound(x[240], 0.0)
setlowerbound(x[28], 0.0)
setcategory(b[259], :Bin)
setlowerbound(x[317], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setcategory(b[292], :Bin)
setlowerbound(x[227], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[187], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[325], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setlowerbound(x[316], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[314], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[338], 0.0)
setcategory(b[311], :Bin)
setlowerbound(x[15], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[230], 0.0)
setlowerbound(x[216], 0.0)
setcategory(b[277], :Bin)
setlowerbound(x[133], 0.0)
setcategory(b[303], :Bin)
setlowerbound(x[192], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[205], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[195], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[207], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[181], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[223], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[335], 0.0)
setlowerbound(x[100], 0.0)
setcategory(b[307], :Bin)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[208], 0.0)
setlowerbound(x[334], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setcategory(b[280], :Bin)
setlowerbound(x[96], 0.0)
setcategory(b[257], :Bin)
setlowerbound(x[210], 0.0)
setcategory(b[254], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[273], :Bin)
setlowerbound(x[182], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[249], 0.0)
setlowerbound(x[177], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[121], 0.0)
setcategory(b[302], :Bin)
setlowerbound(x[152], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setcategory(b[268], :Bin)
setlowerbound(x[233], 0.0)
setlowerbound(x[336], 0.0)
setlowerbound(x[45], 0.0)
setcategory(b[308], :Bin)
setlowerbound(x[184], 0.0)
setcategory(b[290], :Bin)
setlowerbound(x[236], 0.0)
setlowerbound(x[98], 0.0)
setcategory(b[279], :Bin)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[203], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setcategory(b[284], :Bin)
setlowerbound(x[170], 0.0)
setcategory(b[272], :Bin)
setlowerbound(x[149], 0.0)
setlowerbound(x[221], 0.0)
setcategory(b[296], :Bin)
setlowerbound(x[339], 0.0)
setlowerbound(x[217], 0.0)
setlowerbound(x[212], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[323], 0.0)
setlowerbound(x[183], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setcategory(b[258], :Bin)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setcategory(b[266], :Bin)
setlowerbound(x[239], 0.0)
setlowerbound(x[228], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setcategory(b[306], :Bin)
setlowerbound(x[78], 0.0)
setlowerbound(x[222], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[56], 0.0)
setcategory(b[267], :Bin)
setlowerbound(x[340], 0.0)
setlowerbound(x[245], 0.0)
setlowerbound(x[320], 0.0)
setlowerbound(x[333], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[204], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setcategory(b[298], :Bin)
setlowerbound(x[337], 0.0)
setlowerbound(x[322], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[180], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[237], 0.0)
setlowerbound(x[129], 0.0)
setcategory(b[293], :Bin)
setlowerbound(x[41], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[214], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[247], 0.0)
setlowerbound(x[178], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[341], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setcategory(b[288], :Bin)
setcategory(b[312], :Bin)
setlowerbound(x[66], 0.0)
setlowerbound(x[235], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[246], 0.0)
setcategory(b[265], :Bin)
setlowerbound(x[61], 0.0)
setcategory(b[283], :Bin)
setcategory(b[253], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[315], 0.0)
setlowerbound(x[242], 0.0)
setlowerbound(x[64], 0.0)
setcategory(b[261], :Bin)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setcategory(b[294], :Bin)
setlowerbound(x[48], 0.0)
setlowerbound(x[342], 0.0)
setlowerbound(x[229], 0.0)
setlowerbound(x[211], 0.0)
setlowerbound(x[108], 0.0)
setcategory(b[287], :Bin)
setcategory(b[263], :Bin)
setlowerbound(x[1], 2.5)
setupperbound(x[1], 27.5)
setlowerbound(x[2], 3.5)
setupperbound(x[2], 26.5)
setlowerbound(x[3], 1.5)
setupperbound(x[3], 28.5)
setlowerbound(x[4], 1.0)
setupperbound(x[4], 29.0)
setlowerbound(x[5], 2.0)
setupperbound(x[5], 28.0)
setlowerbound(x[6], 2.5)
setupperbound(x[6], 27.5)
setlowerbound(x[7], 3.0)
setupperbound(x[7], 27.0)
setlowerbound(x[8], 2.5)
setupperbound(x[8], 27.5)
setlowerbound(x[9], 1.5)
setupperbound(x[9], 28.5)
setlowerbound(x[10], 1.5)
setupperbound(x[10], 28.5)
setlowerbound(x[11], 2.0)
setupperbound(x[11], 28.0)
setlowerbound(x[12], 1.0)
setupperbound(x[12], 29.0)


# ----- Constraints ----- #
@constraint(m, e1, -(150*( ((-4)+x[1])^2+ ((-10)+x[7])^2)+390*( ((-10)+x[2])^2+ ((-15)+x[8])^2)+240*( ((-7)+x[3])^2+ ((-9)+x[9])^2)+70*( ((-3)+x[4])^2+ ((-3)+x[10])^2)+165*( ((-20)+x[5])^2+ ((-17)+x[11])^2)+100*( ((-18)+x[6])^2+ ((-8)+x[12])^2))-300*x[313]-240*x[314]-210*x[315]-140*x[316]-300*x[317]-100*x[318]-150*x[319]-220*x[320]-200*x[321]-120*x[322]-300*x[323]-150*x[324]-100*x[325]-120*x[326]-130*x[327]-300*x[328]-240*x[329]-210*x[330]-140*x[331]-300*x[332]-100*x[333]-150*x[334]-220*x[335]-200*x[336]-120*x[337]-300*x[338]-150*x[339]-100*x[340]-120*x[341]-130*x[342]+x[343] == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[313] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[314] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[315] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[316] >= 0.0)
@constraint(m, e6, -x[1]+x[6]+x[317] >= 0.0)
@constraint(m, e7, -x[2]+x[3]+x[318] >= 0.0)
@constraint(m, e8, -x[2]+x[4]+x[319] >= 0.0)
@constraint(m, e9, -x[2]+x[5]+x[320] >= 0.0)
@constraint(m, e10, -x[2]+x[6]+x[321] >= 0.0)
@constraint(m, e11, -x[3]+x[4]+x[322] >= 0.0)
@constraint(m, e12, -x[3]+x[5]+x[323] >= 0.0)
@constraint(m, e13, -x[3]+x[6]+x[324] >= 0.0)
@constraint(m, e14, -x[4]+x[5]+x[325] >= 0.0)
@constraint(m, e15, -x[4]+x[6]+x[326] >= 0.0)
@constraint(m, e16, -x[5]+x[6]+x[327] >= 0.0)
@constraint(m, e17, x[1]-x[2]+x[313] >= 0.0)
@constraint(m, e18, x[1]-x[3]+x[314] >= 0.0)
@constraint(m, e19, x[1]-x[4]+x[315] >= 0.0)
@constraint(m, e20, x[1]-x[5]+x[316] >= 0.0)
@constraint(m, e21, x[1]-x[6]+x[317] >= 0.0)
@constraint(m, e22, x[2]-x[3]+x[318] >= 0.0)
@constraint(m, e23, x[2]-x[4]+x[319] >= 0.0)
@constraint(m, e24, x[2]-x[5]+x[320] >= 0.0)
@constraint(m, e25, x[2]-x[6]+x[321] >= 0.0)
@constraint(m, e26, x[3]-x[4]+x[322] >= 0.0)
@constraint(m, e27, x[3]-x[5]+x[323] >= 0.0)
@constraint(m, e28, x[3]-x[6]+x[324] >= 0.0)
@constraint(m, e29, x[4]-x[5]+x[325] >= 0.0)
@constraint(m, e30, x[4]-x[6]+x[326] >= 0.0)
@constraint(m, e31, x[5]-x[6]+x[327] >= 0.0)
@constraint(m, e32, -x[7]+x[8]+x[328] >= 0.0)
@constraint(m, e33, -x[7]+x[9]+x[329] >= 0.0)
@constraint(m, e34, -x[7]+x[10]+x[330] >= 0.0)
@constraint(m, e35, -x[7]+x[11]+x[331] >= 0.0)
@constraint(m, e36, -x[7]+x[12]+x[332] >= 0.0)
@constraint(m, e37, -x[8]+x[9]+x[333] >= 0.0)
@constraint(m, e38, -x[8]+x[10]+x[334] >= 0.0)
@constraint(m, e39, -x[8]+x[11]+x[335] >= 0.0)
@constraint(m, e40, -x[8]+x[12]+x[336] >= 0.0)
@constraint(m, e41, -x[9]+x[10]+x[337] >= 0.0)
@constraint(m, e42, -x[9]+x[11]+x[338] >= 0.0)
@constraint(m, e43, -x[9]+x[12]+x[339] >= 0.0)
@constraint(m, e44, -x[10]+x[11]+x[340] >= 0.0)
@constraint(m, e45, -x[10]+x[12]+x[341] >= 0.0)
@constraint(m, e46, -x[11]+x[12]+x[342] >= 0.0)
@constraint(m, e47, x[7]-x[8]+x[328] >= 0.0)
@constraint(m, e48, x[7]-x[9]+x[329] >= 0.0)
@constraint(m, e49, x[7]-x[10]+x[330] >= 0.0)
@constraint(m, e50, x[7]-x[11]+x[331] >= 0.0)
@constraint(m, e51, x[7]-x[12]+x[332] >= 0.0)
@constraint(m, e52, x[8]-x[9]+x[333] >= 0.0)
@constraint(m, e53, x[8]-x[10]+x[334] >= 0.0)
@constraint(m, e54, x[8]-x[11]+x[335] >= 0.0)
@constraint(m, e55, x[8]-x[12]+x[336] >= 0.0)
@constraint(m, e56, x[9]-x[10]+x[337] >= 0.0)
@constraint(m, e57, x[9]-x[11]+x[338] >= 0.0)
@constraint(m, e58, x[9]-x[12]+x[339] >= 0.0)
@constraint(m, e59, x[10]-x[11]+x[340] >= 0.0)
@constraint(m, e60, x[10]-x[12]+x[341] >= 0.0)
@constraint(m, e61, x[11]-x[12]+x[342] >= 0.0)
@constraint(m, e62, x[1]-x[13]-x[18]-x[23]-x[28] == 0.0)
@constraint(m, e63, x[1]-x[14]-x[19]-x[24]-x[29] == 0.0)
@constraint(m, e64, x[1]-x[15]-x[20]-x[25]-x[30] == 0.0)
@constraint(m, e65, x[1]-x[16]-x[21]-x[26]-x[31] == 0.0)
@constraint(m, e66, x[1]-x[17]-x[22]-x[27]-x[32] == 0.0)
@constraint(m, e67, x[2]-x[33]-x[38]-x[43]-x[48] == 0.0)
@constraint(m, e68, x[2]-x[34]-x[39]-x[44]-x[49] == 0.0)
@constraint(m, e69, x[2]-x[35]-x[40]-x[45]-x[50] == 0.0)
@constraint(m, e70, x[2]-x[36]-x[41]-x[46]-x[51] == 0.0)
@constraint(m, e71, x[2]-x[37]-x[42]-x[47]-x[52] == 0.0)
@constraint(m, e72, x[3]-x[53]-x[58]-x[63]-x[68] == 0.0)
@constraint(m, e73, x[3]-x[54]-x[59]-x[64]-x[69] == 0.0)
@constraint(m, e74, x[3]-x[55]-x[60]-x[65]-x[70] == 0.0)
@constraint(m, e75, x[3]-x[56]-x[61]-x[66]-x[71] == 0.0)
@constraint(m, e76, x[3]-x[57]-x[62]-x[67]-x[72] == 0.0)
@constraint(m, e77, x[4]-x[73]-x[78]-x[83]-x[88] == 0.0)
@constraint(m, e78, x[4]-x[74]-x[79]-x[84]-x[89] == 0.0)
@constraint(m, e79, x[4]-x[75]-x[80]-x[85]-x[90] == 0.0)
@constraint(m, e80, x[4]-x[76]-x[81]-x[86]-x[91] == 0.0)
@constraint(m, e81, x[4]-x[77]-x[82]-x[87]-x[92] == 0.0)
@constraint(m, e82, x[5]-x[93]-x[98]-x[103]-x[108] == 0.0)
@constraint(m, e83, x[5]-x[94]-x[99]-x[104]-x[109] == 0.0)
@constraint(m, e84, x[5]-x[95]-x[100]-x[105]-x[110] == 0.0)
@constraint(m, e85, x[5]-x[96]-x[101]-x[106]-x[111] == 0.0)
@constraint(m, e86, x[5]-x[97]-x[102]-x[107]-x[112] == 0.0)
@constraint(m, e87, x[6]-x[113]-x[118]-x[123]-x[128] == 0.0)
@constraint(m, e88, x[6]-x[114]-x[119]-x[124]-x[129] == 0.0)
@constraint(m, e89, x[6]-x[115]-x[120]-x[125]-x[130] == 0.0)
@constraint(m, e90, x[6]-x[116]-x[121]-x[126]-x[131] == 0.0)
@constraint(m, e91, x[6]-x[117]-x[122]-x[127]-x[132] == 0.0)
@constraint(m, e92, x[7]-x[133]-x[138]-x[143]-x[148] == 0.0)
@constraint(m, e93, x[7]-x[134]-x[139]-x[144]-x[149] == 0.0)
@constraint(m, e94, x[7]-x[135]-x[140]-x[145]-x[150] == 0.0)
@constraint(m, e95, x[7]-x[136]-x[141]-x[146]-x[151] == 0.0)
@constraint(m, e96, x[7]-x[137]-x[142]-x[147]-x[152] == 0.0)
@constraint(m, e97, x[8]-x[153]-x[158]-x[163]-x[168] == 0.0)
@constraint(m, e98, x[8]-x[154]-x[159]-x[164]-x[169] == 0.0)
@constraint(m, e99, x[8]-x[155]-x[160]-x[165]-x[170] == 0.0)
@constraint(m, e100, x[8]-x[156]-x[161]-x[166]-x[171] == 0.0)
@constraint(m, e101, x[8]-x[157]-x[162]-x[167]-x[172] == 0.0)
@constraint(m, e102, x[9]-x[173]-x[178]-x[183]-x[188] == 0.0)
@constraint(m, e103, x[9]-x[174]-x[179]-x[184]-x[189] == 0.0)
@constraint(m, e104, x[9]-x[175]-x[180]-x[185]-x[190] == 0.0)
@constraint(m, e105, x[9]-x[176]-x[181]-x[186]-x[191] == 0.0)
@constraint(m, e106, x[9]-x[177]-x[182]-x[187]-x[192] == 0.0)
@constraint(m, e107, x[10]-x[193]-x[198]-x[203]-x[208] == 0.0)
@constraint(m, e108, x[10]-x[194]-x[199]-x[204]-x[209] == 0.0)
@constraint(m, e109, x[10]-x[195]-x[200]-x[205]-x[210] == 0.0)
@constraint(m, e110, x[10]-x[196]-x[201]-x[206]-x[211] == 0.0)
@constraint(m, e111, x[10]-x[197]-x[202]-x[207]-x[212] == 0.0)
@constraint(m, e112, x[11]-x[213]-x[218]-x[223]-x[228] == 0.0)
@constraint(m, e113, x[11]-x[214]-x[219]-x[224]-x[229] == 0.0)
@constraint(m, e114, x[11]-x[215]-x[220]-x[225]-x[230] == 0.0)
@constraint(m, e115, x[11]-x[216]-x[221]-x[226]-x[231] == 0.0)
@constraint(m, e116, x[11]-x[217]-x[222]-x[227]-x[232] == 0.0)
@constraint(m, e117, x[12]-x[233]-x[238]-x[243]-x[248] == 0.0)
@constraint(m, e118, x[12]-x[234]-x[239]-x[244]-x[249] == 0.0)
@constraint(m, e119, x[12]-x[235]-x[240]-x[245]-x[250] == 0.0)
@constraint(m, e120, x[12]-x[236]-x[241]-x[246]-x[251] == 0.0)
@constraint(m, e121, x[12]-x[237]-x[242]-x[247]-x[252] == 0.0)
@constraint(m, e122, x[13]-27.5*b[253] <= 0.0)
@constraint(m, e123, x[14]-27.5*b[254] <= 0.0)
@constraint(m, e124, x[15]-27.5*b[255] <= 0.0)
@constraint(m, e125, x[16]-27.5*b[256] <= 0.0)
@constraint(m, e126, x[17]-27.5*b[257] <= 0.0)
@constraint(m, e127, x[18]-27.5*b[268] <= 0.0)
@constraint(m, e128, x[19]-27.5*b[269] <= 0.0)
@constraint(m, e129, x[20]-27.5*b[270] <= 0.0)
@constraint(m, e130, x[21]-27.5*b[271] <= 0.0)
@constraint(m, e131, x[22]-27.5*b[272] <= 0.0)
@constraint(m, e132, x[23]-27.5*b[283] <= 0.0)
@constraint(m, e133, x[24]-27.5*b[284] <= 0.0)
@constraint(m, e134, x[25]-27.5*b[285] <= 0.0)
@constraint(m, e135, x[26]-27.5*b[286] <= 0.0)
@constraint(m, e136, x[27]-27.5*b[287] <= 0.0)
@constraint(m, e137, x[28]-27.5*b[298] <= 0.0)
@constraint(m, e138, x[29]-27.5*b[299] <= 0.0)
@constraint(m, e139, x[30]-27.5*b[300] <= 0.0)
@constraint(m, e140, x[31]-27.5*b[301] <= 0.0)
@constraint(m, e141, x[32]-27.5*b[302] <= 0.0)
@constraint(m, e142, x[33]-27.5*b[253] <= 0.0)
@constraint(m, e143, x[34]-26.5*b[258] <= 0.0)
@constraint(m, e144, x[35]-26.5*b[259] <= 0.0)
@constraint(m, e145, x[36]-26.5*b[260] <= 0.0)
@constraint(m, e146, x[37]-26.5*b[261] <= 0.0)
@constraint(m, e147, x[38]-27.5*b[268] <= 0.0)
@constraint(m, e148, x[39]-26.5*b[273] <= 0.0)
@constraint(m, e149, x[40]-26.5*b[274] <= 0.0)
@constraint(m, e150, x[41]-26.5*b[275] <= 0.0)
@constraint(m, e151, x[42]-26.5*b[276] <= 0.0)
@constraint(m, e152, x[43]-27.5*b[283] <= 0.0)
@constraint(m, e153, x[44]-26.5*b[288] <= 0.0)
@constraint(m, e154, x[45]-26.5*b[289] <= 0.0)
@constraint(m, e155, x[46]-26.5*b[290] <= 0.0)
@constraint(m, e156, x[47]-26.5*b[291] <= 0.0)
@constraint(m, e157, x[48]-27.5*b[298] <= 0.0)
@constraint(m, e158, x[49]-26.5*b[303] <= 0.0)
@constraint(m, e159, x[50]-26.5*b[304] <= 0.0)
@constraint(m, e160, x[51]-26.5*b[305] <= 0.0)
@constraint(m, e161, x[52]-26.5*b[306] <= 0.0)
@constraint(m, e162, x[53]-27.5*b[254] <= 0.0)
@constraint(m, e163, x[54]-26.5*b[258] <= 0.0)
@constraint(m, e164, x[55]-28.5*b[262] <= 0.0)
@constraint(m, e165, x[56]-28.5*b[263] <= 0.0)
@constraint(m, e166, x[57]-28.5*b[264] <= 0.0)
@constraint(m, e167, x[58]-27.5*b[269] <= 0.0)
@constraint(m, e168, x[59]-26.5*b[273] <= 0.0)
@constraint(m, e169, x[60]-28.5*b[277] <= 0.0)
@constraint(m, e170, x[61]-28.5*b[278] <= 0.0)
@constraint(m, e171, x[62]-28.5*b[279] <= 0.0)
@constraint(m, e172, x[63]-27.5*b[284] <= 0.0)
@constraint(m, e173, x[64]-26.5*b[288] <= 0.0)
@constraint(m, e174, x[65]-28.5*b[292] <= 0.0)
@constraint(m, e175, x[66]-28.5*b[293] <= 0.0)
@constraint(m, e176, x[67]-28.5*b[294] <= 0.0)
@constraint(m, e177, x[68]-27.5*b[299] <= 0.0)
@constraint(m, e178, x[69]-26.5*b[303] <= 0.0)
@constraint(m, e179, x[70]-28.5*b[307] <= 0.0)
@constraint(m, e180, x[71]-28.5*b[308] <= 0.0)
@constraint(m, e181, x[72]-28.5*b[309] <= 0.0)
@constraint(m, e182, x[73]-27.5*b[255] <= 0.0)
@constraint(m, e183, x[74]-26.5*b[259] <= 0.0)
@constraint(m, e184, x[75]-28.5*b[262] <= 0.0)
@constraint(m, e185, x[76]-29*b[265] <= 0.0)
@constraint(m, e186, x[77]-29*b[266] <= 0.0)
@constraint(m, e187, x[78]-27.5*b[270] <= 0.0)
@constraint(m, e188, x[79]-26.5*b[274] <= 0.0)
@constraint(m, e189, x[80]-28.5*b[277] <= 0.0)
@constraint(m, e190, x[81]-29*b[280] <= 0.0)
@constraint(m, e191, x[82]-29*b[281] <= 0.0)
@constraint(m, e192, x[83]-27.5*b[285] <= 0.0)
@constraint(m, e193, x[84]-26.5*b[289] <= 0.0)
@constraint(m, e194, x[85]-28.5*b[292] <= 0.0)
@constraint(m, e195, x[86]-29*b[295] <= 0.0)
@constraint(m, e196, x[87]-29*b[296] <= 0.0)
@constraint(m, e197, x[88]-27.5*b[300] <= 0.0)
@constraint(m, e198, x[89]-26.5*b[304] <= 0.0)
@constraint(m, e199, x[90]-28.5*b[307] <= 0.0)
@constraint(m, e200, x[91]-29*b[310] <= 0.0)
@constraint(m, e201, x[92]-29*b[311] <= 0.0)
@constraint(m, e202, x[93]-27.5*b[256] <= 0.0)
@constraint(m, e203, x[94]-26.5*b[260] <= 0.0)
@constraint(m, e204, x[95]-28.5*b[263] <= 0.0)
@constraint(m, e205, x[96]-29*b[265] <= 0.0)
@constraint(m, e206, x[97]-28*b[267] <= 0.0)
@constraint(m, e207, x[98]-27.5*b[271] <= 0.0)
@constraint(m, e208, x[99]-26.5*b[275] <= 0.0)
@constraint(m, e209, x[100]-28.5*b[278] <= 0.0)
@constraint(m, e210, x[101]-29*b[280] <= 0.0)
@constraint(m, e211, x[102]-28*b[282] <= 0.0)
@constraint(m, e212, x[103]-27.5*b[286] <= 0.0)
@constraint(m, e213, x[104]-26.5*b[290] <= 0.0)
@constraint(m, e214, x[105]-28.5*b[293] <= 0.0)
@constraint(m, e215, x[106]-29*b[295] <= 0.0)
@constraint(m, e216, x[107]-28*b[297] <= 0.0)
@constraint(m, e217, x[108]-27.5*b[301] <= 0.0)
@constraint(m, e218, x[109]-26.5*b[305] <= 0.0)
@constraint(m, e219, x[110]-28.5*b[308] <= 0.0)
@constraint(m, e220, x[111]-29*b[310] <= 0.0)
@constraint(m, e221, x[112]-28*b[312] <= 0.0)
@constraint(m, e222, x[113]-27.5*b[257] <= 0.0)
@constraint(m, e223, x[114]-26.5*b[261] <= 0.0)
@constraint(m, e224, x[115]-28.5*b[264] <= 0.0)
@constraint(m, e225, x[116]-29*b[266] <= 0.0)
@constraint(m, e226, x[117]-28*b[267] <= 0.0)
@constraint(m, e227, x[118]-27.5*b[272] <= 0.0)
@constraint(m, e228, x[119]-26.5*b[276] <= 0.0)
@constraint(m, e229, x[120]-28.5*b[279] <= 0.0)
@constraint(m, e230, x[121]-29*b[281] <= 0.0)
@constraint(m, e231, x[122]-28*b[282] <= 0.0)
@constraint(m, e232, x[123]-27.5*b[287] <= 0.0)
@constraint(m, e233, x[124]-26.5*b[291] <= 0.0)
@constraint(m, e234, x[125]-28.5*b[294] <= 0.0)
@constraint(m, e235, x[126]-29*b[296] <= 0.0)
@constraint(m, e236, x[127]-28*b[297] <= 0.0)
@constraint(m, e237, x[128]-27.5*b[302] <= 0.0)
@constraint(m, e238, x[129]-26.5*b[306] <= 0.0)
@constraint(m, e239, x[130]-28.5*b[309] <= 0.0)
@constraint(m, e240, x[131]-29*b[311] <= 0.0)
@constraint(m, e241, x[132]-28*b[312] <= 0.0)
@constraint(m, e242, x[133]-27*b[253] <= 0.0)
@constraint(m, e243, x[134]-27*b[254] <= 0.0)
@constraint(m, e244, x[135]-27*b[255] <= 0.0)
@constraint(m, e245, x[136]-27*b[256] <= 0.0)
@constraint(m, e246, x[137]-27*b[257] <= 0.0)
@constraint(m, e247, x[138]-27*b[268] <= 0.0)
@constraint(m, e248, x[139]-27*b[269] <= 0.0)
@constraint(m, e249, x[140]-27*b[270] <= 0.0)
@constraint(m, e250, x[141]-27*b[271] <= 0.0)
@constraint(m, e251, x[142]-27*b[272] <= 0.0)
@constraint(m, e252, x[143]-27*b[283] <= 0.0)
@constraint(m, e253, x[144]-27*b[284] <= 0.0)
@constraint(m, e254, x[145]-27*b[285] <= 0.0)
@constraint(m, e255, x[146]-27*b[286] <= 0.0)
@constraint(m, e256, x[147]-27*b[287] <= 0.0)
@constraint(m, e257, x[148]-27*b[298] <= 0.0)
@constraint(m, e258, x[149]-27*b[299] <= 0.0)
@constraint(m, e259, x[150]-27*b[300] <= 0.0)
@constraint(m, e260, x[151]-27*b[301] <= 0.0)
@constraint(m, e261, x[152]-27*b[302] <= 0.0)
@constraint(m, e262, x[153]-27*b[253] <= 0.0)
@constraint(m, e263, x[154]-27.5*b[258] <= 0.0)
@constraint(m, e264, x[155]-27.5*b[259] <= 0.0)
@constraint(m, e265, x[156]-27.5*b[260] <= 0.0)
@constraint(m, e266, x[157]-27.5*b[261] <= 0.0)
@constraint(m, e267, x[158]-27*b[268] <= 0.0)
@constraint(m, e268, x[159]-27.5*b[273] <= 0.0)
@constraint(m, e269, x[160]-27.5*b[274] <= 0.0)
@constraint(m, e270, x[161]-27.5*b[275] <= 0.0)
@constraint(m, e271, x[162]-27.5*b[276] <= 0.0)
@constraint(m, e272, x[163]-27*b[283] <= 0.0)
@constraint(m, e273, x[164]-27.5*b[288] <= 0.0)
@constraint(m, e274, x[165]-27.5*b[289] <= 0.0)
@constraint(m, e275, x[166]-27.5*b[290] <= 0.0)
@constraint(m, e276, x[167]-27.5*b[291] <= 0.0)
@constraint(m, e277, x[168]-27*b[298] <= 0.0)
@constraint(m, e278, x[169]-27.5*b[303] <= 0.0)
@constraint(m, e279, x[170]-27.5*b[304] <= 0.0)
@constraint(m, e280, x[171]-27.5*b[305] <= 0.0)
@constraint(m, e281, x[172]-27.5*b[306] <= 0.0)
@constraint(m, e282, x[173]-27*b[254] <= 0.0)
@constraint(m, e283, x[174]-27.5*b[258] <= 0.0)
@constraint(m, e284, x[175]-28.5*b[262] <= 0.0)
@constraint(m, e285, x[176]-28.5*b[263] <= 0.0)
@constraint(m, e286, x[177]-28.5*b[264] <= 0.0)
@constraint(m, e287, x[178]-27*b[269] <= 0.0)
@constraint(m, e288, x[179]-27.5*b[273] <= 0.0)
@constraint(m, e289, x[180]-28.5*b[277] <= 0.0)
@constraint(m, e290, x[181]-28.5*b[278] <= 0.0)
@constraint(m, e291, x[182]-28.5*b[279] <= 0.0)
@constraint(m, e292, x[183]-27*b[284] <= 0.0)
@constraint(m, e293, x[184]-27.5*b[288] <= 0.0)
@constraint(m, e294, x[185]-28.5*b[292] <= 0.0)
@constraint(m, e295, x[186]-28.5*b[293] <= 0.0)
@constraint(m, e296, x[187]-28.5*b[294] <= 0.0)
@constraint(m, e297, x[188]-27*b[299] <= 0.0)
@constraint(m, e298, x[189]-27.5*b[303] <= 0.0)
@constraint(m, e299, x[190]-28.5*b[307] <= 0.0)
@constraint(m, e300, x[191]-28.5*b[308] <= 0.0)
@constraint(m, e301, x[192]-28.5*b[309] <= 0.0)
@constraint(m, e302, x[193]-27*b[255] <= 0.0)
@constraint(m, e303, x[194]-27.5*b[259] <= 0.0)
@constraint(m, e304, x[195]-28.5*b[262] <= 0.0)
@constraint(m, e305, x[196]-28.5*b[265] <= 0.0)
@constraint(m, e306, x[197]-28.5*b[266] <= 0.0)
@constraint(m, e307, x[198]-27*b[270] <= 0.0)
@constraint(m, e308, x[199]-27.5*b[274] <= 0.0)
@constraint(m, e309, x[200]-28.5*b[277] <= 0.0)
@constraint(m, e310, x[201]-28.5*b[280] <= 0.0)
@constraint(m, e311, x[202]-28.5*b[281] <= 0.0)
@constraint(m, e312, x[203]-27*b[285] <= 0.0)
@constraint(m, e313, x[204]-27.5*b[289] <= 0.0)
@constraint(m, e314, x[205]-28.5*b[292] <= 0.0)
@constraint(m, e315, x[206]-28.5*b[295] <= 0.0)
@constraint(m, e316, x[207]-28.5*b[296] <= 0.0)
@constraint(m, e317, x[208]-27*b[300] <= 0.0)
@constraint(m, e318, x[209]-27.5*b[304] <= 0.0)
@constraint(m, e319, x[210]-28.5*b[307] <= 0.0)
@constraint(m, e320, x[211]-28.5*b[310] <= 0.0)
@constraint(m, e321, x[212]-28.5*b[311] <= 0.0)
@constraint(m, e322, x[213]-27*b[256] <= 0.0)
@constraint(m, e323, x[214]-27.5*b[260] <= 0.0)
@constraint(m, e324, x[215]-28.5*b[263] <= 0.0)
@constraint(m, e325, x[216]-28.5*b[265] <= 0.0)
@constraint(m, e326, x[217]-28*b[267] <= 0.0)
@constraint(m, e327, x[218]-27*b[271] <= 0.0)
@constraint(m, e328, x[219]-27.5*b[275] <= 0.0)
@constraint(m, e329, x[220]-28.5*b[278] <= 0.0)
@constraint(m, e330, x[221]-28.5*b[280] <= 0.0)
@constraint(m, e331, x[222]-28*b[282] <= 0.0)
@constraint(m, e332, x[223]-27*b[286] <= 0.0)
@constraint(m, e333, x[224]-27.5*b[290] <= 0.0)
@constraint(m, e334, x[225]-28.5*b[293] <= 0.0)
@constraint(m, e335, x[226]-28.5*b[295] <= 0.0)
@constraint(m, e336, x[227]-28*b[297] <= 0.0)
@constraint(m, e337, x[228]-27*b[301] <= 0.0)
@constraint(m, e338, x[229]-27.5*b[305] <= 0.0)
@constraint(m, e339, x[230]-28.5*b[308] <= 0.0)
@constraint(m, e340, x[231]-28.5*b[310] <= 0.0)
@constraint(m, e341, x[232]-28*b[312] <= 0.0)
@constraint(m, e342, x[233]-27*b[257] <= 0.0)
@constraint(m, e343, x[234]-27.5*b[261] <= 0.0)
@constraint(m, e344, x[235]-28.5*b[264] <= 0.0)
@constraint(m, e345, x[236]-28.5*b[266] <= 0.0)
@constraint(m, e346, x[237]-28*b[267] <= 0.0)
@constraint(m, e347, x[238]-27*b[272] <= 0.0)
@constraint(m, e348, x[239]-27.5*b[276] <= 0.0)
@constraint(m, e349, x[240]-28.5*b[279] <= 0.0)
@constraint(m, e350, x[241]-28.5*b[281] <= 0.0)
@constraint(m, e351, x[242]-28*b[282] <= 0.0)
@constraint(m, e352, x[243]-27*b[287] <= 0.0)
@constraint(m, e353, x[244]-27.5*b[291] <= 0.0)
@constraint(m, e354, x[245]-28.5*b[294] <= 0.0)
@constraint(m, e355, x[246]-28.5*b[296] <= 0.0)
@constraint(m, e356, x[247]-28*b[297] <= 0.0)
@constraint(m, e357, x[248]-27*b[302] <= 0.0)
@constraint(m, e358, x[249]-27.5*b[306] <= 0.0)
@constraint(m, e359, x[250]-28.5*b[309] <= 0.0)
@constraint(m, e360, x[251]-28.5*b[311] <= 0.0)
@constraint(m, e361, x[252]-28*b[312] <= 0.0)
@constraint(m, e362, x[13]-x[33]+6*b[253] <= 0.0)
@constraint(m, e363, x[14]-x[53]+4*b[254] <= 0.0)
@constraint(m, e364, x[15]-x[73]+3.5*b[255] <= 0.0)
@constraint(m, e365, x[16]-x[93]+4.5*b[256] <= 0.0)
@constraint(m, e366, x[17]-x[113]+5*b[257] <= 0.0)
@constraint(m, e367, x[34]-x[54]+5*b[258] <= 0.0)
@constraint(m, e368, x[35]-x[74]+4.5*b[259] <= 0.0)
@constraint(m, e369, x[36]-x[94]+5.5*b[260] <= 0.0)
@constraint(m, e370, x[37]-x[114]+6*b[261] <= 0.0)
@constraint(m, e371, x[55]-x[75]+2.5*b[262] <= 0.0)
@constraint(m, e372, x[56]-x[95]+3.5*b[263] <= 0.0)
@constraint(m, e373, x[57]-x[115]+4*b[264] <= 0.0)
@constraint(m, e374, x[76]-x[96]+3*b[265] <= 0.0)
@constraint(m, e375, x[77]-x[116]+3.5*b[266] <= 0.0)
@constraint(m, e376, x[97]-x[117]+4.5*b[267] <= 0.0)
@constraint(m, e377, -x[18]+x[38]+6*b[268] <= 0.0)
@constraint(m, e378, -x[19]+x[58]+4*b[269] <= 0.0)
@constraint(m, e379, -x[20]+x[78]+3.5*b[270] <= 0.0)
@constraint(m, e380, -x[21]+x[98]+4.5*b[271] <= 0.0)
@constraint(m, e381, -x[22]+x[118]+5*b[272] <= 0.0)
@constraint(m, e382, -x[39]+x[59]+5*b[273] <= 0.0)
@constraint(m, e383, -x[40]+x[79]+4.5*b[274] <= 0.0)
@constraint(m, e384, -x[41]+x[99]+5.5*b[275] <= 0.0)
@constraint(m, e385, -x[42]+x[119]+6*b[276] <= 0.0)
@constraint(m, e386, -x[60]+x[80]+2.5*b[277] <= 0.0)
@constraint(m, e387, -x[61]+x[100]+3.5*b[278] <= 0.0)
@constraint(m, e388, -x[62]+x[120]+4*b[279] <= 0.0)
@constraint(m, e389, -x[81]+x[101]+3*b[280] <= 0.0)
@constraint(m, e390, -x[82]+x[121]+3.5*b[281] <= 0.0)
@constraint(m, e391, -x[102]+x[122]+4.5*b[282] <= 0.0)
@constraint(m, e392, x[143]-x[163]+5.5*b[283] <= 0.0)
@constraint(m, e393, x[144]-x[183]+4.5*b[284] <= 0.0)
@constraint(m, e394, x[145]-x[203]+4.5*b[285] <= 0.0)
@constraint(m, e395, x[146]-x[223]+5*b[286] <= 0.0)
@constraint(m, e396, x[147]-x[243]+4*b[287] <= 0.0)
@constraint(m, e397, x[164]-x[184]+4*b[288] <= 0.0)
@constraint(m, e398, x[165]-x[204]+4*b[289] <= 0.0)
@constraint(m, e399, x[166]-x[224]+4.5*b[290] <= 0.0)
@constraint(m, e400, x[167]-x[244]+3.5*b[291] <= 0.0)
@constraint(m, e401, x[185]-x[205]+3*b[292] <= 0.0)
@constraint(m, e402, x[186]-x[225]+3.5*b[293] <= 0.0)
@constraint(m, e403, x[187]-x[245]+2.5*b[294] <= 0.0)
@constraint(m, e404, x[206]-x[226]+3.5*b[295] <= 0.0)
@constraint(m, e405, x[207]-x[246]+2.5*b[296] <= 0.0)
@constraint(m, e406, x[227]-x[247]+3*b[297] <= 0.0)
@constraint(m, e407, -x[148]+x[168]+5.5*b[298] <= 0.0)
@constraint(m, e408, -x[149]+x[188]+4.5*b[299] <= 0.0)
@constraint(m, e409, -x[150]+x[208]+4.5*b[300] <= 0.0)
@constraint(m, e410, -x[151]+x[228]+5*b[301] <= 0.0)
@constraint(m, e411, -x[152]+x[248]+4*b[302] <= 0.0)
@constraint(m, e412, -x[169]+x[189]+4*b[303] <= 0.0)
@constraint(m, e413, -x[170]+x[209]+4*b[304] <= 0.0)
@constraint(m, e414, -x[171]+x[229]+4.5*b[305] <= 0.0)
@constraint(m, e415, -x[172]+x[249]+3.5*b[306] <= 0.0)
@constraint(m, e416, -x[190]+x[210]+3*b[307] <= 0.0)
@constraint(m, e417, -x[191]+x[230]+3.5*b[308] <= 0.0)
@constraint(m, e418, -x[192]+x[250]+2.5*b[309] <= 0.0)
@constraint(m, e419, -x[211]+x[231]+3.5*b[310] <= 0.0)
@constraint(m, e420, -x[212]+x[251]+2.5*b[311] <= 0.0)
@constraint(m, e421, -x[232]+x[252]+3*b[312] <= 0.0)
@constraint(m, e422, b[253]+b[268]+b[283]+b[298] == 1.0)
@constraint(m, e423, b[254]+b[269]+b[284]+b[299] == 1.0)
@constraint(m, e424, b[255]+b[270]+b[285]+b[300] == 1.0)
@constraint(m, e425, b[256]+b[271]+b[286]+b[301] == 1.0)
@constraint(m, e426, b[257]+b[272]+b[287]+b[302] == 1.0)
@constraint(m, e427, b[258]+b[273]+b[288]+b[303] == 1.0)
@constraint(m, e428, b[259]+b[274]+b[289]+b[304] == 1.0)
@constraint(m, e429, b[260]+b[275]+b[290]+b[305] == 1.0)
@constraint(m, e430, b[261]+b[276]+b[291]+b[306] == 1.0)
@constraint(m, e431, b[262]+b[277]+b[292]+b[307] == 1.0)
@constraint(m, e432, b[263]+b[278]+b[293]+b[308] == 1.0)
@constraint(m, e433, b[264]+b[279]+b[294]+b[309] == 1.0)
@constraint(m, e434, b[265]+b[280]+b[295]+b[310] == 1.0)
@constraint(m, e435, b[266]+b[281]+b[296]+b[311] == 1.0)
@constraint(m, e436, b[267]+b[282]+b[297]+b[312] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[343])
m = m 		 # model get returned when including this script. 
