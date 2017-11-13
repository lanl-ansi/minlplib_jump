using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
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
@NLconstraint(m, e1, -(0.0764*x[5]*x[17]-0.5305*x[1]*x[4]+0.4242*x[7]*x[17]+0.2022*x[14]*x[20]+0.9298*x[1]-0.8578*x[4]+0.3994*x[5]+0.7399*x[7]+0.9576*x[14]-0.6661*x[17]+0.5243*x[20]+(-0.1363*x[2]*x[5]*x[17])-0.0957*x[2]*x[8]*x[12]+0.734*x[2]*x[8]*x[13]+0.7527*x[2]*x[9]*x[17]-0.135*x[2]*x[10]*x[16]-0.8608*x[3]*x[9]*x[15]-0.4854*x[3]*x[9]*x[20]+0.8653*x[4]*x[8]*x[13]+0.7597*x[4]*x[11]*x[18]-0.7325*x[5]*x[8]*x[11]-0.1402*x[5]*x[8]*x[20]-0.6337*x[5]*x[12]*x[15]+0.4989*x[5]*x[14]*x[19]-0.5844*x[6]*x[8]*x[19]+0.9966*x[6]*x[9]*x[18]-0.1681*x[6]*x[13]*x[19]+0.7442*x[6]*x[14]*x[19]+0.869*x[7]*x[10]*x[18]-0.4844*x[7]*x[12]*x[13]+0.6382*x[8]*x[13]*x[15]+0.8205*x[8]*x[13]*x[16]+0.7681*x[8]*x[14]*x[19]+0.1393*x[8]*x[15]*x[20]-0.1136*x[10]*x[16]*x[19]+0.0204*x[12]*x[14]*x[17]+0.8457*x[12]*x[15]*x[19]-0.0513*x[15]*x[18]*x[20]+0.7946*x[2]+0.6649*x[3]+0.6165*x[6]-0.5912*x[8]-0.6336*x[9]-0.0119*x[10]-0.4437*x[11]-0.0178*x[12]-0.2215*x[13]-0.5441*x[15]-0.4856*x[16]+0.6343*x[18]-0.603*x[19]+(-0.2722*x[1]*x[2]*x[4]*x[12])-0.4677*x[1]*x[2]*x[11]*x[20]+0.5694*x[1]*x[2]*x[18]*x[19]+0.5212*x[1]*x[3]*x[5]*x[18]-0.4643*x[1]*x[4]*x[5]*x[15]+0.9302*x[1]*x[4]*x[11]*x[14]+0.164*x[1]*x[5]*x[9]*x[10]-0.234*x[1]*x[7]*x[12]*x[20]-0.4311*x[1]*x[9]*x[18]*x[19]-0.2656*x[1]*x[14]*x[15]*x[19]-0.3438*x[1]*x[14]*x[16]*x[18]-0.9167*x[2]*x[3]*x[6]*x[11]+0.8781*x[2]*x[3]*x[7]*x[18]-0.5334*x[2]*x[3]*x[10]*x[18]-0.9998*x[2]*x[4]*x[7]*x[12]+0.863*x[2]*x[4]*x[8]*x[9]-0.8937*x[2]*x[4]*x[10]*x[13]-0.1753*x[2]*x[5]*x[7]*x[13]+0.438*x[2]*x[5]*x[7]*x[15]-0.7344*x[2]*x[9]*x[10]*x[18]-0.0024*x[2]*x[9]*x[15]*x[20]-0.7035*x[2]*x[10]*x[11]*x[17]-0.218*x[2]*x[12]*x[17]*x[19]+0.655*x[2]*x[15]*x[16]*x[17]-0.3515*x[3]*x[5]*x[7]*x[13]+0.2006*x[3]*x[5]*x[8]*x[12]+0.7617*x[3]*x[5]*x[15]*x[16]+0.6978*x[3]*x[6]*x[8]*x[19]+0.4408*x[3]*x[6]*x[9]*x[11]-0.0911*x[3]*x[6]*x[11]*x[17]+0.3989*x[3]*x[6]*x[12]*x[15]-0.9758*x[3]*x[6]*x[18]*x[19]-0.8483*x[3]*x[7]*x[8]*x[11]-0.2818*x[3]*x[7]*x[13]*x[18]+0.137*x[3]*x[7]*x[15]*x[17]+0.704*x[3]*x[8]*x[11]*x[13]+0.9319*x[3]*x[10]*x[12]*x[20]-0.3084*x[3]*x[10]*x[14]*x[15]+0.1381*x[3]*x[12]*x[15]*x[17]+0.3838*x[3]*x[12]*x[16]*x[18]-0.0885*x[3]*x[13]*x[14]*x[19]-0.1752*x[3]*x[13]*x[16]*x[18]+0.8052*x[4]*x[5]*x[9]*x[11]+0.6511*x[4]*x[5]*x[13]*x[14]+0.4144*x[4]*x[5]*x[16]*x[20]+0.7424*x[4]*x[6]*x[8]*x[13]-0.7904*x[4]*x[6]*x[15]*x[16]+0.1358*x[4]*x[6]*x[16]*x[17]-0.1172*x[4]*x[7]*x[11]*x[16]-0.0503*x[4]*x[7]*x[13]*x[19]+0.3189*x[4]*x[9]*x[11]*x[17]+0.9646*x[4]*x[10]*x[11]*x[13]-0.9551*x[4]*x[10]*x[13]*x[14]+0.9273*x[4]*x[11]*x[12]*x[19]+0.7124*x[4]*x[11]*x[15]*x[18]-0.7963*x[4]*x[11]*x[15]*x[19]+0.9371*x[4]*x[11]*x[15]*x[20]-0.3133*x[4]*x[14]*x[16]*x[17]+0.0891*x[5]*x[6]*x[8]*x[13]+0.2105*x[5]*x[6]*x[10]*x[20]-0.4257*x[5]*x[7]*x[8]*x[12]-0.2512*x[5]*x[7]*x[14]*x[19]+0.9056*x[5]*x[8]*x[11]*x[15]+0.0203*x[5]*x[9]*x[11]*x[14]+0.7759*x[5]*x[9]*x[12]*x[16]+0.7897*x[5]*x[11]*x[15]*x[19]+0.5418*x[5]*x[12]*x[14]*x[19]-0.0472*x[5]*x[14]*x[15]*x[18]+0.507*x[5]*x[16]*x[18]*x[19]+0.0456*x[6]*x[12]*x[13]*x[18]+0.4964*x[6]*x[12]*x[16]*x[20]-0.1743*x[6]*x[13]*x[18]*x[19]-0.3612*x[6]*x[14]*x[15]*x[17]-0.0531*x[7]*x[9]*x[11]*x[13]-0.1515*x[7]*x[9]*x[11]*x[17]-0.6684*x[7]*x[10]*x[14]*x[19]+0.6334*x[7]*x[11]*x[12]*x[15]+0.6734*x[7]*x[11]*x[16]*x[18]+0.4091*x[7]*x[14]*x[15]*x[19]+0.1685*x[8]*x[9]*x[12]*x[18]+0.8293*x[8]*x[11]*x[17]*x[19]-0.3705*x[8]*x[13]*x[17]*x[18]-0.5279*x[9]*x[10]*x[13]*x[17]-0.8591*x[9]*x[11]*x[14]*x[18]+0.6853*x[9]*x[11]*x[16]*x[20]+0.6079*x[9]*x[12]*x[13]*x[16]+0.4101*x[11]*x[12]*x[13]*x[17]+0.6088*x[11]*x[12]*x[13]*x[18]-0.0598*x[11]*x[13]*x[15]*x[16]-0.175*x[11]*x[13]*x[18]*x[20]-0.8077*x[11]*x[14]*x[16]*x[19]+0.9083*x[11]*x[16]*x[18]*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.918*x[2]*x[12]-0.5406*x[1]*x[20]+0.0328*x[8]*x[14]+0.5404*x[8]*x[15]+0.9433*x[1]+0.64*x[2]-0.2415*x[8]-0.9748*x[12]+0.3121*x[14]+0.2653*x[15]+0.31*x[20]+(-0.9289*x[1]*x[8]*x[14])-0.3419*x[1]*x[14]*x[16]+0.7497*x[1]*x[14]*x[18]-0.6615*x[2]*x[5]*x[7]+0.6327*x[2]*x[6]*x[18]-0.216*x[2]*x[13]*x[16]-0.4172*x[2]*x[15]*x[18]+0.1896*x[2]*x[17]*x[19]-0.9538*x[3]*x[5]*x[7]-0.5856*x[3]*x[15]*x[16]+0.9982*x[4]*x[5]*x[6]-0.1028*x[4]*x[7]*x[9]+0.7696*x[4]*x[13]*x[18]+0.5846*x[4]*x[15]*x[18]+0.102*x[5]*x[8]*x[13]-0.1118*x[5]*x[9]*x[13]-0.9301*x[5]*x[9]*x[20]-0.3963*x[6]*x[10]*x[12]+0.5847*x[6]*x[13]*x[18]+0.7084*x[7]*x[11]*x[16]-0.5866*x[8]*x[15]*x[19]+0.4756*x[9]*x[10]*x[13]-0.6653*x[9]*x[14]*x[15]-0.0156*x[9]*x[16]*x[17]+0.9734*x[10]*x[11]*x[14]-0.9847*x[10]*x[16]*x[19]+0.0485*x[10]*x[18]*x[19]-0.6707*x[3]+0.2142*x[4]+0.6655*x[5]-0.0551*x[6]-0.4021*x[7]-0.3175*x[9]+0.8041*x[10]-0.2775*x[11]-0.5856*x[13]-0.2496*x[16]-0.8921*x[17]-0.9173*x[18]-0.5691*x[19]+0.4308*x[1]*x[2]*x[7]*x[8]-0.7782*x[1]*x[2]*x[3]*x[11]-0.0471*x[1]*x[2]*x[11]*x[16]+0.3102*x[1]*x[4]*x[5]*x[10]+0.2841*x[1]*x[6]*x[7]*x[14]-0.3607*x[1]*x[6]*x[15]*x[16]+0.8892*x[1]*x[7]*x[9]*x[19]-0.5147*x[1]*x[7]*x[11]*x[18]+0.3932*x[1]*x[10]*x[14]*x[19]-0.5724*x[2]*x[3]*x[4]*x[14]-0.1597*x[2]*x[3]*x[5]*x[8]+0.7247*x[2]*x[3]*x[9]*x[10]+0.0973*x[2]*x[4]*x[7]*x[16]-0.0906*x[2]*x[5]*x[6]*x[13]-0.7681*x[2]*x[6]*x[7]*x[11]+0.4941*x[2]*x[6]*x[9]*x[20]+0.0852*x[2]*x[6]*x[10]*x[19]+0.0169*x[2]*x[6]*x[15]*x[16]-0.8405*x[2]*x[7]*x[17]*x[18]-0.5847*x[2]*x[8]*x[9]*x[11]+0.5402*x[2]*x[8]*x[13]*x[20]-0.5039*x[2]*x[9]*x[10]*x[16]+0.0704*x[2]*x[9]*x[13]*x[18]-0.7199*x[2]*x[10]*x[15]*x[20]-0.1425*x[2]*x[11]*x[13]*x[19]-0.0673*x[3]*x[4]*x[5]*x[19]+0.1362*x[3]*x[4]*x[6]*x[12]-0.3253*x[3]*x[4]*x[10]*x[16]+0.7873*x[3]*x[4]*x[12]*x[15]-0.1289*x[3]*x[5]*x[6]*x[11]+0.9162*x[3]*x[5]*x[7]*x[11]-0.8929*x[3]*x[5]*x[9]*x[13]-0.0281*x[3]*x[5]*x[17]*x[18]-0.6421*x[3]*x[6]*x[8]*x[9]-0.0934*x[3]*x[6]*x[8]*x[14]-0.8299*x[3]*x[6]*x[14]*x[15]-0.9973*x[3]*x[6]*x[15]*x[20]+0.845*x[3]*x[6]*x[16]*x[18]-0.4337*x[3]*x[8]*x[10]*x[13]+0.5595*x[3]*x[8]*x[11]*x[16]+0.0628*x[3]*x[10]*x[12]*x[19]+0.6656*x[3]*x[10]*x[14]*x[17]+0.2024*x[3]*x[11]*x[12]*x[13]+0.5775*x[3]*x[12]*x[16]*x[17]+0.696*x[3]*x[13]*x[15]*x[19]-0.3498*x[4]*x[5]*x[9]*x[16]+0.5995*x[4]*x[5]*x[14]*x[18]+0.9013*x[4]*x[6]*x[7]*x[10]-0.0932*x[4]*x[7]*x[9]*x[15]-0.6196*x[4]*x[7]*x[18]*x[19]+0.029*x[4]*x[9]*x[11]*x[16]-0.6423*x[4]*x[9]*x[12]*x[18]-0.2919*x[4]*x[10]*x[12]*x[15]-0.6313*x[4]*x[10]*x[13]*x[18]+0.2268*x[4]*x[13]*x[18]*x[19]+0.2609*x[5]*x[6]*x[7]*x[16]+0.91*x[5]*x[6]*x[8]*x[12]-0.0545*x[5]*x[6]*x[13]*x[16]+0.394*x[5]*x[7]*x[13]*x[15]+0.0741*x[5]*x[9]*x[12]*x[17]-0.2689*x[5]*x[17]*x[18]*x[19]+0.3387*x[6]*x[7]*x[11]*x[15]-0.1058*x[6]*x[10]*x[17]*x[19]+0.1183*x[6]*x[11]*x[12]*x[13]+0.733*x[6]*x[11]*x[15]*x[16]+0.4542*x[6]*x[13]*x[14]*x[16]-0.3778*x[6]*x[13]*x[16]*x[18]-0.6919*x[6]*x[16]*x[17]*x[18]-0.0729*x[7]*x[8]*x[9]*x[15]-0.5917*x[7]*x[8]*x[13]*x[17]+0.7252*x[7]*x[9]*x[10]*x[12]+0.7762*x[7]*x[10]*x[11]*x[14]-0.0628*x[7]*x[11]*x[14]*x[17]+0.6125*x[7]*x[11]*x[15]*x[20]+0.8987*x[7]*x[16]*x[17]*x[19]-0.8769*x[8]*x[9]*x[10]*x[14]-0.571*x[8]*x[9]*x[12]*x[18]-0.5508*x[8]*x[9]*x[15]*x[16]-0.9444*x[8]*x[11]*x[16]*x[17]-0.3438*x[8]*x[12]*x[14]*x[15]-0.792*x[8]*x[12]*x[15]*x[17]+0.2571*x[8]*x[14]*x[15]*x[16]-0.9529*x[9]*x[10]*x[18]*x[19]-0.1536*x[9]*x[10]*x[19]*x[20]-0.5403*x[9]*x[12]*x[14]*x[16]-0.4304*x[10]*x[14]*x[16]*x[19]+0.9825*x[11]*x[15]*x[16]*x[18]-0.6655*x[11]*x[15]*x[17]*x[18]+0.1931*x[12]*x[14]*x[16]*x[19]+0.2806*x[12]*x[14]*x[16]*x[20]+0.8363*x[12]*x[16]*x[19]*x[20]-0.5921*x[13]*x[15]*x[18]*x[20] <= 20.532)
@NLconstraint(m, e3, 0.9985*x[2]*x[13]+0.8108*x[3]*x[6]-0.7435*x[4]*x[15]-0.2836*x[8]*x[12]-0.1259*x[2]+0.399*x[3]+0.3364*x[4]+0.1672*x[6]+0.9159*x[8]-0.0725*x[12]-0.293*x[13]+0.9573*x[15]+(-0.8881*x[1]*x[3]*x[11])-0.5631*x[1]*x[4]*x[18]+0.3003*x[1]*x[5]*x[12]-0.2571*x[1]*x[7]*x[13]-0.9465*x[3]*x[4]*x[9]+0.3942*x[3]*x[4]*x[13]-0.8103*x[3]*x[8]*x[12]-0.5911*x[4]*x[8]*x[11]+0.156*x[4]*x[14]*x[20]-0.9611*x[5]*x[6]*x[12]-0.1724*x[5]*x[8]*x[9]-0.977*x[5]*x[14]*x[15]-0.7778*x[5]*x[15]*x[19]-0.161*x[6]*x[10]*x[12]+0.8281*x[6]*x[10]*x[13]-0.3345*x[6]*x[10]*x[15]+0.4504*x[6]*x[10]*x[17]-0.6157*x[7]*x[8]*x[12]-0.7469*x[7]*x[8]*x[14]-0.9094*x[7]*x[13]*x[16]-0.6877*x[10]*x[12]*x[18]+0.8112*x[1]+0.3297*x[5]+0.3655*x[7]-0.6518*x[9]+0.4597*x[10]-0.731*x[11]+0.7722*x[14]-0.4913*x[16]-0.2256*x[17]-0.198*x[18]+0.7177*x[19]+0.5625*x[20]+(-0.4298*x[1]*x[2]*x[9]*x[18])-0.6202*x[1]*x[3]*x[5]*x[8]-0.2915*x[1]*x[3]*x[14]*x[15]-0.5105*x[1]*x[3]*x[16]*x[19]+0.4163*x[1]*x[5]*x[9]*x[20]+0.4726*x[1]*x[6]*x[7]*x[11]-0.3901*x[1]*x[6]*x[7]*x[13]+0.7884*x[1]*x[6]*x[8]*x[11]-0.777*x[1]*x[6]*x[13]*x[17]-0.0792*x[1]*x[8]*x[12]*x[16]+0.4326*x[1]*x[10]*x[15]*x[19]+0.7955*x[1]*x[12]*x[15]*x[17]+0.9208*x[2]*x[3]*x[5]*x[9]+0.9243*x[2]*x[3]*x[8]*x[9]-0.2304*x[2]*x[3]*x[8]*x[11]+0.2236*x[2]*x[3]*x[10]*x[12]+0.6491*x[2]*x[3]*x[10]*x[16]-0.0581*x[2]*x[4]*x[5]*x[7]+0.2463*x[2]*x[4]*x[9]*x[14]-0.2917*x[2]*x[5]*x[6]*x[17]-0.7612*x[2]*x[5]*x[7]*x[9]+0.9379*x[2]*x[5]*x[7]*x[12]-0.4813*x[2]*x[5]*x[11]*x[12]+0.1382*x[2]*x[5]*x[17]*x[19]-0.5977*x[2]*x[6]*x[7]*x[8]+0.6493*x[2]*x[6]*x[7]*x[16]-0.0857*x[2]*x[6]*x[8]*x[15]+0.3644*x[2]*x[6]*x[12]*x[16]+0.7637*x[2]*x[7]*x[11]*x[13]+0.7745*x[2]*x[8]*x[14]*x[19]+0.8019*x[2]*x[10]*x[13]*x[14]-0.8899*x[2]*x[11]*x[16]*x[17]-0.2006*x[2]*x[12]*x[13]*x[14]-0.2896*x[2]*x[14]*x[15]*x[18]+0.3093*x[3]*x[4]*x[7]*x[11]+0.1307*x[3]*x[4]*x[9]*x[17]+0.2311*x[3]*x[4]*x[10]*x[16]-0.3081*x[3]*x[4]*x[17]*x[20]+0.8751*x[3]*x[5]*x[8]*x[9]+0.1956*x[3]*x[6]*x[12]*x[18]-0.95*x[3]*x[7]*x[11]*x[14]-0.052*x[3]*x[7]*x[14]*x[15]-0.2276*x[3]*x[8]*x[10]*x[18]+0.4419*x[3]*x[9]*x[11]*x[19]+0.6446*x[3]*x[9]*x[14]*x[16]-0.0974*x[3]*x[10]*x[13]*x[14]+0.9875*x[3]*x[10]*x[14]*x[15]-0.75*x[3]*x[10]*x[17]*x[18]+0.9719*x[3]*x[17]*x[18]*x[20]+0.4004*x[4]*x[5]*x[6]*x[20]-0.9304*x[4]*x[5]*x[7]*x[15]+0.1245*x[4]*x[5]*x[8]*x[12]+0.9307*x[4]*x[5]*x[8]*x[19]-0.01*x[4]*x[5]*x[12]*x[18]-0.8861*x[4]*x[5]*x[12]*x[20]-0.9384*x[4]*x[6]*x[7]*x[18]+0.0534*x[4]*x[6]*x[8]*x[19]-0.1633*x[4]*x[6]*x[13]*x[18]+0.1578*x[4]*x[7]*x[8]*x[12]-0.0266*x[4]*x[9]*x[12]*x[20]-0.0946*x[4]*x[9]*x[15]*x[16]+0.6382*x[4]*x[9]*x[16]*x[20]+0.8057*x[4]*x[10]*x[11]*x[12]+0.7652*x[4]*x[12]*x[13]*x[16]-0.7053*x[4]*x[15]*x[16]*x[17]+0.0427*x[4]*x[15]*x[18]*x[19]-0.5881*x[5]*x[6]*x[9]*x[16]-0.0402*x[5]*x[6]*x[12]*x[13]+0.4678*x[5]*x[7]*x[14]*x[17]+0.3052*x[5]*x[8]*x[9]*x[14]-0.8449*x[5]*x[9]*x[14]*x[16]+0.0696*x[5]*x[10]*x[11]*x[12]+0.6708*x[5]*x[10]*x[11]*x[16]+0.1844*x[5]*x[12]*x[15]*x[18]+0.2181*x[6]*x[10]*x[18]*x[20]-0.8356*x[6]*x[11]*x[12]*x[17]+0.3163*x[6]*x[14]*x[18]*x[19]+0.1724*x[7]*x[9]*x[11]*x[20]-0.8161*x[7]*x[10]*x[13]*x[14]-0.0675*x[7]*x[10]*x[14]*x[15]+0.1098*x[7]*x[10]*x[16]*x[19]+0.937*x[7]*x[11]*x[12]*x[18]+0.1271*x[7]*x[12]*x[15]*x[18]+0.3391*x[7]*x[12]*x[18]*x[19]+0.7085*x[7]*x[12]*x[18]*x[20]+0.6887*x[8]*x[9]*x[10]*x[16]+0.9578*x[8]*x[14]*x[15]*x[19]+0.3139*x[8]*x[14]*x[16]*x[19]+0.9108*x[8]*x[16]*x[18]*x[19]+0.2661*x[9]*x[10]*x[11]*x[19]-0.4913*x[9]*x[11]*x[13]*x[15]+0.2763*x[9]*x[12]*x[15]*x[16]-0.0867*x[9]*x[14]*x[15]*x[17]-0.813*x[9]*x[14]*x[15]*x[19]+0.2541*x[10]*x[15]*x[17]*x[19]-0.7004*x[11]*x[14]*x[15]*x[19]-0.1756*x[11]*x[15]*x[16]*x[17]+0.3858*x[14]*x[16]*x[17]*x[20] <= 80.995)
@NLconstraint(m, e4, 0.0148*x[8]*x[18]-0.7966*x[8]+0.7856*x[18]+0.162*x[1]*x[8]*x[10]-0.1188*x[1]*x[11]*x[17]+0.2057*x[2]*x[4]*x[8]-0.2862*x[2]*x[10]*x[19]-0.7639*x[2]*x[14]*x[15]-0.1814*x[2]*x[19]*x[20]-0.4787*x[3]*x[4]*x[15]+0.9829*x[3]*x[6]*x[7]+0.4979*x[3]*x[14]*x[15]-0.5049*x[3]*x[16]*x[18]+0.1073*x[4]*x[9]*x[18]-0.9839*x[4]*x[10]*x[17]+0.955*x[4]*x[13]*x[16]-0.7888*x[5]*x[12]*x[19]+0.0123*x[6]*x[9]*x[11]+0.3363*x[7]*x[14]*x[16]+0.1908*x[7]*x[14]*x[17]-0.3213*x[7]*x[15]*x[18]-0.7995*x[10]*x[12]*x[19]+0.6342*x[11]*x[13]*x[17]+0.9138*x[11]*x[17]*x[18]+0.4701*x[14]*x[15]*x[16]-0.2803*x[15]*x[18]*x[20]-0.5779*x[1]-0.8078*x[2]+0.9385*x[3]-0.9844*x[4]+0.0962*x[5]-0.2414*x[6]-0.9229*x[7]+0.3164*x[9]+0.7678*x[10]+0.3734*x[11]-0.8076*x[12]-0.8073*x[13]+0.693*x[14]-0.4195*x[15]-0.3825*x[16]-0.2211*x[17]+0.8429*x[19]-0.3005*x[20]+(-0.5813*x[1]*x[2]*x[6]*x[12])-0.4634*x[1]*x[2]*x[7]*x[8]-0.0511*x[1]*x[3]*x[4]*x[6]-0.1964*x[1]*x[3]*x[13]*x[16]+0.5201*x[1]*x[4]*x[15]*x[19]+0.6713*x[1]*x[5]*x[8]*x[11]+0.9186*x[1]*x[5]*x[16]*x[20]-0.6202*x[1]*x[9]*x[11]*x[14]-0.7839*x[1]*x[9]*x[14]*x[18]-0.7103*x[1]*x[11]*x[12]*x[20]-0.4823*x[1]*x[14]*x[16]*x[17]-0.6606*x[1]*x[15]*x[16]*x[17]+0.2544*x[2]*x[3]*x[4]*x[12]-0.9648*x[2]*x[3]*x[6]*x[13]-0.405*x[2]*x[3]*x[8]*x[9]+0.7465*x[2]*x[3]*x[12]*x[17]-0.7987*x[2]*x[3]*x[13]*x[16]-0.6094*x[2]*x[3]*x[14]*x[16]+0.7222*x[2]*x[3]*x[16]*x[20]+0.4669*x[2]*x[4]*x[5]*x[10]+0.9135*x[2]*x[4]*x[5]*x[14]+0.5363*x[2]*x[4]*x[8]*x[11]+0.0909*x[2]*x[6]*x[12]*x[18]-0.8838*x[2]*x[7]*x[11]*x[17]-0.2214*x[2]*x[7]*x[15]*x[19]+0.4213*x[2]*x[9]*x[18]*x[19]-0.9351*x[2]*x[10]*x[11]*x[13]+0.9096*x[2]*x[12]*x[13]*x[20]+0.492*x[3]*x[4]*x[5]*x[17]-0.1292*x[3]*x[4]*x[6]*x[7]+0.6231*x[3]*x[4]*x[6]*x[11]+0.5848*x[3]*x[4]*x[9]*x[18]+0.4594*x[3]*x[5]*x[14]*x[20]+0.2904*x[3]*x[6]*x[9]*x[12]-0.5069*x[3]*x[6]*x[9]*x[13]-0.0358*x[3]*x[6]*x[13]*x[16]-0.4001*x[3]*x[6]*x[19]*x[20]+0.0652*x[3]*x[7]*x[9]*x[18]+0.1753*x[3]*x[7]*x[10]*x[12]-0.9603*x[3]*x[7]*x[14]*x[16]-0.7009*x[3]*x[9]*x[10]*x[19]-0.4834*x[3]*x[9]*x[12]*x[14]-0.5137*x[3]*x[9]*x[12]*x[15]+0.8255*x[3]*x[9]*x[14]*x[15]-0.1343*x[3]*x[10]*x[17]*x[20]+0.6248*x[3]*x[16]*x[17]*x[18]-0.6972*x[4]*x[6]*x[10]*x[11]-0.2741*x[4]*x[6]*x[16]*x[18]-0.5377*x[4]*x[7]*x[9]*x[18]-0.3671*x[4]*x[7]*x[13]*x[15]-0.5253*x[4]*x[8]*x[13]*x[18]-0.0025*x[4]*x[8]*x[16]*x[19]-0.4869*x[4]*x[9]*x[15]*x[17]-0.651*x[4]*x[10]*x[12]*x[13]+0.9179*x[4]*x[10]*x[12]*x[18]-0.6199*x[4]*x[11]*x[12]*x[17]+0.677*x[4]*x[17]*x[18]*x[19]-0.7622*x[5]*x[6]*x[8]*x[9]-0.4381*x[5]*x[6]*x[8]*x[13]+0.3504*x[5]*x[6]*x[10]*x[14]+0.8535*x[5]*x[7]*x[9]*x[19]+0.8543*x[5]*x[7]*x[11]*x[17]+0.3125*x[5]*x[8]*x[9]*x[13]-0.6375*x[5]*x[8]*x[11]*x[16]+0.4114*x[5]*x[9]*x[15]*x[17]+0.8832*x[5]*x[10]*x[11]*x[20]+0.0201*x[5]*x[10]*x[13]*x[14]-0.6411*x[5]*x[11]*x[12]*x[20]+0.0632*x[5]*x[11]*x[16]*x[17]-0.6208*x[5]*x[13]*x[16]*x[17]+0.3792*x[6]*x[9]*x[10]*x[18]-0.5173*x[6]*x[9]*x[11]*x[16]-0.0348*x[6]*x[10]*x[11]*x[15]+0.5972*x[6]*x[10]*x[15]*x[18]-0.1748*x[6]*x[10]*x[17]*x[18]-0.472*x[6]*x[11]*x[14]*x[17]+0.7362*x[6]*x[12]*x[14]*x[19]-0.4518*x[6]*x[13]*x[17]*x[20]+0.4716*x[7]*x[8]*x[10]*x[18]-0.0995*x[7]*x[9]*x[11]*x[16]+0.3752*x[7]*x[9]*x[11]*x[19]-0.8786*x[7]*x[9]*x[13]*x[18]-0.7317*x[7]*x[9]*x[15]*x[17]+0.2118*x[7]*x[9]*x[15]*x[20]+0.0666*x[7]*x[10]*x[11]*x[13]-0.3721*x[7]*x[10]*x[12]*x[14]-0.0558*x[7]*x[11]*x[12]*x[18]+0.2985*x[7]*x[12]*x[15]*x[18]-0.461*x[7]*x[14]*x[17]*x[18]+0.2036*x[8]*x[10]*x[13]*x[16]-0.4132*x[9]*x[11]*x[15]*x[17]+0.1227*x[9]*x[15]*x[16]*x[20]+0.4168*x[9]*x[15]*x[17]*x[20]+0.1364*x[10]*x[11]*x[12]*x[16]-0.6469*x[10]*x[11]*x[16]*x[17]+0.1838*x[10]*x[12]*x[14]*x[16]-0.2695*x[10]*x[14]*x[18]*x[19]+0.9597*x[11]*x[13]*x[14]*x[16]-0.2376*x[14]*x[16]*x[18]*x[19] <= 38.676)
@NLconstraint(m, e5, 0.1821*x[1]*x[10]+0.6301*x[9]*x[20]-0.5894*x[10]*x[17]-0.4265*x[1]-0.3649*x[9]-0.1244*x[10]+0.9281*x[17]-0.9784*x[20]+0.9604*x[1]*x[7]*x[10]-0.1965*x[1]*x[5]*x[6]+0.714*x[2]*x[6]*x[13]-0.0436*x[2]*x[8]*x[14]+0.7153*x[2]*x[9]*x[14]+0.4027*x[3]*x[4]*x[9]+0.1989*x[3]*x[4]*x[10]+0.4652*x[3]*x[8]*x[15]+0.1377*x[3]*x[15]*x[19]-0.0686*x[3]*x[17]*x[20]-0.4563*x[4]*x[9]*x[14]-0.936*x[4]*x[14]*x[16]+0.6075*x[5]*x[6]*x[16]+0.3383*x[5]*x[9]*x[14]+0.7077*x[5]*x[9]*x[18]-0.6213*x[6]*x[8]*x[18]+0.1643*x[6]*x[10]*x[19]+0.9848*x[6]*x[11]*x[12]+0.115*x[6]*x[12]*x[14]-0.882*x[6]*x[14]*x[15]+0.4636*x[7]*x[14]*x[19]+0.88*x[8]*x[11]*x[17]+0.6796*x[8]*x[15]*x[17]-0.3536*x[8]*x[15]*x[18]-0.7849*x[9]*x[13]*x[17]-0.587*x[11]*x[13]*x[14]-0.1346*x[12]*x[13]*x[18]+0.1282*x[2]-0.0909*x[3]-0.6441*x[4]-0.7649*x[5]-0.5256*x[6]-0.6935*x[7]-0.3911*x[8]+0.0151*x[11]-0.2075*x[12]-0.3867*x[13]-0.817*x[14]+0.703*x[15]+0.3549*x[16]+0.5723*x[18]-0.231*x[19]+0.1922*x[1]*x[2]*x[3]*x[4]+0.7628*x[1]*x[2]*x[3]*x[18]-0.1642*x[1]*x[2]*x[5]*x[8]-0.5563*x[1]*x[3]*x[4]*x[18]+0.9553*x[1]*x[3]*x[6]*x[10]+0.3736*x[1]*x[3]*x[8]*x[13]-0.4961*x[1]*x[3]*x[18]*x[20]+0.7221*x[1]*x[4]*x[11]*x[16]+0.4977*x[1]*x[5]*x[8]*x[11]+0.8069*x[1]*x[5]*x[11]*x[13]-0.7259*x[1]*x[5]*x[11]*x[19]+0.5918*x[1]*x[6]*x[8]*x[12]+0.9273*x[1]*x[6]*x[17]*x[18]-0.7521*x[1]*x[8]*x[10]*x[18]-0.1112*x[1]*x[8]*x[13]*x[19]-0.3679*x[1]*x[8]*x[14]*x[15]+0.8575*x[1]*x[9]*x[13]*x[20]-0.3866*x[1]*x[10]*x[11]*x[18]-0.721*x[2]*x[3]*x[5]*x[7]-0.6965*x[2]*x[3]*x[5]*x[17]-0.4885*x[2]*x[3]*x[8]*x[12]-0.5363*x[2]*x[4]*x[9]*x[11]+0.0343*x[2]*x[5]*x[8]*x[15]+0.4269*x[2]*x[5]*x[8]*x[16]-0.5961*x[2]*x[5]*x[9]*x[14]-0.4318*x[2]*x[5]*x[9]*x[15]+0.4483*x[2]*x[5]*x[10]*x[14]+0.4237*x[2]*x[5]*x[13]*x[18]-0.3327*x[2]*x[6]*x[7]*x[16]+0.0515*x[2]*x[6]*x[9]*x[16]+0.2777*x[2]*x[6]*x[11]*x[17]-0.0807*x[2]*x[7]*x[8]*x[15]-0.6592*x[2]*x[7]*x[8]*x[19]-0.2584*x[2]*x[7]*x[10]*x[13]+0.7377*x[2]*x[7]*x[14]*x[19]-0.4424*x[2]*x[9]*x[11]*x[12]-0.3782*x[2]*x[9]*x[13]*x[19]+0.372*x[2]*x[13]*x[14]*x[17]-0.6804*x[2]*x[13]*x[15]*x[18]+0.2057*x[3]*x[4]*x[12]*x[13]+0.3809*x[3]*x[5]*x[7]*x[19]-0.0737*x[3]*x[5]*x[13]*x[19]-0.1812*x[3]*x[6]*x[8]*x[19]+0.8858*x[3]*x[6]*x[15]*x[16]+0.3172*x[3]*x[6]*x[17]*x[20]-0.861*x[3]*x[8]*x[9]*x[15]-0.6515*x[3]*x[8]*x[10]*x[11]-0.4193*x[3]*x[9]*x[11]*x[14]-0.6125*x[3]*x[9]*x[12]*x[20]-0.851*x[3]*x[9]*x[14]*x[17]-0.9765*x[3]*x[9]*x[15]*x[16]-0.3981*x[3]*x[10]*x[12]*x[18]-0.8843*x[3]*x[10]*x[14]*x[18]-0.2027*x[3]*x[14]*x[15]*x[18]+0.0469*x[4]*x[6]*x[7]*x[8]+0.5485*x[4]*x[6]*x[7]*x[10]-0.0027*x[4]*x[6]*x[13]*x[16]+0.6845*x[4]*x[9]*x[13]*x[18]+0.5118*x[4]*x[11]*x[13]*x[14]-0.4918*x[4]*x[11]*x[19]*x[20]-0.9014*x[5]*x[7]*x[12]*x[16]-0.2679*x[5]*x[7]*x[18]*x[19]-0.6084*x[5]*x[8]*x[9]*x[19]-0.2745*x[5]*x[9]*x[11]*x[14]+0.9796*x[5]*x[9]*x[17]*x[18]-0.2837*x[5]*x[15]*x[17]*x[20]+0.4145*x[6]*x[7]*x[9]*x[12]-0.8526*x[6]*x[7]*x[18]*x[20]-0.1858*x[6]*x[8]*x[11]*x[14]-0.8355*x[6]*x[13]*x[17]*x[18]-0.4717*x[6]*x[13]*x[18]*x[19]+0.2775*x[6]*x[14]*x[17]*x[18]-0.9734*x[7]*x[8]*x[9]*x[11]+0.1542*x[7]*x[8]*x[13]*x[18]+0.1527*x[7]*x[10]*x[14]*x[20]+0.8965*x[7]*x[11]*x[17]*x[18]+0.7708*x[7]*x[14]*x[17]*x[19]+0.1208*x[8]*x[12]*x[13]*x[19]+0.3811*x[8]*x[13]*x[14]*x[16]+0.0507*x[8]*x[13]*x[19]*x[20]+0.3771*x[9]*x[10]*x[13]*x[14]-0.2953*x[9]*x[11]*x[15]*x[17]+0.1102*x[9]*x[15]*x[18]*x[19]-0.9072*x[9]*x[16]*x[17]*x[18]+0.9358*x[10]*x[11]*x[13]*x[14]-0.7024*x[10]*x[11]*x[15]*x[16]+0.9334*x[10]*x[12]*x[13]*x[15]-0.3502*x[10]*x[12]*x[14]*x[18]+0.0198*x[10]*x[14]*x[16]*x[19]+0.7819*x[10]*x[15]*x[16]*x[18]-0.1665*x[10]*x[15]*x[17]*x[19]+0.1262*x[12]*x[14]*x[17]*x[19]+0.7306*x[13]*x[14]*x[19]*x[20] <= 20.387)


# ----- Objective ----- #
@objective(m, Min, x[21])
m = m 		 # model get returned when including this script. 
