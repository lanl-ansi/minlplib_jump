using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
@variable(m, x[x_Idx])
b_Idx = Any[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480]
@variable(m, b[b_Idx])
setcategory(b[304], :Bin)
setcategory(b[389], :Bin)
setcategory(b[216], :Bin)
setcategory(b[230], :Bin)
setcategory(b[301], :Bin)
setcategory(b[300], :Bin)
setcategory(b[341], :Bin)
setcategory(b[317], :Bin)
setcategory(b[450], :Bin)
setcategory(b[228], :Bin)
setcategory(b[176], :Bin)
setcategory(b[133], :Bin)
setcategory(b[271], :Bin)
setcategory(b[348], :Bin)
setcategory(b[423], :Bin)
setcategory(b[438], :Bin)
setcategory(b[314], :Bin)
setcategory(b[169], :Bin)
setcategory(b[196], :Bin)
setcategory(b[180], :Bin)
setcategory(b[178], :Bin)
setcategory(b[232], :Bin)
setcategory(b[320], :Bin)
setcategory(b[409], :Bin)
setcategory(b[208], :Bin)
setcategory(b[64], :Bin)
setcategory(b[112], :Bin)
setcategory(b[417], :Bin)
setcategory(b[372], :Bin)
setcategory(b[418], :Bin)
setcategory(b[243], :Bin)
setcategory(b[130], :Bin)
setcategory(b[282], :Bin)
setcategory(b[87], :Bin)
setcategory(b[370], :Bin)
setcategory(b[132], :Bin)
setcategory(b[327], :Bin)
setcategory(b[446], :Bin)
setcategory(b[355], :Bin)
setcategory(b[407], :Bin)
setcategory(b[291], :Bin)
setcategory(b[468], :Bin)
setcategory(b[211], :Bin)
setcategory(b[270], :Bin)
setcategory(b[309], :Bin)
setcategory(b[444], :Bin)
setcategory(b[119], :Bin)
setcategory(b[79], :Bin)
setcategory(b[410], :Bin)
setcategory(b[213], :Bin)
setcategory(b[352], :Bin)
setcategory(b[264], :Bin)
setcategory(b[431], :Bin)
setcategory(b[443], :Bin)
setcategory(b[383], :Bin)
setcategory(b[338], :Bin)
setcategory(b[60], :Bin)
setcategory(b[159], :Bin)
setcategory(b[343], :Bin)
setcategory(b[353], :Bin)
setcategory(b[275], :Bin)
setcategory(b[359], :Bin)
setcategory(b[227], :Bin)
setcategory(b[197], :Bin)
setcategory(b[379], :Bin)
setcategory(b[235], :Bin)
setcategory(b[344], :Bin)
setcategory(b[413], :Bin)
setcategory(b[333], :Bin)
setcategory(b[286], :Bin)
setcategory(b[310], :Bin)
setcategory(b[193], :Bin)
setcategory(b[390], :Bin)
setcategory(b[385], :Bin)
setcategory(b[430], :Bin)
setcategory(b[422], :Bin)
setcategory(b[325], :Bin)
setcategory(b[88], :Bin)
setcategory(b[50], :Bin)
setcategory(b[366], :Bin)
setcategory(b[192], :Bin)
setcategory(b[209], :Bin)
setcategory(b[97], :Bin)
setcategory(b[262], :Bin)
setcategory(b[200], :Bin)
setcategory(b[188], :Bin)
setcategory(b[470], :Bin)
setcategory(b[476], :Bin)
setcategory(b[62], :Bin)
setcategory(b[469], :Bin)
setcategory(b[113], :Bin)
setcategory(b[278], :Bin)
setcategory(b[354], :Bin)
setcategory(b[373], :Bin)
setcategory(b[440], :Bin)
setcategory(b[218], :Bin)
setcategory(b[220], :Bin)
setcategory(b[322], :Bin)
setcategory(b[236], :Bin)
setcategory(b[455], :Bin)
setcategory(b[162], :Bin)
setcategory(b[364], :Bin)
setcategory(b[346], :Bin)
setcategory(b[473], :Bin)
setcategory(b[369], :Bin)
setcategory(b[437], :Bin)
setcategory(b[161], :Bin)
setcategory(b[393], :Bin)
setcategory(b[276], :Bin)
setcategory(b[224], :Bin)
setcategory(b[199], :Bin)
setcategory(b[252], :Bin)
setcategory(b[75], :Bin)
setcategory(b[128], :Bin)
setcategory(b[167], :Bin)
setcategory(b[360], :Bin)
setcategory(b[177], :Bin)
setcategory(b[295], :Bin)
setcategory(b[427], :Bin)
setcategory(b[70], :Bin)
setcategory(b[163], :Bin)
setcategory(b[269], :Bin)
setcategory(b[285], :Bin)
setcategory(b[289], :Bin)
setcategory(b[411], :Bin)
setcategory(b[274], :Bin)
setcategory(b[242], :Bin)
setcategory(b[380], :Bin)
setcategory(b[340], :Bin)
setcategory(b[143], :Bin)
setcategory(b[368], :Bin)
setcategory(b[90], :Bin)
setcategory(b[206], :Bin)
setcategory(b[378], :Bin)
setcategory(b[464], :Bin)
setcategory(b[229], :Bin)
setcategory(b[233], :Bin)
setcategory(b[328], :Bin)
setcategory(b[84], :Bin)
setcategory(b[331], :Bin)
setcategory(b[401], :Bin)
setcategory(b[53], :Bin)
setcategory(b[116], :Bin)
setcategory(b[299], :Bin)
setcategory(b[255], :Bin)
setcategory(b[466], :Bin)
setcategory(b[61], :Bin)
setcategory(b[223], :Bin)
setcategory(b[89], :Bin)
setcategory(b[403], :Bin)
setcategory(b[387], :Bin)
setcategory(b[145], :Bin)
setcategory(b[305], :Bin)
setcategory(b[454], :Bin)
setcategory(b[405], :Bin)
setcategory(b[86], :Bin)
setcategory(b[256], :Bin)
setcategory(b[114], :Bin)
setcategory(b[281], :Bin)
setcategory(b[260], :Bin)
setcategory(b[153], :Bin)
setcategory(b[400], :Bin)
setcategory(b[332], :Bin)
setcategory(b[375], :Bin)
setcategory(b[69], :Bin)
setcategory(b[144], :Bin)
setcategory(b[68], :Bin)
setcategory(b[240], :Bin)
setcategory(b[244], :Bin)
setcategory(b[166], :Bin)
setcategory(b[347], :Bin)
setcategory(b[349], :Bin)
setcategory(b[246], :Bin)
setcategory(b[214], :Bin)
setcategory(b[138], :Bin)
setcategory(b[226], :Bin)
setcategory(b[336], :Bin)
setcategory(b[391], :Bin)
setcategory(b[151], :Bin)
setcategory(b[135], :Bin)
setcategory(b[108], :Bin)
setcategory(b[461], :Bin)
setcategory(b[457], :Bin)
setcategory(b[154], :Bin)
setcategory(b[76], :Bin)
setcategory(b[109], :Bin)
setcategory(b[297], :Bin)
setcategory(b[174], :Bin)
setcategory(b[259], :Bin)
setcategory(b[453], :Bin)
setcategory(b[329], :Bin)
setcategory(b[292], :Bin)
setcategory(b[357], :Bin)
setcategory(b[434], :Bin)
setcategory(b[361], :Bin)
setcategory(b[394], :Bin)
setcategory(b[321], :Bin)
setcategory(b[237], :Bin)
setcategory(b[155], :Bin)
setcategory(b[94], :Bin)
setcategory(b[149], :Bin)
setcategory(b[335], :Bin)
setcategory(b[107], :Bin)
setcategory(b[376], :Bin)
setcategory(b[181], :Bin)
setcategory(b[52], :Bin)
setcategory(b[139], :Bin)
setcategory(b[460], :Bin)
setcategory(b[311], :Bin)
setcategory(b[277], :Bin)
setcategory(b[131], :Bin)
setcategory(b[303], :Bin)
setcategory(b[241], :Bin)
setcategory(b[345], :Bin)
setcategory(b[441], :Bin)
setcategory(b[406], :Bin)
setcategory(b[71], :Bin)
setcategory(b[78], :Bin)
setcategory(b[392], :Bin)
setcategory(b[215], :Bin)
setcategory(b[358], :Bin)
setcategory(b[66], :Bin)
setcategory(b[381], :Bin)
setcategory(b[80], :Bin)
setcategory(b[356], :Bin)
setcategory(b[160], :Bin)
setcategory(b[49], :Bin)
setcategory(b[456], :Bin)
setcategory(b[351], :Bin)
setcategory(b[137], :Bin)
setcategory(b[185], :Bin)
setcategory(b[105], :Bin)
setcategory(b[164], :Bin)
setcategory(b[124], :Bin)
setcategory(b[388], :Bin)
setcategory(b[480], :Bin)
setcategory(b[447], :Bin)
setcategory(b[54], :Bin)
setcategory(b[111], :Bin)
setcategory(b[307], :Bin)
setcategory(b[414], :Bin)
setcategory(b[313], :Bin)
setcategory(b[170], :Bin)
setcategory(b[239], :Bin)
setcategory(b[98], :Bin)
setcategory(b[280], :Bin)
setcategory(b[475], :Bin)
setcategory(b[257], :Bin)
setcategory(b[337], :Bin)
setcategory(b[219], :Bin)
setcategory(b[186], :Bin)
setcategory(b[77], :Bin)
setcategory(b[254], :Bin)
setcategory(b[273], :Bin)
setcategory(b[172], :Bin)
setcategory(b[127], :Bin)
setcategory(b[426], :Bin)
setcategory(b[56], :Bin)
setcategory(b[104], :Bin)
setcategory(b[171], :Bin)
setcategory(b[479], :Bin)
setcategory(b[221], :Bin)
setcategory(b[74], :Bin)
setcategory(b[432], :Bin)
setcategory(b[248], :Bin)
setcategory(b[92], :Bin)
setcategory(b[72], :Bin)
setcategory(b[126], :Bin)
setcategory(b[416], :Bin)
setcategory(b[129], :Bin)
setcategory(b[238], :Bin)
setcategory(b[424], :Bin)
setcategory(b[190], :Bin)
setcategory(b[234], :Bin)
setcategory(b[302], :Bin)
setcategory(b[404], :Bin)
setcategory(b[212], :Bin)
setcategory(b[268], :Bin)
setcategory(b[125], :Bin)
setcategory(b[398], :Bin)
setcategory(b[184], :Bin)
setcategory(b[308], :Bin)
setcategory(b[110], :Bin)
setcategory(b[231], :Bin)
setcategory(b[183], :Bin)
setcategory(b[428], :Bin)
setcategory(b[318], :Bin)
setcategory(b[117], :Bin)
setcategory(b[290], :Bin)
setcategory(b[195], :Bin)
setcategory(b[462], :Bin)
setcategory(b[83], :Bin)
setcategory(b[279], :Bin)
setcategory(b[435], :Bin)
setcategory(b[59], :Bin)
setcategory(b[204], :Bin)
setcategory(b[67], :Bin)
setcategory(b[284], :Bin)
setcategory(b[442], :Bin)
setcategory(b[272], :Bin)
setcategory(b[175], :Bin)
setcategory(b[222], :Bin)
setcategory(b[296], :Bin)
setcategory(b[452], :Bin)
setcategory(b[93], :Bin)
setcategory(b[99], :Bin)
setcategory(b[198], :Bin)
setcategory(b[467], :Bin)
setcategory(b[377], :Bin)
setcategory(b[146], :Bin)
setcategory(b[123], :Bin)
setcategory(b[187], :Bin)
setcategory(b[202], :Bin)
setcategory(b[449], :Bin)
setcategory(b[472], :Bin)
setcategory(b[367], :Bin)
setcategory(b[122], :Bin)
setcategory(b[250], :Bin)
setcategory(b[121], :Bin)
setcategory(b[397], :Bin)
setcategory(b[157], :Bin)
setcategory(b[147], :Bin)
setcategory(b[201], :Bin)
setcategory(b[258], :Bin)
setcategory(b[156], :Bin)
setcategory(b[73], :Bin)
setcategory(b[217], :Bin)
setcategory(b[266], :Bin)
setcategory(b[420], :Bin)
setcategory(b[408], :Bin)
setcategory(b[477], :Bin)
setcategory(b[118], :Bin)
setcategory(b[415], :Bin)
setcategory(b[330], :Bin)
setcategory(b[158], :Bin)
setcategory(b[319], :Bin)
setcategory(b[306], :Bin)
setcategory(b[120], :Bin)
setcategory(b[85], :Bin)
setcategory(b[251], :Bin)
setcategory(b[267], :Bin)
setcategory(b[82], :Bin)
setcategory(b[374], :Bin)
setcategory(b[448], :Bin)
setcategory(b[168], :Bin)
setcategory(b[106], :Bin)
setcategory(b[207], :Bin)
setcategory(b[81], :Bin)
setcategory(b[436], :Bin)
setcategory(b[225], :Bin)
setcategory(b[315], :Bin)
setcategory(b[141], :Bin)
setcategory(b[316], :Bin)
setcategory(b[386], :Bin)
setcategory(b[395], :Bin)
setcategory(b[459], :Bin)
setcategory(b[136], :Bin)
setcategory(b[298], :Bin)
setcategory(b[150], :Bin)
setcategory(b[203], :Bin)
setcategory(b[95], :Bin)
setcategory(b[115], :Bin)
setcategory(b[425], :Bin)
setcategory(b[189], :Bin)
setcategory(b[173], :Bin)
setcategory(b[249], :Bin)
setcategory(b[58], :Bin)
setcategory(b[96], :Bin)
setcategory(b[57], :Bin)
setcategory(b[433], :Bin)
setcategory(b[334], :Bin)
setcategory(b[293], :Bin)
setcategory(b[463], :Bin)
setcategory(b[324], :Bin)
setcategory(b[102], :Bin)
setcategory(b[399], :Bin)
setcategory(b[245], :Bin)
setcategory(b[384], :Bin)
setcategory(b[362], :Bin)
setcategory(b[474], :Bin)
setcategory(b[247], :Bin)
setcategory(b[421], :Bin)
setcategory(b[51], :Bin)
setcategory(b[100], :Bin)
setcategory(b[429], :Bin)
setcategory(b[445], :Bin)
setcategory(b[402], :Bin)
setcategory(b[142], :Bin)
setcategory(b[288], :Bin)
setcategory(b[312], :Bin)
setcategory(b[478], :Bin)
setcategory(b[465], :Bin)
setcategory(b[371], :Bin)
setcategory(b[451], :Bin)
setcategory(b[439], :Bin)
setcategory(b[65], :Bin)
setcategory(b[205], :Bin)
setcategory(b[265], :Bin)
setcategory(b[165], :Bin)
setcategory(b[210], :Bin)
setcategory(b[101], :Bin)
setcategory(b[253], :Bin)
setcategory(b[283], :Bin)
setcategory(b[396], :Bin)
setcategory(b[339], :Bin)
setcategory(b[382], :Bin)
setcategory(b[182], :Bin)
setcategory(b[471], :Bin)
setcategory(b[194], :Bin)
setcategory(b[179], :Bin)
setcategory(b[191], :Bin)
setcategory(b[261], :Bin)
setcategory(b[134], :Bin)
setcategory(b[458], :Bin)
setcategory(b[365], :Bin)
setcategory(b[419], :Bin)
setcategory(b[326], :Bin)
setcategory(b[140], :Bin)
setcategory(b[294], :Bin)
setcategory(b[342], :Bin)
setcategory(b[91], :Bin)
setcategory(b[152], :Bin)
setcategory(b[363], :Bin)
setcategory(b[103], :Bin)
setcategory(b[323], :Bin)
setcategory(b[55], :Bin)
setcategory(b[287], :Bin)
setcategory(b[148], :Bin)
setcategory(b[63], :Bin)
setcategory(b[263], :Bin)
setcategory(b[412], :Bin)
setcategory(b[350], :Bin)
setlowerbound(x[1], 3.0)
setupperbound(x[1], 156.0)
setlowerbound(x[2], 3.0)
setupperbound(x[2], 156.0)
setlowerbound(x[3], 3.0)
setupperbound(x[3], 156.0)
setlowerbound(x[4], 3.0)
setupperbound(x[4], 156.0)
setlowerbound(x[5], 3.0)
setupperbound(x[5], 156.0)
setlowerbound(x[6], 3.0)
setupperbound(x[6], 156.0)
setlowerbound(x[7], 3.0)
setupperbound(x[7], 156.0)
setlowerbound(x[8], 3.0)
setupperbound(x[8], 156.0)
setlowerbound(x[9], 3.0)
setupperbound(x[9], 156.0)
setlowerbound(x[10], 3.0)
setupperbound(x[10], 156.0)
setlowerbound(x[11], 3.0)
setupperbound(x[11], 156.0)
setlowerbound(x[12], 3.0)
setupperbound(x[12], 156.0)
setlowerbound(x[13], 3.0)
setupperbound(x[13], 156.0)
setlowerbound(x[14], 3.0)
setupperbound(x[14], 156.0)
setlowerbound(x[15], 3.0)
setupperbound(x[15], 156.0)
setlowerbound(x[16], 3.0)
setupperbound(x[16], 156.0)
setlowerbound(x[17], 3.0)
setupperbound(x[17], 156.0)
setlowerbound(x[18], 3.0)
setupperbound(x[18], 156.0)
setlowerbound(x[19], 3.0)
setupperbound(x[19], 156.0)
setlowerbound(x[20], 3.0)
setupperbound(x[20], 156.0)
setlowerbound(x[21], 3.0)
setupperbound(x[21], 156.0)
setlowerbound(x[22], 3.0)
setupperbound(x[22], 156.0)
setlowerbound(x[23], 3.0)
setupperbound(x[23], 156.0)
setlowerbound(x[24], 3.0)
setupperbound(x[24], 156.0)
setlowerbound(x[25], 3.0)
setupperbound(x[25], 156.0)
setlowerbound(x[26], 3.0)
setupperbound(x[26], 156.0)
setlowerbound(x[27], 3.0)
setupperbound(x[27], 156.0)
setlowerbound(x[28], 3.0)
setupperbound(x[28], 156.0)
setlowerbound(x[29], 3.0)
setupperbound(x[29], 156.0)
setlowerbound(x[30], 3.0)
setupperbound(x[30], 156.0)
setlowerbound(x[31], 3.0)
setupperbound(x[31], 156.0)
setlowerbound(x[32], 3.0)
setupperbound(x[32], 156.0)
setlowerbound(x[33], 3.0)
setupperbound(x[33], 156.0)
setlowerbound(x[34], 3.0)
setupperbound(x[34], 156.0)
setlowerbound(x[35], 3.0)
setupperbound(x[35], 156.0)
setlowerbound(x[36], 3.0)
setupperbound(x[36], 156.0)
setlowerbound(x[37], 3.0)
setupperbound(x[37], 156.0)
setlowerbound(x[38], 3.0)
setupperbound(x[38], 156.0)
setlowerbound(x[39], 3.0)
setupperbound(x[39], 156.0)
setlowerbound(x[40], 3.0)
setupperbound(x[40], 156.0)
setlowerbound(x[41], 3.0)
setupperbound(x[41], 156.0)
setlowerbound(x[42], 3.0)
setupperbound(x[42], 156.0)
setlowerbound(x[43], 3.0)
setupperbound(x[43], 156.0)
setlowerbound(x[44], 3.0)
setupperbound(x[44], 156.0)
setlowerbound(x[45], 3.0)
setupperbound(x[45], 156.0)
setlowerbound(x[46], 3.0)
setupperbound(x[46], 156.0)
setlowerbound(x[47], 3.0)
setupperbound(x[47], 156.0)
setlowerbound(x[48], 3.0)
setupperbound(x[48], 156.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(30.06/x[1]+32.58/x[2]+56.88/x[3]+81.18/x[4]+92.7/x[5]+121.86/x[6]+141.3/x[7]+179.1/x[8]+257.4/x[9]+313.2/x[10]+622.905/x[11]+705.345/x[12]+1818/x[13]+2089.8/x[14]+2244.6/x[15]+2400/x[16]+2553.6/x[17]+2571.75/x[18]+2805.75/x[19]+2966.7/x[20]+3970.68/x[21]+4715.73/x[22]+6259.5/x[23]+6521.67/x[24]+7375.5/x[25]+7572.45/x[26]+8095.8/x[27]+10038.6/x[28]+10256.4/x[29]+12004.65/x[30]+12674.25/x[31]+13728/x[32]+19854.45/x[33]+20955/x[34]+22991.4/x[35]+24552/x[36]+29647.5/x[37]+30705.45/x[38]+34773.3/x[39]+37539/x[40]+47513.4/x[41]+85101.3/x[42]+103560.6/x[43]+112788/x[44]+145599.75/x[45]+149704.8/x[46]+158976/x[47]+159697.5/x[48])+objvar == 0.0)
@constraint(m, e2, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48] <= 300.0)
@constraint(m, e3, -x[1]+3*b[49]+6*b[50]+9*b[51]+12*b[52]+18*b[53]+36*b[54]+52*b[55]+78*b[56]+156*b[57] == 0.0)
@constraint(m, e4, -x[2]+3*b[58]+6*b[59]+9*b[60]+12*b[61]+18*b[62]+36*b[63]+52*b[64]+78*b[65]+156*b[66] == 0.0)
@constraint(m, e5, -x[3]+3*b[67]+6*b[68]+9*b[69]+12*b[70]+18*b[71]+36*b[72]+52*b[73]+78*b[74]+156*b[75] == 0.0)
@constraint(m, e6, -x[4]+3*b[76]+6*b[77]+9*b[78]+12*b[79]+18*b[80]+36*b[81]+52*b[82]+78*b[83]+156*b[84] == 0.0)
@constraint(m, e7, -x[5]+3*b[85]+6*b[86]+9*b[87]+12*b[88]+18*b[89]+36*b[90]+52*b[91]+78*b[92]+156*b[93] == 0.0)
@constraint(m, e8, -x[6]+3*b[94]+6*b[95]+9*b[96]+12*b[97]+18*b[98]+36*b[99]+52*b[100]+78*b[101]+156*b[102] == 0.0)
@constraint(m, e9, -x[7]+3*b[103]+6*b[104]+9*b[105]+12*b[106]+18*b[107]+36*b[108]+52*b[109]+78*b[110]+156*b[111] == 0.0)
@constraint(m, e10, -x[8]+3*b[112]+6*b[113]+9*b[114]+12*b[115]+18*b[116]+36*b[117]+52*b[118]+78*b[119]+156*b[120] == 0.0)
@constraint(m, e11, -x[9]+3*b[121]+6*b[122]+9*b[123]+12*b[124]+18*b[125]+36*b[126]+52*b[127]+78*b[128]+156*b[129] == 0.0)
@constraint(m, e12, -x[10]+3*b[130]+6*b[131]+9*b[132]+12*b[133]+18*b[134]+36*b[135]+52*b[136]+78*b[137]+156*b[138] == 0.0)
@constraint(m, e13, -x[11]+3*b[139]+6*b[140]+9*b[141]+12*b[142]+18*b[143]+36*b[144]+52*b[145]+78*b[146]+156*b[147] == 0.0)
@constraint(m, e14, -x[12]+3*b[148]+6*b[149]+9*b[150]+12*b[151]+18*b[152]+36*b[153]+52*b[154]+78*b[155]+156*b[156] == 0.0)
@constraint(m, e15, -x[13]+3*b[157]+6*b[158]+9*b[159]+12*b[160]+18*b[161]+36*b[162]+52*b[163]+78*b[164]+156*b[165] == 0.0)
@constraint(m, e16, -x[14]+3*b[166]+6*b[167]+9*b[168]+12*b[169]+18*b[170]+36*b[171]+52*b[172]+78*b[173]+156*b[174] == 0.0)
@constraint(m, e17, -x[15]+3*b[175]+6*b[176]+9*b[177]+12*b[178]+18*b[179]+36*b[180]+52*b[181]+78*b[182]+156*b[183] == 0.0)
@constraint(m, e18, -x[16]+3*b[184]+6*b[185]+9*b[186]+12*b[187]+18*b[188]+36*b[189]+52*b[190]+78*b[191]+156*b[192] == 0.0)
@constraint(m, e19, -x[17]+3*b[193]+6*b[194]+9*b[195]+12*b[196]+18*b[197]+36*b[198]+52*b[199]+78*b[200]+156*b[201] == 0.0)
@constraint(m, e20, -x[18]+3*b[202]+6*b[203]+9*b[204]+12*b[205]+18*b[206]+36*b[207]+52*b[208]+78*b[209]+156*b[210] == 0.0)
@constraint(m, e21, -x[19]+3*b[211]+6*b[212]+9*b[213]+12*b[214]+18*b[215]+36*b[216]+52*b[217]+78*b[218]+156*b[219] == 0.0)
@constraint(m, e22, -x[20]+3*b[220]+6*b[221]+9*b[222]+12*b[223]+18*b[224]+36*b[225]+52*b[226]+78*b[227]+156*b[228] == 0.0)
@constraint(m, e23, -x[21]+3*b[229]+6*b[230]+9*b[231]+12*b[232]+18*b[233]+36*b[234]+52*b[235]+78*b[236]+156*b[237] == 0.0)
@constraint(m, e24, -x[22]+3*b[238]+6*b[239]+9*b[240]+12*b[241]+18*b[242]+36*b[243]+52*b[244]+78*b[245]+156*b[246] == 0.0)
@constraint(m, e25, -x[23]+3*b[247]+6*b[248]+9*b[249]+12*b[250]+18*b[251]+36*b[252]+52*b[253]+78*b[254]+156*b[255] == 0.0)
@constraint(m, e26, -x[24]+3*b[256]+6*b[257]+9*b[258]+12*b[259]+18*b[260]+36*b[261]+52*b[262]+78*b[263]+156*b[264] == 0.0)
@constraint(m, e27, -x[25]+3*b[265]+6*b[266]+9*b[267]+12*b[268]+18*b[269]+36*b[270]+52*b[271]+78*b[272]+156*b[273] == 0.0)
@constraint(m, e28, -x[26]+3*b[274]+6*b[275]+9*b[276]+12*b[277]+18*b[278]+36*b[279]+52*b[280]+78*b[281]+156*b[282] == 0.0)
@constraint(m, e29, -x[27]+3*b[283]+6*b[284]+9*b[285]+12*b[286]+18*b[287]+36*b[288]+52*b[289]+78*b[290]+156*b[291] == 0.0)
@constraint(m, e30, -x[28]+3*b[292]+6*b[293]+9*b[294]+12*b[295]+18*b[296]+36*b[297]+52*b[298]+78*b[299]+156*b[300] == 0.0)
@constraint(m, e31, -x[29]+3*b[301]+6*b[302]+9*b[303]+12*b[304]+18*b[305]+36*b[306]+52*b[307]+78*b[308]+156*b[309] == 0.0)
@constraint(m, e32, -x[30]+3*b[310]+6*b[311]+9*b[312]+12*b[313]+18*b[314]+36*b[315]+52*b[316]+78*b[317]+156*b[318] == 0.0)
@constraint(m, e33, -x[31]+3*b[319]+6*b[320]+9*b[321]+12*b[322]+18*b[323]+36*b[324]+52*b[325]+78*b[326]+156*b[327] == 0.0)
@constraint(m, e34, -x[32]+3*b[328]+6*b[329]+9*b[330]+12*b[331]+18*b[332]+36*b[333]+52*b[334]+78*b[335]+156*b[336] == 0.0)
@constraint(m, e35, -x[33]+3*b[337]+6*b[338]+9*b[339]+12*b[340]+18*b[341]+36*b[342]+52*b[343]+78*b[344]+156*b[345] == 0.0)
@constraint(m, e36, -x[34]+3*b[346]+6*b[347]+9*b[348]+12*b[349]+18*b[350]+36*b[351]+52*b[352]+78*b[353]+156*b[354] == 0.0)
@constraint(m, e37, -x[35]+3*b[355]+6*b[356]+9*b[357]+12*b[358]+18*b[359]+36*b[360]+52*b[361]+78*b[362]+156*b[363] == 0.0)
@constraint(m, e38, -x[36]+3*b[364]+6*b[365]+9*b[366]+12*b[367]+18*b[368]+36*b[369]+52*b[370]+78*b[371]+156*b[372] == 0.0)
@constraint(m, e39, -x[37]+3*b[373]+6*b[374]+9*b[375]+12*b[376]+18*b[377]+36*b[378]+52*b[379]+78*b[380]+156*b[381] == 0.0)
@constraint(m, e40, -x[38]+3*b[382]+6*b[383]+9*b[384]+12*b[385]+18*b[386]+36*b[387]+52*b[388]+78*b[389]+156*b[390] == 0.0)
@constraint(m, e41, -x[39]+3*b[391]+6*b[392]+9*b[393]+12*b[394]+18*b[395]+36*b[396]+52*b[397]+78*b[398]+156*b[399] == 0.0)
@constraint(m, e42, -x[40]+3*b[400]+6*b[401]+9*b[402]+12*b[403]+18*b[404]+36*b[405]+52*b[406]+78*b[407]+156*b[408] == 0.0)
@constraint(m, e43, -x[41]+3*b[409]+6*b[410]+9*b[411]+12*b[412]+18*b[413]+36*b[414]+52*b[415]+78*b[416]+156*b[417] == 0.0)
@constraint(m, e44, -x[42]+3*b[418]+6*b[419]+9*b[420]+12*b[421]+18*b[422]+36*b[423]+52*b[424]+78*b[425]+156*b[426] == 0.0)
@constraint(m, e45, -x[43]+3*b[427]+6*b[428]+9*b[429]+12*b[430]+18*b[431]+36*b[432]+52*b[433]+78*b[434]+156*b[435] == 0.0)
@constraint(m, e46, -x[44]+3*b[436]+6*b[437]+9*b[438]+12*b[439]+18*b[440]+36*b[441]+52*b[442]+78*b[443]+156*b[444] == 0.0)
@constraint(m, e47, -x[45]+3*b[445]+6*b[446]+9*b[447]+12*b[448]+18*b[449]+36*b[450]+52*b[451]+78*b[452]+156*b[453] == 0.0)
@constraint(m, e48, -x[46]+3*b[454]+6*b[455]+9*b[456]+12*b[457]+18*b[458]+36*b[459]+52*b[460]+78*b[461]+156*b[462] == 0.0)
@constraint(m, e49, -x[47]+3*b[463]+6*b[464]+9*b[465]+12*b[466]+18*b[467]+36*b[468]+52*b[469]+78*b[470]+156*b[471] == 0.0)
@constraint(m, e50, -x[48]+3*b[472]+6*b[473]+9*b[474]+12*b[475]+18*b[476]+36*b[477]+52*b[478]+78*b[479]+156*b[480] == 0.0)
@constraint(m, e51, b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57] == 1.0)
@constraint(m, e52, b[58]+b[59]+b[60]+b[61]+b[62]+b[63]+b[64]+b[65]+b[66] == 1.0)
@constraint(m, e53, b[67]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73]+b[74]+b[75] == 1.0)
@constraint(m, e54, b[76]+b[77]+b[78]+b[79]+b[80]+b[81]+b[82]+b[83]+b[84] == 1.0)
@constraint(m, e55, b[85]+b[86]+b[87]+b[88]+b[89]+b[90]+b[91]+b[92]+b[93] == 1.0)
@constraint(m, e56, b[94]+b[95]+b[96]+b[97]+b[98]+b[99]+b[100]+b[101]+b[102] == 1.0)
@constraint(m, e57, b[103]+b[104]+b[105]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111] == 1.0)
@constraint(m, e58, b[112]+b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[120] == 1.0)
@constraint(m, e59, b[121]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[128]+b[129] == 1.0)
@constraint(m, e60, b[130]+b[131]+b[132]+b[133]+b[134]+b[135]+b[136]+b[137]+b[138] == 1.0)
@constraint(m, e61, b[139]+b[140]+b[141]+b[142]+b[143]+b[144]+b[145]+b[146]+b[147] == 1.0)
@constraint(m, e62, b[148]+b[149]+b[150]+b[151]+b[152]+b[153]+b[154]+b[155]+b[156] == 1.0)
@constraint(m, e63, b[157]+b[158]+b[159]+b[160]+b[161]+b[162]+b[163]+b[164]+b[165] == 1.0)
@constraint(m, e64, b[166]+b[167]+b[168]+b[169]+b[170]+b[171]+b[172]+b[173]+b[174] == 1.0)
@constraint(m, e65, b[175]+b[176]+b[177]+b[178]+b[179]+b[180]+b[181]+b[182]+b[183] == 1.0)
@constraint(m, e66, b[184]+b[185]+b[186]+b[187]+b[188]+b[189]+b[190]+b[191]+b[192] == 1.0)
@constraint(m, e67, b[193]+b[194]+b[195]+b[196]+b[197]+b[198]+b[199]+b[200]+b[201] == 1.0)
@constraint(m, e68, b[202]+b[203]+b[204]+b[205]+b[206]+b[207]+b[208]+b[209]+b[210] == 1.0)
@constraint(m, e69, b[211]+b[212]+b[213]+b[214]+b[215]+b[216]+b[217]+b[218]+b[219] == 1.0)
@constraint(m, e70, b[220]+b[221]+b[222]+b[223]+b[224]+b[225]+b[226]+b[227]+b[228] == 1.0)
@constraint(m, e71, b[229]+b[230]+b[231]+b[232]+b[233]+b[234]+b[235]+b[236]+b[237] == 1.0)
@constraint(m, e72, b[238]+b[239]+b[240]+b[241]+b[242]+b[243]+b[244]+b[245]+b[246] == 1.0)
@constraint(m, e73, b[247]+b[248]+b[249]+b[250]+b[251]+b[252]+b[253]+b[254]+b[255] == 1.0)
@constraint(m, e74, b[256]+b[257]+b[258]+b[259]+b[260]+b[261]+b[262]+b[263]+b[264] == 1.0)
@constraint(m, e75, b[265]+b[266]+b[267]+b[268]+b[269]+b[270]+b[271]+b[272]+b[273] == 1.0)
@constraint(m, e76, b[274]+b[275]+b[276]+b[277]+b[278]+b[279]+b[280]+b[281]+b[282] == 1.0)
@constraint(m, e77, b[283]+b[284]+b[285]+b[286]+b[287]+b[288]+b[289]+b[290]+b[291] == 1.0)
@constraint(m, e78, b[292]+b[293]+b[294]+b[295]+b[296]+b[297]+b[298]+b[299]+b[300] == 1.0)
@constraint(m, e79, b[301]+b[302]+b[303]+b[304]+b[305]+b[306]+b[307]+b[308]+b[309] == 1.0)
@constraint(m, e80, b[310]+b[311]+b[312]+b[313]+b[314]+b[315]+b[316]+b[317]+b[318] == 1.0)
@constraint(m, e81, b[319]+b[320]+b[321]+b[322]+b[323]+b[324]+b[325]+b[326]+b[327] == 1.0)
@constraint(m, e82, b[328]+b[329]+b[330]+b[331]+b[332]+b[333]+b[334]+b[335]+b[336] == 1.0)
@constraint(m, e83, b[337]+b[338]+b[339]+b[340]+b[341]+b[342]+b[343]+b[344]+b[345] == 1.0)
@constraint(m, e84, b[346]+b[347]+b[348]+b[349]+b[350]+b[351]+b[352]+b[353]+b[354] == 1.0)
@constraint(m, e85, b[355]+b[356]+b[357]+b[358]+b[359]+b[360]+b[361]+b[362]+b[363] == 1.0)
@constraint(m, e86, b[364]+b[365]+b[366]+b[367]+b[368]+b[369]+b[370]+b[371]+b[372] == 1.0)
@constraint(m, e87, b[373]+b[374]+b[375]+b[376]+b[377]+b[378]+b[379]+b[380]+b[381] == 1.0)
@constraint(m, e88, b[382]+b[383]+b[384]+b[385]+b[386]+b[387]+b[388]+b[389]+b[390] == 1.0)
@constraint(m, e89, b[391]+b[392]+b[393]+b[394]+b[395]+b[396]+b[397]+b[398]+b[399] == 1.0)
@constraint(m, e90, b[400]+b[401]+b[402]+b[403]+b[404]+b[405]+b[406]+b[407]+b[408] == 1.0)
@constraint(m, e91, b[409]+b[410]+b[411]+b[412]+b[413]+b[414]+b[415]+b[416]+b[417] == 1.0)
@constraint(m, e92, b[418]+b[419]+b[420]+b[421]+b[422]+b[423]+b[424]+b[425]+b[426] == 1.0)
@constraint(m, e93, b[427]+b[428]+b[429]+b[430]+b[431]+b[432]+b[433]+b[434]+b[435] == 1.0)
@constraint(m, e94, b[436]+b[437]+b[438]+b[439]+b[440]+b[441]+b[442]+b[443]+b[444] == 1.0)
@constraint(m, e95, b[445]+b[446]+b[447]+b[448]+b[449]+b[450]+b[451]+b[452]+b[453] == 1.0)
@constraint(m, e96, b[454]+b[455]+b[456]+b[457]+b[458]+b[459]+b[460]+b[461]+b[462] == 1.0)
@constraint(m, e97, b[463]+b[464]+b[465]+b[466]+b[467]+b[468]+b[469]+b[470]+b[471] == 1.0)
@constraint(m, e98, b[472]+b[473]+b[474]+b[475]+b[476]+b[477]+b[478]+b[479]+b[480] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
