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
@NLconstraint(m, e1, -(0.2194*x[1]*x[7]-0.9995*x[1]*x[10]-0.7773*x[1]*x[11]-0.4298*x[1]*x[18]+0.1791*x[2]*x[6]-0.2304*x[2]*x[8]+0.0854*x[2]*x[10]+0.2104*x[3]*x[5]+0.8108*x[3]*x[6]-0.3941*x[3]*x[7]+0.306*x[3]*x[9]-0.1215*x[3]*x[13]-0.2915*x[3]*x[14]-0.0611*x[3]*x[18]-0.4488*x[4]*x[13]-0.7435*x[4]*x[15]-0.2994*x[5]*x[9]+0.0721*x[5]*x[11]-0.6193*x[5]*x[17]+0.4782*x[5]*x[18]+0.6214*x[7]*x[13]-0.1409*x[7]*x[14]+0.1887*x[7]*x[19]-0.2836*x[8]*x[12]-0.6356*x[9]*x[17]+0.0704*x[9]*x[18]+0.746*x[10]*x[17]+0.0862*x[12]*x[13]-0.8844*x[12]*x[14]-0.337*x[12]*x[18]+0.6536*x[13]*x[17]+0.156*x[14]*x[20]-0.1888*x[16]*x[18]+0.9899*x[1]+0.1242*x[2]+0.7784*x[3]-0.9136*x[4]+0.1063*x[5]-0.4278*x[6]+0.0909*x[7]+0.9443*x[8]+0.6604*x[9]-0.5542*x[10]+0.728*x[11]+0.5566*x[12]+0.1012*x[13]+0.0632*x[14]+0.2456*x[15]-0.5321*x[16]-0.9382*x[17]-0.937*x[18]-0.5278*x[19]-0.6497*x[20]+0.3516*x[1]*x[4]*x[18]-0.0852*x[1]*x[4]*x[5]+0.3121*x[1]*x[5]*x[8]+0.8042*x[1]*x[5]*x[14]-0.5172*x[1]*x[6]*x[11]-0.3985*x[1]*x[7]*x[8]-0.5431*x[1]*x[7]*x[9]+0.6882*x[1]*x[7]*x[13]-0.2478*x[1]*x[7]*x[15]+0.7884*x[1]*x[8]*x[11]+0.5373*x[1]*x[10]*x[20]-0.8697*x[1]*x[11]*x[12]-0.1968*x[1]*x[11]*x[18]-0.8846*x[1]*x[13]*x[14]-0.0727*x[1]*x[18]*x[20]+0.3306*x[2]*x[3]*x[4]-0.1389*x[2]*x[3]*x[5]-0.2542*x[2]*x[3]*x[9]+0.1291*x[2]*x[3]*x[12]-0.5212*x[2]*x[3]*x[19]+0.0564*x[2]*x[4]*x[6]+0.462*x[2]*x[4]*x[15]+0.5199*x[2]*x[4]*x[19]+0.9379*x[2]*x[5]*x[7]+0.9642*x[2]*x[5]*x[9]+0.8636*x[2]*x[5]*x[10]+0.0806*x[2]*x[5]*x[20]+0.6493*x[2]*x[6]*x[7]-0.5968*x[2]*x[7]*x[9]+0.7637*x[2]*x[7]*x[11]-0.3586*x[2]*x[7]*x[17]-0.2312*x[2]*x[8]*x[19]-0.4216*x[2]*x[9]*x[13]+0.8336*x[2]*x[9]*x[16]-0.3396*x[2]*x[9]*x[17]+0.8019*x[2]*x[10]*x[14]+0.3095*x[2]*x[11]*x[16]-0.8162*x[2]*x[12]*x[14]+0.4097*x[2]*x[14]*x[18]-0.2896*x[2]*x[15]*x[18]+0.1382*x[2]*x[17]*x[19]+0.3942*x[3]*x[4]*x[13]-0.0074*x[3]*x[4]*x[16]-0.2981*x[3]*x[5]*x[9]+0.8771*x[3]*x[5]*x[12]+0.5603*x[3]*x[5]*x[15]-0.2903*x[3]*x[6]*x[8]-0.6261*x[3]*x[6]*x[9]+0.0789*x[3]*x[6]*x[13]-0.9365*x[3]*x[6]*x[19]-0.9973*x[3]*x[6]*x[20]-0.052*x[3]*x[7]*x[14]-0.4061*x[3]*x[7]*x[17]-0.904*x[3]*x[8]*x[9]-0.7158*x[3]*x[8]*x[11]-0.3587*x[3]*x[8]*x[12]+0.0554*x[3]*x[10]*x[14]-0.8693*x[3]*x[10]*x[17]+0.0628*x[3]*x[10]*x[19]-0.2002*x[3]*x[11]*x[19]-0.6036*x[3]*x[12]*x[16]-0.5025*x[3]*x[13]*x[17]-0.0055*x[3]*x[14]*x[15]-0.5497*x[3]*x[17]*x[18]+0.9719*x[3]*x[18]*x[20]-0.8117*x[4]*x[5]*x[7]-0.9528*x[4]*x[6]*x[8]-0.1511*x[4]*x[6]*x[13]-0.5439*x[4]*x[6]*x[20]+0.1578*x[4]*x[7]*x[8]-0.761*x[4]*x[7]*x[11]-0.5497*x[4]*x[7]*x[15]+0.7722*x[4]*x[8]*x[10]+0.9646*x[4]*x[9]*x[13]-0.7529*x[4]*x[9]*x[18]-0.6972*x[4]*x[10]*x[11]-0.4743*x[4]*x[10]*x[12]-0.5172*x[4]*x[10]*x[17]+0.9158*x[4]*x[12]*x[18]-0.2996*x[4]*x[12]*x[19]+0.9315*x[4]*x[13]*x[18]-0.0176*x[4]*x[14]*x[15]-0.5707*x[4]*x[14]*x[18]+0.8364*x[4]*x[15]*x[19]-0.0025*x[4]*x[16]*x[19]+0.2142*x[4]*x[17]*x[19]-0.7398*x[4]*x[17]*x[20]-0.6196*x[4]*x[18]*x[19]+0.5696*x[5]*x[6]*x[9]-0.6137*x[5]*x[6]*x[12]-0.8553*x[5]*x[7]*x[9]-0.2122*x[5]*x[7]*x[19]+0.1903*x[5]*x[8]*x[16]-0.7963*x[5]*x[9]*x[13]-0.3*x[5]*x[9]*x[14]+0.7333*x[5]*x[9]*x[15]-0.874*x[5]*x[11]*x[12]-0.01*x[5]*x[12]*x[18]-0.7191*x[5]*x[12]*x[20]+0.394*x[5]*x[13]*x[15]-0.1834*x[5]*x[14]*x[16]-0.6271*x[5]*x[15]*x[17]-0.8055*x[5]*x[16]*x[17]-0.5195*x[6]*x[7]*x[15]+0.7177*x[6]*x[8]*x[9]-0.6528*x[6]*x[8]*x[13]+0.5955*x[6]*x[8]*x[15]-0.9724*x[6]*x[9]*x[11]+0.5266*x[6]*x[10]*x[15]+0.7543*x[6]*x[10]*x[20]-0.9627*x[6]*x[11]*x[16]+0.6618*x[6]*x[16]*x[18]-0.3175*x[7]*x[8]*x[10]-0.7469*x[7]*x[8]*x[14]+0.5525*x[7]*x[9]*x[10]+0.4857*x[7]*x[9]*x[15]+0.4744*x[7]*x[10]*x[14]+0.5255*x[7]*x[11]*x[20]+0.7384*x[7]*x[12]*x[15]+0.5727*x[7]*x[13]*x[16]-0.4468*x[7]*x[14]*x[16]+0.3801*x[8]*x[9]*x[16]+0.3307*x[8]*x[10]*x[18]-0.2561*x[8]*x[13]*x[19]+0.0746*x[8]*x[14]*x[15]-0.2341*x[8]*x[15]*x[19]-0.4579*x[8]*x[18]*x[19]-0.2098*x[9]*x[10]*x[12]-0.6836*x[9]*x[10]*x[14]-0.8115*x[9]*x[10]*x[17]+0.4982*x[9]*x[11]*x[13]+0.7056*x[9]*x[11]*x[15]-0.2217*x[9]*x[11]*x[16]-0.3989*x[9]*x[11]*x[20]+0.2763*x[9]*x[12]*x[16]+0.042*x[9]*x[13]*x[14]+0.8618*x[9]*x[14]*x[15]+0.3364*x[9]*x[14]*x[18]+0.39*x[9]*x[15]*x[19]+0.0565*x[10]*x[11]*x[12]+0.6708*x[10]*x[11]*x[16]+0.7093*x[10]*x[12]*x[13]-0.924*x[10]*x[12]*x[15]+0.7939*x[10]*x[12]*x[17]+0.1227*x[10]*x[13]*x[14]-0.7512*x[10]*x[15]*x[17]+0.2541*x[10]*x[15]*x[19]-0.9529*x[10]*x[18]*x[19]+0.1408*x[11]*x[13]*x[19]-0.3712*x[11]*x[14]*x[17]-0.4852*x[11]*x[14]*x[19]-0.1756*x[11]*x[15]*x[16]-0.7063*x[11]*x[16]*x[17]+0.3428*x[11]*x[17]*x[20]-0.3797*x[11]*x[18]*x[19]-0.6518*x[12]*x[14]*x[19]-0.2791*x[12]*x[15]*x[17]-0.6791*x[12]*x[15]*x[20]-0.4411*x[12]*x[16]*x[19]-0.7544*x[12]*x[18]*x[19]+0.7075*x[13]*x[14]*x[16]+0.2488*x[13]*x[16]*x[19]-0.4064*x[14]*x[15]*x[17]-0.941*x[14]*x[17]*x[20]+0.0047*x[15]*x[17]*x[18]-0.2803*x[15]*x[18]*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, (-0.6675*x[1]*x[6])-0.1964*x[1]*x[13]-0.2855*x[1]*x[18]+0.7386*x[1]*x[20]-0.1292*x[4]*x[7]+0.2057*x[4]*x[8]+0.1989*x[4]*x[10]+0.8224*x[4]*x[14]-0.3778*x[4]*x[15]+0.492*x[4]*x[17]-0.1114*x[4]*x[18]+0.0359*x[5]*x[6]-0.7093*x[5]*x[18]+0.6088*x[5]*x[20]-0.5069*x[6]*x[13]-0.358*x[6]*x[16]-0.0688*x[7]*x[12]+0.6727*x[7]*x[14]+0.2412*x[7]*x[20]+0.8925*x[8]*x[19]+0.322*x[9]*x[17]+0.7221*x[11]*x[16]+0.5392*x[12]*x[18]-0.3944*x[14]*x[16]-0.8001*x[15]*x[19]+0.6576*x[17]*x[18]+0.3811*x[1]-0.3108*x[4]-0.8772*x[5]-0.9486*x[6]-0.1642*x[7]-0.8812*x[8]+0.4628*x[9]-0.2895*x[10]-0.8054*x[11]+0.4652*x[12]+0.1168*x[13]+0.3987*x[14]-0.0883*x[15]-0.1989*x[16]+0.3012*x[17]+0.3771*x[18]-0.6986*x[19]+0.1201*x[20]+0.2391*x[1]*x[3]*x[8]-0.5269*x[1]*x[3]*x[18]+0.5879*x[1]*x[3]*x[19]+0.933*x[1]*x[4]*x[10]-0.4406*x[1]*x[4]*x[11]-0.2747*x[1]*x[5]*x[11]+0.1053*x[1]*x[6]*x[8]+0.1777*x[1]*x[6]*x[20]-0.8619*x[1]*x[7]*x[8]+0.0148*x[1]*x[8]*x[18]+0.3281*x[1]*x[9]*x[18]-0.3816*x[1]*x[9]*x[20]+0.76*x[1]*x[10]*x[11]-0.5807*x[1]*x[10]*x[13]-0.487*x[1]*x[11]*x[15]-0.7103*x[1]*x[11]*x[20]-0.2019*x[1]*x[13]*x[18]+0.719*x[1]*x[14]*x[17]-0.6606*x[1]*x[15]*x[16]-0.9823*x[2]*x[3]*x[5]-0.4627*x[2]*x[3]*x[6]+0.4911*x[2]*x[3]*x[14]-0.6094*x[2]*x[3]*x[16]-0.5363*x[2]*x[4]*x[9]-0.5666*x[2]*x[4]*x[14]-0.7527*x[2]*x[4]*x[15]-0.721*x[2]*x[5]*x[7]-0.5961*x[2]*x[5]*x[14]+0.7909*x[2]*x[6]*x[9]+0.5256*x[2]*x[7]*x[19]-0.7966*x[2]*x[8]*x[11]-0.7349*x[2]*x[8]*x[16]-0.4318*x[2]*x[9]*x[15]+0.5454*x[2]*x[10]*x[14]+0.6976*x[2]*x[11]*x[13]-0.009*x[2]*x[11]*x[19]-0.8097*x[2]*x[13]*x[14]+0.1329*x[2]*x[13]*x[20]-0.0929*x[2]*x[14]*x[17]-0.2207*x[2]*x[15]*x[19]+0.8976*x[2]*x[16]*x[19]+0.6231*x[3]*x[4]*x[6]-0.8696*x[3]*x[4]*x[14]+0.984*x[3]*x[5]*x[14]+0.9829*x[3]*x[6]*x[7]+0.9007*x[3]*x[6]*x[13]+0.8858*x[3]*x[6]*x[16]+0.3811*x[3]*x[7]*x[8]+0.7162*x[3]*x[7]*x[12]-0.5718*x[3]*x[7]*x[15]-0.1356*x[3]*x[8]*x[10]-0.0023*x[3]*x[8]*x[11]-0.4646*x[3]*x[9]*x[12]+0.8498*x[3]*x[10]*x[13]+0.9265*x[3]*x[10]*x[19]-0.4834*x[3]*x[12]*x[14]-0.94*x[3]*x[12]*x[17]+0.9598*x[3]*x[12]*x[19]+0.9*x[3]*x[12]*x[20]-0.4803*x[3]*x[13]*x[16]+0.4062*x[3]*x[14]*x[15]-0.8073*x[3]*x[14]*x[18]+0.3399*x[3]*x[15]*x[16]-0.4813*x[3]*x[16]*x[17]-0.5049*x[3]*x[16]*x[18]+0.6248*x[3]*x[17]*x[18]-0.0397*x[3]*x[17]*x[20]+0.9524*x[3]*x[19]*x[20]+0.1181*x[4]*x[5]*x[10]-0.8374*x[4]*x[6]*x[20]-0.5893*x[4]*x[8]*x[9]-0.0513*x[4]*x[8]*x[11]+0.0282*x[4]*x[8]*x[15]-0.377*x[4]*x[9]*x[11]-0.4563*x[4]*x[9]*x[14]-0.9851*x[4]*x[10]*x[11]-0.6473*x[4]*x[10]*x[18]+0.1068*x[4]*x[12]*x[18]+0.3614*x[4]*x[13]*x[14]-0.1873*x[4]*x[13]*x[19]+0.8455*x[4]*x[13]*x[20]+0.5834*x[4]*x[15]*x[17]-0.642*x[4]*x[16]*x[17]-0.1445*x[4]*x[18]*x[20]-0.7812*x[5]*x[6]*x[8]-0.1161*x[5]*x[7]*x[8]-0.6133*x[5]*x[7]*x[14]+0.1594*x[5]*x[7]*x[15]+0.6061*x[5]*x[8]*x[11]-0.4635*x[5]*x[8]*x[13]+0.2069*x[5]*x[8]*x[20]-0.2745*x[5]*x[9]*x[11]+0.0201*x[5]*x[10]*x[14]+0.1641*x[5]*x[10]*x[19]+0.8322*x[5]*x[11]*x[12]+0.8543*x[5]*x[11]*x[17]-0.8245*x[5]*x[11]*x[18]-0.9794*x[5]*x[11]*x[19]-0.6411*x[5]*x[11]*x[20]+0.0916*x[5]*x[13]*x[17]-0.257*x[5]*x[13]*x[19]-0.2422*x[5]*x[15]*x[17]-0.4792*x[5]*x[17]*x[18]+0.8501*x[6]*x[8]*x[10]-0.2188*x[6]*x[8]*x[11]-0.2047*x[6]*x[8]*x[13]+0.0123*x[6]*x[9]*x[11]-0.0348*x[6]*x[11]*x[15]-0.9428*x[6]*x[11]*x[17]+0.6076*x[6]*x[11]*x[20]+0.2482*x[6]*x[13]*x[17]+0.9045*x[6]*x[13]*x[19]-0.882*x[6]*x[14]*x[15]+0.0725*x[6]*x[14]*x[17]-0.5611*x[6]*x[14]*x[18]-0.0625*x[6]*x[15]*x[18]-0.949*x[6]*x[17]*x[18]-0.7659*x[6]*x[17]*x[20]-0.8973*x[7]*x[8]*x[15]+0.6741*x[7]*x[9]*x[12]+0.9758*x[7]*x[9]*x[15]-0.7828*x[7]*x[9]*x[18]+0.3752*x[7]*x[9]*x[19]-0.1514*x[7]*x[10]*x[11]+0.8347*x[7]*x[10]*x[16]-0.1165*x[7]*x[10]*x[18]+0.1527*x[7]*x[10]*x[20]+0.7548*x[7]*x[11]*x[13]-0.8972*x[7]*x[11]*x[17]+0.9798*x[7]*x[12]*x[17]-0.2936*x[7]*x[13]*x[18]+0.7601*x[7]*x[13]*x[19]-0.0126*x[7]*x[14]*x[16]+0.1932*x[7]*x[14]*x[17]+0.3575*x[7]*x[14]*x[19]+0.1405*x[7]*x[15]*x[16]-0.3091*x[7]*x[15]*x[18]+0.3413*x[7]*x[17]*x[19]+0.6123*x[8]*x[9]*x[13]-0.9428*x[8]*x[9]*x[19]+0.4971*x[8]*x[12]*x[15]+0.5613*x[8]*x[13]*x[14]-0.6277*x[8]*x[13]*x[20]-0.3005*x[8]*x[18]*x[19]-0.3528*x[9]*x[10]*x[16]+0.3792*x[9]*x[10]*x[18]+0.0369*x[9]*x[11]*x[12]-0.9941*x[9]*x[11]*x[14]+0.689*x[9]*x[11]*x[15]+0.8092*x[9]*x[12]*x[17]-0.1722*x[9]*x[12]*x[18]-0.4971*x[9]*x[12]*x[19]-0.7849*x[9]*x[13]*x[17]-0.9108*x[9]*x[18]*x[19]-0.731*x[9]*x[19]*x[20]-0.8988*x[10]*x[11]*x[13]+0.1364*x[10]*x[12]*x[16]+0.7875*x[10]*x[13]*x[18]-0.2695*x[10]*x[14]*x[18]-0.3925*x[10]*x[15]*x[18]+0.0153*x[10]*x[16]*x[17]-0.3705*x[11]*x[12]*x[18]-0.5338*x[11]*x[13]*x[16]-0.8355*x[11]*x[13]*x[19]+0.0022*x[11]*x[14]*x[15]-0.2953*x[11]*x[15]*x[17]+0.9138*x[11]*x[17]*x[18]+0.2744*x[13]*x[15]*x[18]-0.0444*x[14]*x[15]*x[16]-0.4064*x[14]*x[15]*x[18]+0.4394*x[14]*x[15]*x[19]-0.4423*x[15]*x[19]*x[20]+0.3319*x[16]*x[18]*x[19]+0.1155*x[2]-0.5704*x[3] <= 90.138)
@NLconstraint(m, e3, (-0.3585*x[2]*x[4])-0.9913*x[2]*x[7]-0.8855*x[2]*x[10]-0.861*x[2]*x[12]-0.482*x[2]*x[17]-0.5563*x[3]*x[4]-0.7648*x[4]*x[7]-0.7822*x[4]*x[12]+0.1215*x[4]*x[13]-0.8766*x[5]*x[7]-0.8448*x[5]*x[18]-0.5948*x[6]*x[15]+0.857*x[6]*x[16]-0.1112*x[8]*x[13]+0.3341*x[8]*x[15]-0.072*x[8]*x[16]-0.7082*x[9]*x[11]+0.9425*x[9]*x[14]+0.6301*x[9]*x[20]-0.5079*x[10]*x[12]-0.4265*x[10]*x[14]+0.3884*x[13]*x[16]-0.1661*x[14]*x[16]-0.56*x[15]*x[16]+0.2228*x[15]*x[17]-0.5516*x[19]*x[20]-0.3121*x[2]+0.1233*x[3]-0.6417*x[4]-0.0101*x[5]+0.9552*x[6]+0.6923*x[7]-0.7327*x[8]-0.1369*x[9]-0.3323*x[10]+0.116*x[11]-0.4644*x[12]-0.6279*x[13]-0.4293*x[14]-0.26*x[15]-0.2396*x[16]+0.9857*x[17]+0.8309*x[18]+0.3428*x[19]+0.7324*x[20]+0.9241*x[1]*x[3]*x[4]-0.8242*x[1]*x[2]*x[12]-0.0611*x[1]*x[3]*x[6]-0.4946*x[1]*x[3]*x[15]+0.1502*x[1]*x[3]*x[18]-0.0647*x[1]*x[4]*x[18]+0.6043*x[1]*x[6]*x[15]-0.5649*x[1]*x[7]*x[16]-0.5923*x[1]*x[8]*x[16]+0.7549*x[1]*x[10]*x[20]+0.1497*x[1]*x[11]*x[17]+0.4671*x[1]*x[14]*x[17]-0.8668*x[1]*x[14]*x[19]-0.7354*x[1]*x[17]*x[20]+0.5539*x[2]*x[3]*x[6]-0.6686*x[2]*x[3]*x[10]-0.7895*x[2]*x[3]*x[18]-0.8338*x[2]*x[4]*x[5]+0.0139*x[2]*x[4]*x[9]+0.2427*x[2]*x[4]*x[13]+0.3588*x[2]*x[4]*x[20]-0.0537*x[2]*x[5]*x[14]+0.7914*x[2]*x[5]*x[17]-0.1523*x[2]*x[5]*x[18]+0.1303*x[2]*x[6]*x[11]+0.7416*x[2]*x[6]*x[12]-0.1941*x[2]*x[6]*x[13]-0.9932*x[2]*x[6]*x[18]-0.3345*x[2]*x[7]*x[9]+0.1086*x[2]*x[7]*x[16]+0.914*x[2]*x[8]*x[15]+0.0928*x[2]*x[8]*x[16]-0.0651*x[2]*x[11]*x[12]-0.53*x[2]*x[11]*x[15]-0.7312*x[2]*x[12]*x[16]-0.7689*x[2]*x[13]*x[15]-0.5618*x[2]*x[13]*x[18]-0.335*x[2]*x[14]*x[17]-0.2748*x[2]*x[15]*x[18]+0.6563*x[2]*x[15]*x[19]-0.3397*x[2]*x[18]*x[19]-0.5256*x[3]*x[4]*x[10]-0.3595*x[3]*x[4]*x[18]-0.9496*x[3]*x[5]*x[9]-0.8971*x[3]*x[5]*x[10]+0.4054*x[3]*x[5]*x[14]-0.0628*x[3]*x[6]*x[9]+0.9491*x[3]*x[6]*x[20]+0.3549*x[3]*x[7]*x[17]-0.844*x[3]*x[8]*x[10]+0.8871*x[3]*x[8]*x[11]+0.2298*x[3]*x[9]*x[11]-0.6125*x[3]*x[9]*x[12]+0.0431*x[3]*x[9]*x[14]-0.7211*x[3]*x[9]*x[15]+0.6915*x[3]*x[10]*x[13]-0.4506*x[3]*x[11]*x[14]+0.1721*x[3]*x[13]*x[17]-0.4223*x[3]*x[13]*x[18]+0.8396*x[3]*x[14]*x[15]+0.6121*x[3]*x[14]*x[16]+0.4888*x[3]*x[14]*x[18]-0.3225*x[3]*x[16]*x[18]-0.0074*x[4]*x[5]*x[8]+0.2887*x[4]*x[5]*x[9]-0.2807*x[4]*x[5]*x[10]+0.564*x[4]*x[5]*x[14]+0.2161*x[4]*x[6]*x[12]-0.1085*x[4]*x[6]*x[13]-0.4281*x[4]*x[6]*x[16]+0.5979*x[4]*x[6]*x[18]-0.9202*x[4]*x[7]*x[12]+0.6411*x[4]*x[7]*x[13]+0.5718*x[4]*x[7]*x[20]+0.9215*x[4]*x[8]*x[12]-0.5831*x[4]*x[8]*x[16]+0.9246*x[4]*x[10]*x[13]+0.0188*x[4]*x[10]*x[17]+0.2245*x[4]*x[11]*x[14]+0.6845*x[4]*x[13]*x[18]-0.4525*x[4]*x[13]*x[19]-0.1652*x[4]*x[15]*x[17]-0.553*x[4]*x[18]*x[19]-0.65*x[4]*x[19]*x[20]-0.6406*x[5]*x[6]*x[9]+0.3272*x[5]*x[6]*x[10]+0.2117*x[5]*x[7]*x[16]+0.9754*x[5]*x[7]*x[17]+0.1551*x[5]*x[8]*x[12]-0.5506*x[5]*x[8]*x[19]+0.8188*x[5]*x[9]*x[13]-0.6504*x[5]*x[10]*x[13]-0.4886*x[5]*x[10]*x[17]+0.3716*x[5]*x[10]*x[19]-0.5269*x[5]*x[11]*x[14]-0.0251*x[5]*x[11]*x[16]+0.2677*x[5]*x[13]*x[14]+0.2391*x[5]*x[14]*x[17]+0.9612*x[5]*x[16]*x[17]-0.8343*x[5]*x[17]*x[19]+0.7044*x[5]*x[18]*x[19]-0.1601*x[6]*x[7]*x[12]+0.0362*x[6]*x[7]*x[13]+0.0681*x[6]*x[7]*x[15]-0.3335*x[6]*x[8]*x[10]-0.3478*x[6]*x[8]*x[11]-0.3901*x[6]*x[8]*x[12]+0.2973*x[6]*x[8]*x[16]+0.6405*x[6]*x[9]*x[10]+0.5531*x[6]*x[9]*x[16]+0.2648*x[6]*x[9]*x[18]-0.4662*x[6]*x[10]*x[16]+0.1532*x[6]*x[11]*x[13]+0.9412*x[6]*x[12]*x[14]+0.2486*x[6]*x[12]*x[15]-0.8325*x[6]*x[12]*x[17]-0.2651*x[6]*x[14]*x[15]-0.8546*x[6]*x[15]*x[17]-0.8278*x[6]*x[16]*x[19]+0.9376*x[7]*x[9]*x[14]-0.2394*x[7]*x[10]*x[13]-0.7147*x[7]*x[10]*x[14]+0.0161*x[7]*x[10]*x[16]+0.5443*x[7]*x[10]*x[20]-0.7289*x[7]*x[11]*x[17]-0.8235*x[7]*x[11]*x[19]+0.3496*x[7]*x[12]*x[13]-0.856*x[7]*x[14]*x[16]+0.4636*x[7]*x[14]*x[19]+0.696*x[7]*x[15]*x[20]-0.5996*x[7]*x[17]*x[19]-0.9038*x[8]*x[9]*x[12]+0.0293*x[8]*x[11]*x[13]+0.88*x[8]*x[11]*x[17]+0.0664*x[8]*x[11]*x[18]+0.1978*x[8]*x[11]*x[20]-0.3699*x[8]*x[12]*x[13]+0.8611*x[8]*x[12]*x[19]-0.8675*x[8]*x[14]*x[17]+0.7435*x[8]*x[14]*x[18]-0.6452*x[8]*x[15]*x[18]-0.0881*x[8]*x[16]*x[19]-0.0055*x[8]*x[17]*x[19]+0.3322*x[8]*x[18]*x[19]-0.0441*x[9]*x[10]*x[15]-0.2327*x[9]*x[10]*x[17]+0.6042*x[9]*x[11]*x[12]-0.4297*x[9]*x[11]*x[15]+0.3784*x[9]*x[15]*x[16]+0.8083*x[9]*x[17]*x[19]+0.7608*x[9]*x[18]*x[19]+0.0354*x[10]*x[11]*x[15]+0.657*x[10]*x[11]*x[19]-0.3502*x[10]*x[12]*x[18]-0.4063*x[10]*x[13]*x[16]+0.8052*x[10]*x[13]*x[17]+0.9266*x[10]*x[14]*x[16]-0.3162*x[10]*x[14]*x[17]-0.3754*x[10]*x[16]*x[19]+0.5043*x[10]*x[17]*x[18]-0.7359*x[10]*x[17]*x[20]+0.369*x[11]*x[14]*x[16]+0.5085*x[11]*x[16]*x[17]-0.0817*x[12]*x[13]*x[15]-0.5013*x[12]*x[13]*x[19]-0.3476*x[12]*x[16]*x[19]+0.3323*x[13]*x[19]*x[20]+0.2265*x[14]*x[16]*x[17]-0.4717*x[14]*x[17]*x[18]+0.1909*x[15]*x[16]*x[18]+0.5846*x[15]*x[17]*x[20]-0.5518*x[16]*x[18]*x[20]+0.017*x[1] <= 86.473)
@NLconstraint(m, e4, (-0.9731*x[1]*x[2])-0.0165*x[1]*x[8]+0.1276*x[2]*x[5]+0.2459*x[2]*x[7]-0.0882*x[2]*x[10]-0.528*x[3]*x[11]+0.522*x[4]*x[8]+0.8122*x[5]*x[10]-0.7105*x[5]*x[14]-0.2665*x[6]*x[15]-0.3972*x[6]*x[19]-0.7972*x[7]*x[11]+0.9877*x[8]*x[19]-0.3208*x[8]*x[20]-0.3064*x[9]*x[16]-0.2554*x[10]*x[12]-0.8821*x[10]*x[14]+0.3318*x[10]*x[19]+0.2456*x[11]*x[15]-0.4667*x[13]*x[14]-0.1871*x[14]*x[16]-0.148*x[14]*x[20]-0.9276*x[15]*x[19]-0.9777*x[16]*x[17]-0.8163*x[16]*x[19]+0.6525*x[1]+0.3486*x[2]+0.1809*x[3]+0.6866*x[4]-0.2288*x[5]+0.8912*x[6]-0.7941*x[7]+0.4246*x[8]+0.7644*x[9]+0.7557*x[10]+0.2254*x[11]-0.714*x[12]-0.9605*x[13]+0.9594*x[14]-0.8842*x[15]+0.4928*x[16]-0.9047*x[17]-0.8714*x[19]+0.323*x[20]+0.0044*x[1]*x[2]*x[6]-0.621*x[1]*x[2]*x[18]-0.8668*x[1]*x[3]*x[20]+0.9697*x[1]*x[5]*x[8]-0.8937*x[1]*x[5]*x[10]+0.402*x[1]*x[5]*x[19]-0.3663*x[1]*x[6]*x[17]-0.9269*x[1]*x[8]*x[10]+0.1596*x[1]*x[9]*x[10]-0.2376*x[1]*x[9]*x[15]-0.1731*x[1]*x[10]*x[15]-0.6483*x[1]*x[10]*x[17]+0.7085*x[1]*x[11]*x[14]+0.7811*x[1]*x[11]*x[18]-0.7566*x[1]*x[14]*x[15]+0.8136*x[1]*x[15]*x[16]-0.174*x[2]*x[4]*x[8]-0.8042*x[2]*x[4]*x[11]-0.6742*x[2]*x[5]*x[7]+0.5611*x[2]*x[5]*x[13]+0.6999*x[2]*x[5]*x[15]-0.0397*x[2]*x[6]*x[9]-0.2062*x[2]*x[6]*x[13]-0.0802*x[2]*x[7]*x[11]+0.3452*x[2]*x[7]*x[17]-0.907*x[2]*x[7]*x[19]+0.4919*x[2]*x[8]*x[14]+0.6807*x[2]*x[9]*x[15]+0.5333*x[2]*x[9]*x[18]+0.1285*x[2]*x[10]*x[14]-0.8814*x[2]*x[10]*x[16]+0.147*x[2]*x[10]*x[19]+0.1839*x[2]*x[11]*x[18]+0.9326*x[2]*x[13]*x[19]+0.5342*x[2]*x[14]*x[16]+0.5354*x[2]*x[14]*x[18]-0.4904*x[2]*x[16]*x[19]+0.1579*x[2]*x[17]*x[18]-0.7226*x[3]*x[4]*x[9]+0.3028*x[3]*x[4]*x[12]-0.0156*x[3]*x[4]*x[16]+0.5631*x[3]*x[5]*x[8]+0.5309*x[3]*x[5]*x[10]-0.3095*x[3]*x[5]*x[11]+0.5857*x[3]*x[5]*x[15]+0.2261*x[3]*x[5]*x[19]+0.608*x[3]*x[6]*x[9]-0.7181*x[3]*x[6]*x[10]-0.9323*x[3]*x[6]*x[16]+0.2799*x[3]*x[7]*x[12]-0.6775*x[3]*x[8]*x[13]-0.2517*x[3]*x[8]*x[14]-0.0429*x[3]*x[8]*x[15]-0.1699*x[3]*x[8]*x[17]+0.3632*x[3]*x[9]*x[12]+0.6712*x[3]*x[11]*x[12]+0.362*x[3]*x[11]*x[16]+0.1921*x[3]*x[12]*x[13]+0.428*x[3]*x[13]*x[15]+0.8681*x[3]*x[13]*x[18]+0.2657*x[3]*x[14]*x[20]-0.7894*x[3]*x[15]*x[19]+0.8749*x[3]*x[15]*x[20]-0.9445*x[3]*x[17]*x[19]+0.8787*x[4]*x[5]*x[13]+0.0924*x[4]*x[5]*x[17]-0.3272*x[4]*x[6]*x[10]+0.6041*x[4]*x[6]*x[12]+0.8349*x[4]*x[6]*x[16]-0.8932*x[4]*x[7]*x[14]+0.382*x[4]*x[9]*x[10]-0.1587*x[4]*x[9]*x[15]-0.0641*x[4]*x[9]*x[16]+0.3576*x[4]*x[10]*x[17]-0.0421*x[4]*x[10]*x[18]-0.6159*x[4]*x[10]*x[19]+0.7909*x[4]*x[11]*x[13]-0.397*x[4]*x[11]*x[15]-0.1362*x[4]*x[12]*x[15]-0.4667*x[4]*x[12]*x[16]+0.3563*x[4]*x[12]*x[17]-0.3189*x[4]*x[12]*x[19]+0.3183*x[4]*x[13]*x[20]+0.2763*x[4]*x[16]*x[19]-0.8945*x[4]*x[18]*x[20]+0.6257*x[5]*x[6]*x[10]-0.9292*x[5]*x[7]*x[18]-0.3102*x[5]*x[8]*x[10]+0.0941*x[5]*x[8]*x[12]-0.0005*x[5]*x[8]*x[16]-0.9856*x[5]*x[10]*x[11]+0.8798*x[5]*x[10]*x[17]+0.8639*x[5]*x[10]*x[18]+0.58*x[5]*x[10]*x[20]-0.911*x[5]*x[11]*x[12]+0.7212*x[5]*x[12]*x[20]+0.8759*x[5]*x[14]*x[15]+0.0589*x[5]*x[14]*x[18]+0.3923*x[5]*x[15]*x[17]-0.1835*x[5]*x[15]*x[19]+0.4216*x[5]*x[16]*x[18]-0.6659*x[5]*x[18]*x[19]-0.0232*x[6]*x[7]*x[12]+0.3906*x[6]*x[8]*x[9]-0.9076*x[6]*x[8]*x[17]+0.9207*x[6]*x[9]*x[17]+0.1773*x[6]*x[10]*x[12]-0.3856*x[6]*x[11]*x[18]+0.799*x[6]*x[12]*x[13]+0.6083*x[6]*x[12]*x[14]+0.6676*x[6]*x[12]*x[15]-0.9971*x[6]*x[13]*x[15]+0.529*x[6]*x[14]*x[19]+0.873*x[6]*x[14]*x[20]+0.3417*x[6]*x[16]*x[17]+0.7101*x[7]*x[8]*x[9]-0.4177*x[7]*x[8]*x[14]+0.4628*x[7]*x[8]*x[17]+0.3461*x[7]*x[9]*x[11]+0.8687*x[7]*x[9]*x[17]-0.8795*x[7]*x[10]*x[12]-0.7935*x[7]*x[11]*x[14]-0.4207*x[7]*x[11]*x[15]+0.7071*x[7]*x[12]*x[16]-0.9346*x[7]*x[13]*x[16]+0.9326*x[7]*x[13]*x[17]+0.1463*x[7]*x[14]*x[15]+0.5868*x[8]*x[9]*x[11]+0.8568*x[8]*x[11]*x[12]-0.5607*x[8]*x[11]*x[13]-0.7998*x[8]*x[11]*x[19]-0.5967*x[8]*x[12]*x[15]+0.2514*x[8]*x[12]*x[19]-0.0255*x[8]*x[13]*x[17]+0.4596*x[8]*x[16]*x[18]+0.4749*x[8]*x[17]*x[19]-0.2146*x[9]*x[10]*x[14]+0.481*x[9]*x[10]*x[17]-0.2869*x[9]*x[10]*x[18]-0.2837*x[9]*x[10]*x[20]-0.943*x[9]*x[12]*x[16]+0.5449*x[9]*x[12]*x[18]+0.2716*x[9]*x[14]*x[18]-0.327*x[9]*x[16]*x[19]-0.1235*x[9]*x[17]*x[18]-0.8472*x[9]*x[18]*x[19]+0.255*x[10]*x[11]*x[15]+0.2414*x[10]*x[11]*x[16]-0.7264*x[10]*x[12]*x[17]+0.8752*x[10]*x[14]*x[15]+0.4799*x[10]*x[15]*x[18]-0.9201*x[11]*x[12]*x[15]+0.995*x[11]*x[12]*x[16]-0.9718*x[11]*x[13]*x[15]+0.4546*x[11]*x[15]*x[18]-0.1471*x[11]*x[16]*x[18]+0.4113*x[11]*x[17]*x[18]-0.0491*x[11]*x[18]*x[19]+0.1318*x[11]*x[18]*x[20]-0.4121*x[12]*x[13]*x[16]-0.9742*x[12]*x[14]*x[17]-0.9774*x[12]*x[14]*x[20]+0.1501*x[12]*x[15]*x[17]-0.9327*x[12]*x[16]*x[19]+0.9891*x[13]*x[15]*x[16]-0.912*x[13]*x[15]*x[18]+0.5127*x[13]*x[16]*x[19]-0.956*x[13]*x[17]*x[18]+0.0069*x[13]*x[17]*x[19]-0.2215*x[14]*x[15]*x[19]+0.7604*x[14]*x[16]*x[20]-0.5804*x[14]*x[17]*x[20]+0.7402*x[14]*x[18]*x[19]-0.252*x[15]*x[16]*x[18]+0.8865*x[18] <= 21.332)
@NLconstraint(m, e5, 0.29*x[1]*x[10]+0.3247*x[2]*x[4]+0.1957*x[2]*x[6]+0.5847*x[2]*x[9]+0.6206*x[2]*x[12]-0.1772*x[2]*x[13]-0.9876*x[3]*x[11]-0.6514*x[3]*x[13]+0.625*x[3]*x[15]+0.9116*x[3]*x[17]-0.1804*x[4]*x[8]+0.7616*x[4]*x[10]+0.8863*x[4]*x[12]+0.4051*x[4]*x[18]-0.8132*x[4]*x[20]+0.9502*x[5]*x[18]-0.5129*x[6]*x[8]-0.8762*x[6]*x[12]-0.3488*x[6]*x[15]+0.2966*x[6]*x[20]-0.6598*x[8]*x[9]+0.335*x[8]*x[15]-0.8431*x[9]*x[16]-0.8952*x[10]*x[16]+0.4726*x[11]*x[12]-0.114*x[11]*x[14]-0.8567*x[12]*x[17]+0.4588*x[12]*x[20]-0.6037*x[13]*x[20]+0.9252*x[14]*x[20]-0.247*x[15]*x[19]+0.3364*x[16]*x[19]-0.4397*x[18]*x[19]-0.1243*x[1]+0.2325*x[2]+0.4114*x[3]+0.1364*x[4]-0.6405*x[5]-0.2586*x[6]-0.2236*x[8]+0.2231*x[9]+0.0715*x[10]+0.828*x[11]+0.5127*x[12]+0.2099*x[13]+0.6802*x[14]+0.6669*x[15]-0.1657*x[16]-0.2434*x[17]+0.1848*x[18]-0.5101*x[19]-0.8095*x[20]+0.2511*x[1]*x[3]*x[19]+0.7969*x[1]*x[4]*x[6]+0.1548*x[1]*x[4]*x[10]+0.3739*x[1]*x[5]*x[13]+0.6774*x[1]*x[5]*x[20]+0.5146*x[1]*x[6]*x[10]+0.0092*x[1]*x[6]*x[15]+0.661*x[1]*x[7]*x[14]-0.366*x[1]*x[8]*x[9]-0.4247*x[1]*x[8]*x[14]+0.4286*x[1]*x[9]*x[10]+0.6902*x[1]*x[10]*x[19]-0.8152*x[1]*x[14]*x[15]-0.8182*x[1]*x[16]*x[19]-0.2721*x[1]*x[18]*x[20]+0.0427*x[2]*x[3]*x[5]-0.7474*x[2]*x[4]*x[7]+0.6012*x[2]*x[4]*x[18]+0.8789*x[2]*x[5]*x[16]-0.2635*x[2]*x[5]*x[17]-0.2445*x[2]*x[6]*x[12]-0.7508*x[2]*x[6]*x[15]+0.3573*x[2]*x[6]*x[17]-0.7604*x[2]*x[7]*x[8]+0.1831*x[2]*x[7]*x[16]+0.8654*x[2]*x[8]*x[13]-0.7319*x[2]*x[8]*x[15]+0.7392*x[2]*x[8]*x[18]+0.9536*x[2]*x[10]*x[13]-0.7912*x[2]*x[11]*x[13]+0.0012*x[2]*x[12]*x[20]-0.1755*x[2]*x[13]*x[20]-0.5324*x[2]*x[14]*x[16]+0.6985*x[2]*x[14]*x[18]-0.517*x[2]*x[15]*x[17]+0.4052*x[2]*x[15]*x[18]-0.847*x[2]*x[16]*x[19]+0.5773*x[3]*x[4]*x[8]+0.6118*x[3]*x[4]*x[9]+0.0985*x[3]*x[4]*x[14]+0.1954*x[3]*x[4]*x[15]-0.1361*x[3]*x[4]*x[18]-0.0247*x[3]*x[4]*x[19]+0.2707*x[3]*x[5]*x[10]-0.291*x[3]*x[6]*x[14]+0.8214*x[3]*x[6]*x[15]-0.1629*x[3]*x[6]*x[18]-0.1845*x[3]*x[6]*x[19]-0.7302*x[3]*x[7]*x[9]+0.1285*x[3]*x[7]*x[17]+0.2695*x[3]*x[9]*x[14]-0.1274*x[3]*x[9]*x[18]+0.1856*x[3]*x[10]*x[19]+0.5102*x[3]*x[15]*x[17]+0.4706*x[3]*x[15]*x[18]-0.2115*x[3]*x[16]*x[18]-0.2528*x[3]*x[17]*x[18]+0.5096*x[3]*x[17]*x[19]-0.2859*x[3]*x[18]*x[19]+0.6354*x[4]*x[6]*x[7]-0.092*x[4]*x[6]*x[17]+0.2631*x[4]*x[7]*x[15]-0.0383*x[4]*x[7]*x[17]+0.1877*x[4]*x[7]*x[18]-0.8338*x[4]*x[7]*x[19]-0.9369*x[4]*x[8]*x[18]+0.9447*x[4]*x[9]*x[12]+0.8864*x[4]*x[9]*x[15]-0.8815*x[4]*x[10]*x[16]-0.2506*x[4]*x[10]*x[17]-0.7265*x[4]*x[11]*x[13]-0.9359*x[4]*x[11]*x[18]-0.7376*x[4]*x[12]*x[14]+0.8857*x[4]*x[13]*x[14]-0.4737*x[4]*x[14]*x[17]-0.6733*x[4]*x[16]*x[19]-0.1571*x[5]*x[6]*x[16]-0.6019*x[5]*x[8]*x[10]-0.8519*x[5]*x[8]*x[16]+0.6132*x[5]*x[8]*x[17]+0.7378*x[5]*x[8]*x[19]-0.6065*x[5]*x[9]*x[11]-0.7045*x[5]*x[9]*x[12]+0.0099*x[5]*x[9]*x[14]-0.3867*x[5]*x[9]*x[19]-0.6724*x[5]*x[10]*x[14]+0.8625*x[5]*x[11]*x[12]-0.7196*x[5]*x[11]*x[14]-0.6722*x[5]*x[11]*x[15]-0.1615*x[5]*x[12]*x[14]+0.1802*x[5]*x[12]*x[17]-0.8701*x[5]*x[14]*x[16]-0.7518*x[5]*x[14]*x[17]+0.9574*x[5]*x[14]*x[19]-0.2686*x[5]*x[14]*x[20]-0.2739*x[5]*x[15]*x[16]-0.334*x[5]*x[16]*x[19]+0.8931*x[5]*x[19]*x[20]-0.2968*x[6]*x[8]*x[16]+0.3172*x[6]*x[8]*x[19]-0.5571*x[6]*x[9]*x[18]-0.385*x[6]*x[10]*x[15]-0.9655*x[6]*x[10]*x[19]+0.679*x[6]*x[11]*x[13]-0.5513*x[6]*x[11]*x[15]-0.3047*x[6]*x[12]*x[13]+0.8241*x[6]*x[12]*x[19]+0.8235*x[6]*x[14]*x[18]-0.5445*x[6]*x[15]*x[18]-0.4862*x[6]*x[16]*x[17]-0.7*x[6]*x[16]*x[18]+0.3156*x[7]*x[8]*x[10]-0.9009*x[7]*x[8]*x[14]-0.6538*x[7]*x[8]*x[18]+0.4462*x[7]*x[9]*x[17]+0.2344*x[7]*x[10]*x[14]+0.2139*x[7]*x[10]*x[17]-0.4102*x[7]*x[10]*x[19]-0.4078*x[7]*x[11]*x[18]-0.4745*x[7]*x[11]*x[19]+0.7097*x[7]*x[12]*x[16]-0.2287*x[7]*x[13]*x[20]-0.0054*x[7]*x[15]*x[17]+0.6303*x[7]*x[18]*x[19]+0.6397*x[7]*x[18]*x[20]+0.6976*x[8]*x[9]*x[11]+0.7089*x[8]*x[10]*x[16]+0.7283*x[8]*x[10]*x[18]-0.469*x[8]*x[11]*x[13]-0.1442*x[8]*x[11]*x[16]-0.4602*x[8]*x[11]*x[17]+0.8844*x[8]*x[12]*x[14]+0.5328*x[8]*x[12]*x[19]+0.7848*x[8]*x[13]*x[17]-0.7782*x[8]*x[14]*x[16]-0.6365*x[8]*x[14]*x[18]+0.8367*x[8]*x[14]*x[20]-0.1524*x[8]*x[18]*x[19]+0.9783*x[9]*x[11]*x[15]-0.4617*x[9]*x[11]*x[19]-0.9449*x[9]*x[13]*x[18]-0.132*x[9]*x[14]*x[19]-0.769*x[9]*x[15]*x[16]-0.0975*x[9]*x[15]*x[17]+0.3377*x[9]*x[16]*x[19]-0.1622*x[9]*x[18]*x[19]+0.747*x[10]*x[11]*x[13]+0.7476*x[10]*x[12]*x[18]+0.5364*x[10]*x[12]*x[19]-0.4028*x[10]*x[13]*x[19]+0.3745*x[10]*x[14]*x[16]+0.495*x[10]*x[17]*x[20]-0.074*x[11]*x[12]*x[14]-0.2682*x[11]*x[13]*x[20]-0.977*x[11]*x[14]*x[18]+0.4953*x[11]*x[15]*x[19]-0.5227*x[11]*x[16]*x[20]+0.052*x[12]*x[13]*x[18]+0.222*x[12]*x[14]*x[16]-0.9778*x[12]*x[14]*x[18]+0.1689*x[13]*x[16]*x[18]-0.232*x[13]*x[17]*x[18]+0.1118*x[14]*x[18]*x[19]+0.5364*x[16]*x[18]*x[20]+0.589*x[17]*x[18]*x[19]+0.0004*x[7] <= 0.483)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
