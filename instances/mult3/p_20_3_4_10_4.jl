using JuMP

m = Model();srand(12283919);

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.1 + 0.1*rand())
setlowerbound(x[16], 0.1 + 0.1*rand())
setlowerbound(x[6], 0.1 + 0.1*rand())
setlowerbound(x[14], 0.1 + 0.1*rand())
setlowerbound(x[17], 0.1 + 0.1*rand())
setlowerbound(x[3], 0.1 + 0.1*rand())
setlowerbound(x[11], 0.1 + 0.1*rand())
setlowerbound(x[12], 0.1 + 0.1*rand())
setlowerbound(x[5], 0.1 + 0.1*rand())
setlowerbound(x[19], 0.1 + 0.1*rand())
setlowerbound(x[2], 0.1 + 0.1*rand())
setlowerbound(x[20], 0.1 + 0.1*rand())
setlowerbound(x[18], 0.1 + 0.1*rand())
setlowerbound(x[9], 0.1 + 0.1*rand())
setlowerbound(x[15], 0.1 + 0.1*rand())
setlowerbound(x[1], 0.1 + 0.1*rand())
setlowerbound(x[7], 0.1 + 0.1*rand())
setlowerbound(x[8], 0.1 + 0.1*rand())
setlowerbound(x[13], 0.1 + 0.1*rand())
setlowerbound(x[10], 0.1 + 0.1*rand())
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.4564*x[2]^3-0.516*x[2]+(-0.6225*x[1]*x[10])-0.8154*x[3]*x[9]+0.8574*x[3]*x[13]+0.0073*x[5]*x[6]+0.1491*x[5]*x[10]+0.068*x[5]*x[16]+0.9968*x[7]*x[11]+0.0291*x[8]*x[19]+0.6629*x[10]*x[18]+0.3639*x[12]*x[14]-0.1885*x[17]*x[19]+0.9889*x[18]*x[19]-0.3269*x[1]-0.0082*x[3]-0.368*x[5]-0.5254*x[6]-0.063*x[7]-0.4622*x[8]+0.9094*x[9]-0.0426*x[10]+0.8333*x[11]+0.089*x[12]-0.2886*x[13]-0.3996*x[14]+0.385*x[16]+0.5066*x[17]-0.1557*x[18]+0.748*x[19]+(-0.2592*x[2]^2*x[3])-0.8822*x[2]^2*x[5]-0.7408*x[3]^2*x[9]+0.5413*x[3]^2*x[17]+0.9925*x[4]^2*x[5]-0.4177*x[4]^2*x[14]+0.6236*x[4]^2*x[18]-0.3557*x[5]^2*x[13]+0.7661*x[5]^2*x[14]-0.0353*x[7]^2*x[10]-0.5065*x[7]^2*x[13]-0.2857*x[8]^2*x[2]-0.0998*x[8]^2*x[5]-0.3602*x[8]^2*x[7]-0.5287*x[8]^2*x[14]+0.5434*x[9]^2*x[15]+0.8014*x[10]^2*x[4]-0.3203*x[10]^2*x[8]+0.3803*x[11]^2*x[16]-0.0755*x[11]^2*x[19]+0.8065*x[12]^2*x[10]-0.2554*x[12]^2*x[14]+0.3069*x[12]^2*x[19]+0.6961*x[13]^2*x[19]-0.9936*x[15]^2*x[1]-0.3508*x[15]^2*x[11]-0.0473*x[15]^2*x[12]-0.7943*x[16]^2*x[3]-0.8675*x[17]^2*x[1]-0.7287*x[19]^2*x[8]-0.8361*x[19]^2*x[18]+0.0743*x[20]^2*x[14]-0.0441*x[4]+0.8993*x[15]+0.3633*x[20]+0.5727*x[1]*x[2]*x[4]-0.5223*x[1]*x[2]*x[3]-0.907*x[1]*x[2]*x[8]-0.7543*x[1]*x[2]*x[19]+0.9131*x[1]*x[3]*x[17]-0.3846*x[1]*x[4]*x[13]+0.8792*x[1]*x[4]*x[17]-0.4531*x[1]*x[5]*x[15]+0.0272*x[1]*x[6]*x[13]+0.5922*x[1]*x[7]*x[8]+0.5418*x[1]*x[7]*x[9]-0.1556*x[1]*x[7]*x[17]+0.388*x[1]*x[8]*x[16]-0.3984*x[1]*x[11]*x[15]-0.0238*x[1]*x[14]*x[19]+0.0655*x[2]*x[4]*x[6]+0.524*x[2]*x[4]*x[10]+0.2545*x[2]*x[5]*x[13]+0.2528*x[2]*x[6]*x[7]+0.9552*x[2]*x[6]*x[11]+0.6701*x[2]*x[6]*x[16]-0.0132*x[2]*x[6]*x[18]+0.5116*x[2]*x[7]*x[8]-0.6685*x[2]*x[8]*x[12]+0.9996*x[2]*x[8]*x[16]+0.4074*x[2]*x[10]*x[11]+0.9203*x[2]*x[10]*x[18]-0.3949*x[2]*x[11]*x[12]+0.4951*x[2]*x[11]*x[17]-0.0992*x[2]*x[12]*x[14]+0.1687*x[2]*x[12]*x[17]+0.7001*x[2]*x[16]*x[17]-0.7479*x[2]*x[16]*x[18]-0.5815*x[3]*x[4]*x[12]+0.6344*x[3]*x[4]*x[17]+0.8803*x[3]*x[5]*x[11]-0.8793*x[3]*x[6]*x[11]+0.9275*x[3]*x[6]*x[18]+0.4542*x[3]*x[7]*x[8]-0.4158*x[3]*x[7]*x[18]+0.7686*x[3]*x[8]*x[9]+0.3111*x[3]*x[8]*x[13]+0.1455*x[3]*x[8]*x[15]-0.3817*x[3]*x[8]*x[18]+0.6438*x[3]*x[8]*x[19]+0.9248*x[3]*x[9]*x[11]-0.9262*x[3]*x[11]*x[13]-0.0485*x[3]*x[12]*x[13]+0.0079*x[3]*x[12]*x[16]-0.7355*x[3]*x[14]*x[17]-0.4654*x[3]*x[16]*x[20]-0.3945*x[3]*x[17]*x[19]-0.9542*x[3]*x[17]*x[20]+0.6013*x[3]*x[18]*x[19]+0.6105*x[4]*x[5]*x[15]-0.7924*x[4]*x[6]*x[7]-0.5974*x[4]*x[6]*x[9]-0.2274*x[4]*x[6]*x[20]+0.1569*x[4]*x[8]*x[12]-0.6914*x[4]*x[8]*x[16]-0.4052*x[4]*x[9]*x[19]-0.3556*x[4]*x[10]*x[12]+0.2655*x[4]*x[10]*x[13]+0.5713*x[4]*x[12]*x[15]+0.2682*x[4]*x[13]*x[15]+0.0395*x[4]*x[13]*x[16]+0.7845*x[4]*x[14]*x[15]-0.9896*x[4]*x[15]*x[18]+0.7599*x[5]*x[6]*x[15]+0.621*x[5]*x[8]*x[12]+0.5139*x[5]*x[8]*x[13]-0.6892*x[5]*x[11]*x[13]+0.3581*x[5]*x[12]*x[20]-0.2212*x[5]*x[13]*x[15]+0.0331*x[5]*x[13]*x[19]-0.1992*x[5]*x[14]*x[19]+0.334*x[5]*x[15]*x[19]+0.7262*x[5]*x[15]*x[20]-0.7652*x[5]*x[19]*x[20]-0.7484*x[6]*x[7]*x[11]+0.2316*x[6]*x[9]*x[11]-0.0683*x[6]*x[9]*x[19]+0.9033*x[6]*x[10]*x[17]+0.0742*x[6]*x[10]*x[18]-0.2012*x[6]*x[11]*x[14]-0.8226*x[6]*x[14]*x[18]-0.1448*x[6]*x[16]*x[19]+0.1946*x[7]*x[8]*x[16]-0.0463*x[7]*x[9]*x[15]+0.8415*x[7]*x[9]*x[17]-0.5162*x[7]*x[10]*x[16]-0.7399*x[7]*x[11]*x[13]-0.5844*x[7]*x[12]*x[13]-0.0938*x[7]*x[15]*x[17]+0.7983*x[7]*x[15]*x[19]-0.2371*x[8]*x[9]*x[11]-0.8016*x[8]*x[10]*x[13]-0.7807*x[8]*x[10]*x[17]+0.8694*x[8]*x[11]*x[18]+0.9283*x[8]*x[11]*x[20]+0.8148*x[8]*x[12]*x[18]+0.4128*x[8]*x[15]*x[16]+0.6409*x[8]*x[15]*x[19]+0.6341*x[8]*x[18]*x[19]-0.1947*x[9]*x[10]*x[14]-0.9657*x[9]*x[10]*x[17]+0.2981*x[9]*x[11]*x[15]+0.7942*x[9]*x[12]*x[19]+0.3776*x[9]*x[15]*x[17]-0.0544*x[9]*x[15]*x[20]+0.8772*x[9]*x[16]*x[17]+0.4454*x[9]*x[17]*x[18]+0.2489*x[10]*x[11]*x[15]-0.0589*x[10]*x[11]*x[19]-0.6307*x[10]*x[12]*x[13]-0.3046*x[10]*x[12]*x[15]+0.3828*x[10]*x[13]*x[17]+0.1819*x[10]*x[14]*x[17]+0.3843*x[10]*x[15]*x[16]+0.7022*x[11]*x[12]*x[17]+0.9055*x[11]*x[13]*x[16]+0.4358*x[11]*x[17]*x[18]+0.3874*x[11]*x[17]*x[19]-0.7572*x[12]*x[13]*x[14]+0.5325*x[12]*x[13]*x[19]+0.0023*x[12]*x[15]*x[18]-0.4659*x[13]*x[17]*x[19]+0.3574*x[14]*x[15]*x[18]-0.1729*x[14]*x[17]*x[19]+0.1651*x[18]*x[19]*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.6144*x[5]-0.1832*x[5]^2+0.8549*x[6]-0.2706*x[6]^3+(-0.7192*x[16]^3)-0.1246*x[16]+(-0.5859*x[2]*x[4])-0.3978*x[2]*x[5]+0.8432*x[2]*x[12]-0.2999*x[2]*x[16]-0.2634*x[2]*x[20]-0.6308*x[3]*x[4]+0.2531*x[3]*x[13]+0.8991*x[4]*x[5]-0.2208*x[4]*x[7]+0.1706*x[5]*x[12]+0.5733*x[5]*x[16]+0.872*x[5]*x[20]-0.9176*x[6]*x[14]-0.4902*x[7]*x[10]-0.306*x[7]*x[13]+0.7637*x[7]*x[15]-0.5795*x[7]*x[17]-0.3797*x[7]*x[18]+0.2741*x[9]*x[18]+0.2842*x[10]*x[13]-0.8559*x[10]*x[16]-0.2687*x[10]*x[17]+0.934*x[10]*x[18]+0.8696*x[11]*x[15]-0.3816*x[11]*x[16]+0.542*x[11]*x[18]+0.9166*x[13]*x[14]-0.6921*x[15]*x[19]+0.5771*x[16]*x[18]-0.6837*x[2]+0.2546*x[3]-0.9163*x[4]-0.5123*x[7]+0.8951*x[9]-0.4459*x[10]+0.857*x[11]-0.1655*x[12]+0.9867*x[13]+0.6741*x[14]+0.0669*x[15]-0.675*x[17]-0.3104*x[18]-0.0337*x[19]+0.7621*x[20]+(-0.8457*x[1]^2*x[7])-0.5111*x[2]^2*x[15]+0.6956*x[2]^2*x[17]-0.4445*x[3]^2*x[7]-0.7876*x[4]^2*x[3]+0.9805*x[4]^2*x[7]-0.2754*x[5]^2*x[10]-0.6602*x[6]^2*x[7]+0.8959*x[7]^2*x[8]-0.5678*x[7]^2*x[17]-0.3986*x[8]^2*x[10]+0.9971*x[8]^2*x[15]-0.4033*x[10]^2*x[17]+0.1474*x[11]^2*x[16]+0.0667*x[12]^2*x[9]+0.2337*x[13]^2*x[19]+0.6119*x[16]^2*x[12]+0.9654*x[17]^2*x[6]-0.0199*x[17]^2*x[15]+0.1647*x[18]^2*x[8]-0.7034*x[19]^2*x[13]-0.5348*x[1]+0.2443*x[8]+0.7994*x[1]*x[3]*x[6]+0.8302*x[1]*x[3]*x[11]-0.5291*x[1]*x[4]*x[7]+0.2125*x[1]*x[4]*x[13]-0.5644*x[1]*x[6]*x[9]+0.5262*x[1]*x[7]*x[17]-0.5231*x[1]*x[8]*x[17]+0.2568*x[1]*x[9]*x[13]-0.3528*x[1]*x[11]*x[14]-0.1153*x[1]*x[12]*x[14]-0.3663*x[1]*x[12]*x[15]-0.1926*x[1]*x[13]*x[14]-0.7712*x[1]*x[16]*x[18]-0.7027*x[2]*x[5]*x[9]-0.6399*x[2]*x[6]*x[7]+0.5532*x[2]*x[7]*x[11]-0.0274*x[2]*x[9]*x[12]+0.2578*x[2]*x[9]*x[14]-0.6376*x[2]*x[10]*x[11]-0.3853*x[2]*x[10]*x[15]-0.6223*x[2]*x[11]*x[14]-0.6586*x[2]*x[11]*x[16]-0.5986*x[2]*x[11]*x[18]+0.5632*x[2]*x[12]*x[20]+0.2756*x[2]*x[16]*x[17]-0.1762*x[3]*x[4]*x[13]+0.2779*x[3]*x[4]*x[18]-0.5571*x[3]*x[5]*x[12]+0.4011*x[3]*x[5]*x[18]-0.0913*x[3]*x[7]*x[10]-0.2287*x[3]*x[7]*x[11]-0.9749*x[3]*x[7]*x[16]+0.8555*x[3]*x[7]*x[18]-0.0962*x[3]*x[8]*x[11]+0.4711*x[3]*x[8]*x[16]-0.4784*x[3]*x[9]*x[12]-0.0411*x[3]*x[9]*x[18]+0.5088*x[3]*x[10]*x[11]+0.3183*x[3]*x[10]*x[18]-0.1265*x[3]*x[12]*x[13]-0.2866*x[3]*x[12]*x[15]+0.7243*x[3]*x[12]*x[16]+0.4062*x[3]*x[12]*x[17]-0.8843*x[3]*x[12]*x[18]-0.1354*x[4]*x[5]*x[14]-0.4081*x[4]*x[8]*x[13]+0.4413*x[4]*x[8]*x[20]+0.2717*x[4]*x[9]*x[17]-0.1972*x[4]*x[10]*x[15]+0.5383*x[4]*x[10]*x[19]-0.8804*x[4]*x[11]*x[12]-0.3959*x[4]*x[11]*x[15]-0.2579*x[4]*x[11]*x[16]+0.1937*x[4]*x[11]*x[18]+0.3745*x[4]*x[13]*x[16]-0.2656*x[4]*x[16]*x[18]+0.742*x[5]*x[6]*x[19]-0.1545*x[5]*x[7]*x[10]+0.0318*x[5]*x[7]*x[17]+0.0838*x[5]*x[9]*x[16]+0.314*x[5]*x[9]*x[17]+0.6459*x[5]*x[10]*x[15]+0.275*x[5]*x[12]*x[19]+0.5911*x[5]*x[13]*x[17]-0.6818*x[5]*x[13]*x[19]+0.3924*x[5]*x[14]*x[17]-0.2534*x[5]*x[14]*x[19]-0.8047*x[5]*x[16]*x[17]-0.5918*x[5]*x[16]*x[18]+0.6593*x[6]*x[7]*x[15]+0.3006*x[6]*x[7]*x[18]-0.7988*x[6]*x[8]*x[9]+0.7703*x[6]*x[9]*x[10]+0.1847*x[6]*x[9]*x[11]-0.6845*x[6]*x[9]*x[12]-0.0837*x[6]*x[9]*x[19]+0.2198*x[6]*x[10]*x[18]+0.4921*x[6]*x[11]*x[14]+0.5078*x[6]*x[13]*x[19]+0.8261*x[6]*x[14]*x[18]+0.8383*x[6]*x[16]*x[19]-0.4204*x[6]*x[17]*x[20]-0.6855*x[7]*x[8]*x[10]+0.1312*x[7]*x[8]*x[12]+0.5228*x[7]*x[9]*x[14]-0.067*x[7]*x[10]*x[13]+0.3002*x[7]*x[10]*x[17]+0.403*x[7]*x[11]*x[12]-0.7216*x[7]*x[12]*x[18]+0.2955*x[7]*x[13]*x[14]-0.0813*x[7]*x[13]*x[18]-0.533*x[8]*x[9]*x[15]-0.844*x[8]*x[12]*x[17]+0.8281*x[8]*x[16]*x[17]-0.9567*x[8]*x[17]*x[18]-0.2079*x[9]*x[10]*x[19]+0.9876*x[9]*x[11]*x[16]-0.1695*x[9]*x[13]*x[18]-0.3173*x[9]*x[14]*x[20]+0.8432*x[9]*x[15]*x[17]+0.0689*x[9]*x[16]*x[17]+0.993*x[9]*x[16]*x[18]-0.7003*x[10]*x[11]*x[18]+0.4056*x[10]*x[11]*x[19]-0.0007*x[10]*x[12]*x[14]-0.2863*x[10]*x[12]*x[16]+0.5613*x[10]*x[16]*x[17]+0.6024*x[10]*x[17]*x[18]-0.4152*x[11]*x[13]*x[14]+0.162*x[11]*x[14]*x[18]-0.4434*x[11]*x[16]*x[18]+0.3644*x[11]*x[17]*x[18]-0.7222*x[12]*x[14]*x[18]+0.3609*x[12]*x[14]*x[19]-0.3014*x[12]*x[17]*x[20]+0.4729*x[13]*x[17]*x[19]+0.3269*x[14]*x[15]*x[17]-0.123*x[14]*x[16]*x[17]+0.8645*x[14]*x[16]*x[18]-0.0736*x[14]*x[18]*x[20]-0.4795*x[16]*x[17]*x[20]+0.7015*x[16]*x[19]*x[20] <= 43.148)
@NLconstraint(m, e3, 0.7621*x[2]*x[5]+0.1297*x[2]*x[8]-0.1133*x[2]*x[19]+0.1529*x[3]*x[6]+0.235*x[4]*x[8]-0.9998*x[4]*x[12]-0.2837*x[5]*x[11]-0.9059*x[5]*x[17]+0.068*x[6]*x[8]-0.3774*x[6]*x[10]-0.9345*x[6]*x[17]-0.143*x[9]*x[17]-0.135*x[10]*x[16]-0.5418*x[12]*x[15]-0.5339*x[12]*x[17]+0.5082*x[12]*x[19]+0.5888*x[13]*x[16]-0.1752*x[13]*x[18]+0.2813*x[14]*x[19]+0.2022*x[14]*x[20]-0.126*x[15]*x[17]+0.1952*x[17]*x[19]-0.4856*x[2]-0.6661*x[3]+0.6343*x[4]-0.603*x[5]+0.5243*x[6]+0.4329*x[8]+0.5612*x[9]+0.7646*x[10]+0.0567*x[11]+0.9825*x[12]-0.0281*x[13]-0.31*x[14]-0.7647*x[15]+0.3235*x[16]-0.4458*x[17]-0.0934*x[18]-0.4116*x[19]+0.3824*x[20]+(-0.8226*x[2]^2*x[18])-0.0843*x[3]^2*x[9]+0.9255*x[3]^2*x[15]-0.3091*x[4]^2*x[5]+0.0632*x[4]^2*x[9]+0.0307*x[4]^2*x[12]-0.7212*x[7]^2*x[11]-0.0503*x[7]^2*x[19]-0.6199*x[8]^2*x[16]-0.8163*x[11]^2*x[2]+0.5185*x[11]^2*x[15]+0.7146*x[12]^2*x[1]-0.5858*x[12]^2*x[6]+0.0256*x[12]^2*x[11]+0.8358*x[13]^2*x[12]+0.0085*x[14]^2*x[9]-0.4708*x[14]^2*x[15]-0.9793*x[15]^2*x[5]+0.5497*x[17]^2*x[8]+0.2615*x[17]^2*x[9]-0.9986*x[18]^2*x[5]+0.2751*x[18]^2*x[6]+0.0514*x[18]^2*x[17]-0.8127*x[18]^2*x[19]-0.228*x[19]^2*x[5]+0.6195*x[19]^2*x[14]-0.5441*x[1]+0.0161*x[7]+(-0.1302*x[1]*x[2]*x[6])-0.0218*x[1]*x[2]*x[7]-0.6455*x[1]*x[2]*x[9]+0.5694*x[1]*x[2]*x[19]+0.375*x[1]*x[4]*x[17]+0.164*x[1]*x[5]*x[10]-0.3247*x[1]*x[5]*x[11]-0.234*x[1]*x[12]*x[20]+0.9296*x[1]*x[14]*x[15]+0.6011*x[1]*x[14]*x[18]-0.4311*x[1]*x[18]*x[19]+0.5456*x[1]*x[18]*x[20]+0.0082*x[2]*x[4]*x[10]+0.5095*x[2]*x[5]*x[7]-0.0466*x[2]*x[6]*x[13]+0.9412*x[2]*x[7]*x[16]-0.3496*x[2]*x[7]*x[18]+0.863*x[2]*x[8]*x[9]-0.7391*x[2]*x[8]*x[17]+0.6892*x[2]*x[9]*x[10]+0.3858*x[2]*x[9]*x[11]-0.8844*x[2]*x[10]*x[12]-0.7789*x[2]*x[10]*x[18]+0.9666*x[2]*x[11]*x[18]-0.0874*x[2]*x[18]*x[20]+0.5223*x[3]*x[4]*x[12]+0.5045*x[3]*x[5]*x[12]-0.8179*x[3]*x[5]*x[13]-0.0126*x[3]*x[5]*x[19]+0.8705*x[3]*x[6]*x[16]+0.0043*x[3]*x[6]*x[19]+0.137*x[3]*x[7]*x[15]+0.2473*x[3]*x[8]*x[11]-0.1213*x[3]*x[8]*x[14]-0.6331*x[3]*x[8]*x[15]+0.5297*x[3]*x[8]*x[18]-0.85*x[3]*x[9]*x[11]-0.8848*x[3]*x[9]*x[17]+0.5232*x[3]*x[9]*x[20]-0.9208*x[3]*x[11]*x[19]+0.3838*x[3]*x[12]*x[16]-0.2865*x[3]*x[13]*x[16]+0.2085*x[3]*x[14]*x[19]-0.9059*x[4]*x[5]*x[14]+0.929*x[4]*x[6]*x[7]+0.2689*x[4]*x[6]*x[9]+0.1358*x[4]*x[6]*x[16]-0.1172*x[4]*x[7]*x[11]-0.2576*x[4]*x[8]*x[11]+0.9121*x[4]*x[8]*x[17]-0.4896*x[4]*x[9]*x[10]+0.9966*x[4]*x[9]*x[15]+0.3189*x[4]*x[9]*x[17]-0.3299*x[4]*x[9]*x[18]+0.4951*x[4]*x[10]*x[11]-0.3257*x[4]*x[10]*x[14]+0.7597*x[4]*x[11]*x[18]-0.156*x[4]*x[13]*x[17]-0.0556*x[4]*x[13]*x[19]-0.4897*x[4]*x[15]*x[16]-0.5764*x[4]*x[15]*x[19]-0.4542*x[4]*x[16]*x[18]+0.8871*x[5]*x[6]*x[11]+0.3257*x[5]*x[8]*x[13]-0.9273*x[5]*x[9]*x[11]-0.7269*x[5]*x[9]*x[18]+0.9056*x[5]*x[11]*x[15]+0.6742*x[5]*x[14]*x[16]-0.2512*x[5]*x[14]*x[19]-0.968*x[5]*x[15]*x[16]-0.1742*x[5]*x[15]*x[19]-0.6336*x[5]*x[16]*x[18]+0.1485*x[5]*x[16]*x[20]+0.9576*x[6]*x[8]*x[10]+0.2641*x[6]*x[8]*x[18]+0.4419*x[6]*x[11]*x[13]-0.1562*x[6]*x[12]*x[15]+0.8683*x[6]*x[13]*x[16]+0.4964*x[6]*x[16]*x[20]-0.5141*x[6]*x[18]*x[19]+0.4928*x[7]*x[9]*x[13]+0.6853*x[7]*x[9]*x[17]+0.6391*x[7]*x[9]*x[18]-0.2238*x[7]*x[10]*x[11]-0.8299*x[7]*x[11]*x[15]-0.4844*x[7]*x[12]*x[13]-0.8872*x[8]*x[9]*x[20]-0.4528*x[8]*x[11]*x[18]+0.5124*x[8]*x[12]*x[15]-0.5618*x[8]*x[12]*x[19]+0.255*x[8]*x[13]*x[16]+0.9178*x[8]*x[14]*x[18]+0.6288*x[8]*x[15]*x[18]-0.2267*x[8]*x[16]*x[17]+0.1648*x[8]*x[18]*x[19]+0.2041*x[9]*x[10]*x[12]+0.4783*x[9]*x[10]*x[13]-0.5669*x[9]*x[11]*x[16]-0.9267*x[9]*x[12]*x[14]-0.0072*x[9]*x[12]*x[17]+0.8858*x[9]*x[12]*x[18]+0.0471*x[9]*x[16]*x[18]+0.0875*x[9]*x[16]*x[20]-0.5261*x[10]*x[11]*x[15]-0.587*x[10]*x[14]*x[19]+0.8742*x[10]*x[17]*x[18]+0.631*x[11]*x[12]*x[19]+0.2011*x[11]*x[13]*x[17]-0.7246*x[11]*x[14]*x[19]-0.4885*x[12]*x[13]*x[18]-0.3619*x[12]*x[16]*x[19]-0.4674*x[12]*x[16]*x[20]+0.9629*x[13]*x[15]*x[17]+0.9956*x[13]*x[17]*x[18]+0.5313*x[13]*x[17]*x[19]+0.8852*x[13]*x[18]*x[19]+0.8216*x[13]*x[18]*x[20]+0.2866*x[14]*x[15]*x[17]-0.6209*x[14]*x[15]*x[18]+0.8455*x[14]*x[19]*x[20]-0.3075*x[15]*x[17]*x[18]-0.8876*x[15]*x[18]*x[19]-0.0513*x[15]*x[18]*x[20]+0.0371*x[16]*x[18]*x[20]-0.8578*x[17]*x[18]*x[19]+0.7703*x[17]*x[19]*x[20] <= 0.158)
@NLconstraint(m, e4, (-0.1857*x[3]^2)-0.6036*x[3]+0.4397*x[5]^3+0.0461*x[5]+0.8748*x[9]-0.3615*x[9]^3+(-0.9705*x[1]*x[4])-0.7773*x[1]*x[11]+0.1022*x[1]*x[12]-0.4298*x[1]*x[18]+0.1216*x[2]*x[5]-0.278*x[2]*x[7]+0.6491*x[2]*x[16]-0.1215*x[3]*x[13]+0.7504*x[4]*x[8]+0.5199*x[4]*x[19]-0.6615*x[5]*x[7]+0.9798*x[5]*x[9]+0.0721*x[5]*x[11]-0.5894*x[5]*x[13]-0.9119*x[5]*x[16]+0.4782*x[5]*x[18]+0.1954*x[6]*x[10]+0.5255*x[6]*x[14]+0.5985*x[7]*x[11]+0.295*x[8]*x[9]+0.0172*x[9]*x[17]-0.337*x[12]*x[18]-0.7106*x[13]*x[14]+0.9288*x[15]*x[16]-0.5753*x[16]*x[17]-0.0281*x[17]*x[18]+0.1896*x[17]*x[19]+0.6244*x[1]+0.1378*x[2]-0.0272*x[4]+0.0696*x[6]-0.2888*x[7]+0.4269*x[8]-0.2341*x[10]+0.3676*x[11]+0.9578*x[12]-0.1844*x[13]-0.1086*x[14]+0.0849*x[15]-0.1137*x[16]+0.9522*x[17]-0.3989*x[18]+0.1724*x[19]+(-0.5406*x[1]^2*x[20])-0.595*x[3]^2*x[2]-0.9387*x[4]^2*x[18]-0.0406*x[5]^2*x[4]-0.464*x[5]^2*x[17]+0.9345*x[5]^2*x[18]+0.3251*x[6]^2*x[13]-0.4784*x[7]^2*x[15]+0.7271*x[8]^2*x[7]-0.8921*x[13]^2*x[8]+0.6213*x[16]^2*x[5]-0.1255*x[16]^2*x[11]+0.2095*x[16]^2*x[14]-0.9469*x[16]^2*x[20]-0.5957*x[17]^2*x[14]+0.0245*x[17]^2*x[16]-0.7799*x[18]^2*x[12]-0.475*x[18]^2*x[16]-0.3305*x[20]+0.3102*x[1]*x[4]*x[5]-0.4488*x[1]*x[4]*x[13]+0.3516*x[1]*x[4]*x[18]+0.4152*x[1]*x[5]*x[8]-0.1387*x[1]*x[5]*x[11]+0.8042*x[1]*x[6]*x[7]+0.1158*x[1]*x[6]*x[9]+0.7583*x[1]*x[7]*x[11]+0.2841*x[1]*x[7]*x[14]+0.8892*x[1]*x[7]*x[19]-0.2362*x[1]*x[8]*x[16]+0.3269*x[1]*x[8]*x[19]-0.8833*x[1]*x[11]*x[16]-0.4163*x[2]*x[3]*x[14]+0.0564*x[2]*x[4]*x[6]-0.4887*x[2]*x[4]*x[11]+0.2463*x[2]*x[4]*x[14]+0.8109*x[2]*x[4]*x[17]+0.2343*x[2]*x[5]*x[6]+0.9642*x[2]*x[5]*x[9]+0.4941*x[2]*x[6]*x[9]+0.0728*x[2]*x[7]*x[11]-0.4216*x[2]*x[9]*x[13]+0.0704*x[2]*x[9]*x[18]+0.9043*x[2]*x[11]*x[13]-0.1914*x[2]*x[11]*x[16]-0.5193*x[2]*x[15]*x[16]-0.2441*x[3]*x[4]*x[12]+0.4385*x[3]*x[4]*x[18]-0.4579*x[3]*x[5]*x[7]+0.9162*x[3]*x[5]*x[11]-0.5718*x[3]*x[5]*x[16]-0.0754*x[3]*x[6]*x[13]+0.4019*x[3]*x[7]*x[10]-0.5848*x[3]*x[7]*x[11]+0.516*x[3]*x[8]*x[12]-0.3007*x[3]*x[9]*x[12]+0.5782*x[3]*x[10]*x[11]+0.0554*x[3]*x[10]*x[14]+0.3019*x[3]*x[12]*x[16]-0.0939*x[3]*x[12]*x[18]-0.578*x[3]*x[13]*x[17]-0.0485*x[3]*x[13]*x[18]+0.521*x[3]*x[14]*x[18]-0.0731*x[3]*x[16]*x[19]-0.1008*x[4]*x[5]*x[10]-0.2098*x[4]*x[5]*x[18]-0.7992*x[4]*x[5]*x[19]-0.0494*x[4]*x[6]*x[7]-0.0932*x[4]*x[7]*x[9]-0.5497*x[4]*x[7]*x[15]-0.6987*x[4]*x[7]*x[16]+0.1374*x[4]*x[9]*x[13]-0.7529*x[4]*x[9]*x[18]+0.5757*x[4]*x[9]*x[20]-0.6313*x[4]*x[10]*x[18]+0.1662*x[4]*x[12]*x[18]-0.5707*x[4]*x[14]*x[18]+0.2645*x[4]*x[16]*x[17]+0.2142*x[4]*x[17]*x[19]-0.0787*x[5]*x[7]*x[17]-0.2122*x[5]*x[7]*x[19]-0.3016*x[5]*x[8]*x[11]-0.9055*x[5]*x[8]*x[15]-0.6318*x[5]*x[8]*x[19]-0.5541*x[5]*x[9]*x[12]+0.0741*x[5]*x[9]*x[17]-0.7242*x[5]*x[11]*x[17]+0.394*x[5]*x[13]*x[15]-0.7778*x[5]*x[15]*x[19]+0.5955*x[6]*x[8]*x[15]-0.3963*x[6]*x[10]*x[12]-0.2217*x[6]*x[10]*x[16]-0.3778*x[6]*x[13]*x[16]+0.0101*x[6]*x[15]*x[18]+0.321*x[6]*x[16]*x[17]-0.8305*x[6]*x[16]*x[18]-0.8786*x[6]*x[16]*x[19]-0.1765*x[6]*x[17]*x[18]+0.7342*x[6]*x[19]*x[20]+0.4876*x[7]*x[8]*x[9]-0.3175*x[7]*x[8]*x[10]-0.0328*x[7]*x[8]*x[12]-0.6645*x[7]*x[8]*x[15]+0.5525*x[7]*x[9]*x[10]-0.0409*x[7]*x[10]*x[15]-0.6862*x[7]*x[13]*x[18]-0.4051*x[7]*x[15]*x[16]+0.8167*x[7]*x[15]*x[20]-0.2845*x[7]*x[16]*x[20]+0.3867*x[8]*x[10]*x[14]-0.1092*x[8]*x[10]*x[16]-0.5084*x[8]*x[11]*x[13]-0.3438*x[8]*x[12]*x[15]+0.5402*x[8]*x[13]*x[20]+0.5773*x[8]*x[14]*x[15]+0.0215*x[8]*x[15]*x[16]-0.7698*x[8]*x[15]*x[20]-0.3697*x[8]*x[16]*x[18]+0.7679*x[8]*x[17]*x[19]-0.2098*x[9]*x[10]*x[12]-0.1495*x[9]*x[10]*x[17]-0.1536*x[9]*x[10]*x[19]-0.2217*x[9]*x[11]*x[16]+0.8837*x[9]*x[12]*x[16]-0.5403*x[9]*x[14]*x[16]-0.8668*x[9]*x[16]*x[17]+0.0673*x[9]*x[16]*x[18]+0.7093*x[10]*x[12]*x[13]-0.026*x[10]*x[12]*x[17]+0.6105*x[10]*x[13]*x[15]+0.8602*x[10]*x[14]*x[16]-0.618*x[10]*x[14]*x[18]-0.9016*x[10]*x[15]*x[20]+0.5603*x[10]*x[16]*x[17]-0.9529*x[10]*x[18]*x[19]-0.3712*x[11]*x[14]*x[17]+0.5774*x[11]*x[14]*x[18]-0.3797*x[11]*x[18]*x[19]-0.2791*x[12]*x[15]*x[17]+0.323*x[12]*x[16]*x[19]-0.6655*x[12]*x[18]*x[19]+0.4542*x[13]*x[14]*x[16]-0.5921*x[13]*x[15]*x[20]+0.9022*x[13]*x[17]*x[18]+0.0047*x[15]*x[17]*x[18]+0.6787*x[16]*x[19]*x[20] <= 39.915)
@NLconstraint(m, e5, 0.6865*x[7]^2-0.0807*x[7]+0.2296*x[13]^2-0.9226*x[13]+0.2194*x[1]*x[7]+0.8289*x[1]*x[10]+0.1791*x[2]*x[6]+0.2737*x[2]*x[12]+0.8108*x[3]*x[6]+0.1934*x[3]*x[8]+0.9208*x[3]*x[9]-0.2915*x[3]*x[14]-0.0879*x[4]*x[5]+0.0359*x[5]*x[6]+0.4163*x[5]*x[20]-0.3985*x[7]*x[8]-0.5186*x[7]*x[9]-0.2691*x[8]*x[9]-0.2836*x[8]*x[12]-0.5336*x[8]*x[19]-0.7218*x[9]*x[13]+0.7055*x[11]*x[16]+0.0862*x[12]*x[13]-0.0974*x[13]*x[14]+0.6536*x[13]*x[17]-0.7639*x[14]*x[15]+0.4062*x[1]-0.1274*x[2]+0.8255*x[3]-0.5612*x[4]+0.6873*x[5]-0.4792*x[6]+0.7382*x[8]-0.1748*x[9]+0.7507*x[10]-0.6428*x[11]+0.3946*x[12]-0.5666*x[14]+0.9135*x[15]-0.8793*x[16]-0.9433*x[17]+0.9443*x[19]-0.1814*x[20]+0.1099*x[2]^2*x[14]+0.505*x[4]^2*x[11]+0.2752*x[6]^2*x[1]-0.8766*x[6]^2*x[13]-0.6496*x[7]^2*x[11]-0.4287*x[8]^2*x[5]-0.7255*x[8]^2*x[6]+0.5963*x[11]^2*x[14]+0.6118*x[12]^2*x[8]-0.5548*x[12]^2*x[20]-0.8169*x[14]^2*x[2]+0.4437*x[14]^2*x[9]+0.9159*x[14]^2*x[12]+0.1198*x[15]^2*x[20]-0.2441*x[16]^2*x[9]+0.9954*x[17]^2*x[3]+0.5566*x[17]^2*x[5]+0.7085*x[18]^2*x[20]+0.1242*x[20]^2*x[8]+0.9704*x[18]+(-0.4634*x[1]*x[2]*x[7])-0.0078*x[1]*x[4]*x[8]-0.7435*x[1]*x[4]*x[15]-0.7771*x[1]*x[5]*x[8]-0.0139*x[1]*x[5]*x[10]+0.0081*x[1]*x[5]*x[18]-0.5172*x[1]*x[6]*x[11]+0.5336*x[1]*x[6]*x[16]+0.1777*x[1]*x[6]*x[20]+0.7189*x[1]*x[7]*x[17]-0.3392*x[1]*x[8]*x[18]-0.4194*x[1]*x[10]*x[15]+0.5373*x[1]*x[10]*x[20]+0.9501*x[1]*x[12]*x[18]+0.0088*x[1]*x[12]*x[20]-0.8846*x[1]*x[13]*x[14]+0.7206*x[1]*x[15]*x[18]+0.3306*x[2]*x[3]*x[4]+0.2491*x[2]*x[3]*x[6]+0.1291*x[2]*x[3]*x[12]+0.957*x[2]*x[3]*x[14]-0.1978*x[2]*x[3]*x[17]-0.0581*x[2]*x[4]*x[5]+0.8636*x[2]*x[5]*x[10]-0.6193*x[2]*x[5]*x[17]-0.8123*x[2]*x[5]*x[19]+0.0909*x[2]*x[6]*x[12]-0.271*x[2]*x[6]*x[15]-0.8151*x[2]*x[6]*x[16]-0.8488*x[2]*x[7]*x[16]-0.3586*x[2]*x[7]*x[17]-0.4789*x[2]*x[7]*x[18]+0.8793*x[2]*x[8]*x[19]-0.0929*x[2]*x[9]*x[14]+0.6976*x[2]*x[11]*x[13]+0.6301*x[3]*x[4]*x[14]-0.0074*x[3]*x[4]*x[16]-0.8876*x[3]*x[5]*x[10]+0.984*x[3]*x[5]*x[14]+0.4685*x[3]*x[5]*x[17]+0.2114*x[3]*x[6]*x[15]+0.3597*x[3]*x[7]*x[15]-0.4061*x[3]*x[7]*x[17]-0.1608*x[3]*x[8]*x[10]-0.3121*x[3]*x[8]*x[11]+0.077*x[3]*x[8]*x[19]+0.3659*x[3]*x[10]*x[15]+0.8265*x[3]*x[10]*x[18]+0.0703*x[3]*x[11]*x[19]-0.5497*x[3]*x[17]*x[18]-0.3081*x[3]*x[17]*x[20]-0.8861*x[4]*x[5]*x[12]-0.1633*x[4]*x[6]*x[18]-0.5439*x[4]*x[6]*x[20]+0.1578*x[4]*x[7]*x[8]-0.4947*x[4]*x[7]*x[15]-0.4378*x[4]*x[8]*x[19]+0.1099*x[4]*x[9]*x[10]-0.0946*x[4]*x[9]*x[15]-0.293*x[4]*x[10]*x[15]-0.5172*x[4]*x[10]*x[17]-0.0292*x[4]*x[10]*x[19]-0.7714*x[4]*x[12]*x[13]-0.7991*x[4]*x[12]*x[17]+0.9158*x[4]*x[12]*x[18]+0.9315*x[4]*x[13]*x[18]-0.0176*x[4]*x[14]*x[15]+0.7074*x[4]*x[15]*x[17]+0.8364*x[4]*x[15]*x[19]-0.0402*x[5]*x[6]*x[12]-0.1337*x[5]*x[6]*x[19]+0.3603*x[5]*x[7]*x[17]+0.6971*x[5]*x[7]*x[19]+0.3052*x[5]*x[8]*x[9]-0.7215*x[5]*x[8]*x[12]-0.4011*x[5]*x[8]*x[20]-0.2994*x[5]*x[9]*x[11]-0.874*x[5]*x[11]*x[12]-0.9382*x[5]*x[11]*x[13]+0.6341*x[5]*x[11]*x[20]-0.01*x[5]*x[12]*x[18]+0.7899*x[5]*x[12]*x[19]+0.4114*x[5]*x[15]*x[17]+0.1371*x[6]*x[7]*x[12]-0.7886*x[6]*x[8]*x[9]-0.198*x[6]*x[8]*x[20]+0.2036*x[6]*x[9]*x[13]-0.3345*x[6]*x[10]*x[15]+0.4096*x[6]*x[11]*x[19]+0.0918*x[6]*x[14]*x[16]-0.7798*x[6]*x[15]*x[16]-0.6612*x[6]*x[16]*x[18]-0.7469*x[7]*x[8]*x[14]+0.4857*x[7]*x[9]*x[15]-0.8161*x[7]*x[10]*x[14]+0.9798*x[7]*x[12]*x[17]+0.1271*x[7]*x[12]*x[18]+0.7614*x[7]*x[12]*x[19]-0.0126*x[7]*x[14]*x[16]+0.1098*x[7]*x[16]*x[19]+0.3801*x[8]*x[9]*x[16]+0.3476*x[8]*x[12]*x[19]-0.2561*x[8]*x[13]*x[19]-0.8431*x[8]*x[14]*x[19]+0.0582*x[8]*x[15]*x[18]-0.4579*x[8]*x[18]*x[19]-0.5535*x[8]*x[18]*x[20]+0.6887*x[9]*x[10]*x[16]+0.4982*x[9]*x[11]*x[13]+0.689*x[9]*x[11]*x[15]-0.5217*x[9]*x[11]*x[16]+0.2763*x[9]*x[12]*x[16]+0.042*x[9]*x[13]*x[14]-0.7568*x[9]*x[14]*x[15]+0.5058*x[9]*x[14]*x[16]+0.399*x[9]*x[14]*x[18]-0.2025*x[9]*x[15]*x[17]+0.39*x[9]*x[15]*x[19]+0.0565*x[10]*x[11]*x[12]+0.4524*x[10]*x[11]*x[15]+0.6708*x[10]*x[11]*x[16]+0.2661*x[10]*x[11]*x[19]-0.7995*x[10]*x[12]*x[19]-0.8873*x[10]*x[13]*x[14]+0.2541*x[10]*x[15]*x[19]-0.7063*x[11]*x[16]*x[17]-0.1644*x[11]*x[17]*x[19]-0.8358*x[12]*x[14]*x[20]+0.8856*x[13]*x[15]*x[17]+0.2488*x[13]*x[16]*x[19]-0.3157*x[13]*x[18]*x[20]-0.7158*x[15]*x[18]*x[19] <= 13.452)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
