using JuMP

m = Model();srand(12283919);

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.1 + 0.1*rand())
setlowerbound(x[6], 0.1 + 0.1*rand())
setlowerbound(x[14], 0.1 + 0.1*rand())
setlowerbound(x[3], 0.1 + 0.1*rand())
setlowerbound(x[11], 0.1 + 0.1*rand())
setlowerbound(x[12], 0.1 + 0.1*rand())
setlowerbound(x[5], 0.1 + 0.1*rand())
setlowerbound(x[2], 0.1 + 0.1*rand())
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.3753*x[1]*x[4]-0.3304*x[1]*x[6]-0.5047*x[1]*x[8]+0.4769*x[1]*x[12]+0.2869*x[2]*x[4]-0.8145*x[2]*x[6]-0.53*x[2]*x[7]-0.1352*x[2]*x[9]+0.0003*x[2]*x[10]+0.5203*x[2]*x[11]+0.0395*x[2]*x[14]-0.7989*x[3]*x[4]+0.0692*x[3]*x[6]-0.0219*x[3]*x[7]+0.0977*x[3]*x[8]+0.1642*x[3]*x[10]+0.9929*x[3]*x[11]-0.497*x[3]*x[12]+0.497*x[3]*x[13]-0.4858*x[4]*x[5]-0.5833*x[4]*x[7]-0.7251*x[4]*x[8]-0.6889*x[4]*x[11]-0.5569*x[4]*x[14]+0.0808*x[5]*x[6]+0.0219*x[5]*x[7]-0.8448*x[5]*x[8]-0.9499*x[5]*x[11]-0.9939*x[5]*x[13]-0.3612*x[6]*x[12]-0.0203*x[6]*x[13]-0.8604*x[6]*x[14]+0.5555*x[7]*x[9]+0.124*x[7]*x[10]+0.5249*x[7]*x[12]+0.8049*x[8]*x[14]+0.9229*x[8]*x[15]+0.5119*x[9]*x[10]+0.4381*x[9]*x[12]-0.831*x[9]*x[13]+0.9353*x[9]*x[14]+0.8942*x[10]*x[12]+0.1639*x[10]*x[13]+0.5277*x[10]*x[14]+0.5162*x[11]*x[15]+0.4181*x[12]*x[13]+0.4699*x[12]*x[14]-0.8293*x[12]*x[15]-0.8906*x[13]*x[14]-0.1182*x[13]*x[15]-0.2451*x[1]-0.1578*x[2]+0.2522*x[3]+0.562*x[4]+0.9868*x[5]+0.0232*x[6]+0.5897*x[7]+0.1998*x[8]-0.9026*x[9]+0.5954*x[10]-0.0184*x[11]-0.9132*x[12]-0.0269*x[13]+0.5776*x[14]+0.2437*x[15]+0.2284*x[1]*x[2]*x[3]-0.3155*x[1]*x[2]*x[6]+0.1448*x[1]*x[2]*x[7]+0.9985*x[1]*x[2]*x[14]+0.1948*x[1]*x[3]*x[5]-0.672*x[1]*x[3]*x[8]+0.1664*x[1]*x[3]*x[11]+0.4013*x[1]*x[3]*x[12]-0.0868*x[1]*x[3]*x[13]-0.0998*x[1]*x[4]*x[6]+0.2573*x[1]*x[4]*x[7]+0.9168*x[1]*x[4]*x[8]-0.4268*x[1]*x[4]*x[10]+0.8874*x[1]*x[4]*x[15]+0.6908*x[1]*x[5]*x[6]+0.947*x[1]*x[5]*x[7]-0.6056*x[1]*x[5]*x[9]-0.3442*x[1]*x[5]*x[12]-0.4609*x[1]*x[5]*x[13]-0.1736*x[1]*x[6]*x[7]+0.2418*x[1]*x[6]*x[12]-0.1571*x[1]*x[6]*x[13]-0.196*x[1]*x[6]*x[14]+0.9272*x[1]*x[7]*x[8]-0.0148*x[1]*x[7]*x[9]+0.3253*x[1]*x[7]*x[10]+0.0341*x[1]*x[7]*x[11]-0.3496*x[1]*x[8]*x[9]-0.3877*x[1]*x[8]*x[13]+0.8868*x[1]*x[9]*x[13]-0.8199*x[1]*x[10]*x[11]-0.7607*x[1]*x[10]*x[12]-0.5615*x[1]*x[11]*x[12]-0.7402*x[1]*x[11]*x[15]+0.496*x[1]*x[12]*x[14]+0.1818*x[2]*x[3]*x[6]+0.9687*x[2]*x[3]*x[7]+0.4833*x[2]*x[3]*x[9]+0.2373*x[2]*x[3]*x[10]+0.5412*x[2]*x[3]*x[12]+0.1313*x[2]*x[3]*x[13]-0.6084*x[2]*x[4]*x[5]+0.8262*x[2]*x[4]*x[6]+0.2835*x[2]*x[4]*x[7]-0.6921*x[2]*x[4]*x[9]-0.3803*x[2]*x[4]*x[11]-0.0462*x[2]*x[4]*x[12]-0.9641*x[2]*x[4]*x[14]+0.7201*x[2]*x[5]*x[6]-0.1518*x[2]*x[5]*x[7]-0.7975*x[2]*x[5]*x[8]-0.0592*x[2]*x[5]*x[9]+0.6446*x[2]*x[5]*x[11]+0.4713*x[2]*x[5]*x[14]+0.9703*x[2]*x[6]*x[7]-0.0407*x[2]*x[6]*x[8]+0.1814*x[2]*x[6]*x[11]+0.4389*x[2]*x[6]*x[12]+0.2902*x[2]*x[6]*x[13]+0.5014*x[2]*x[6]*x[15]-0.7895*x[2]*x[7]*x[9]-0.9986*x[2]*x[7]*x[11]-0.7249*x[2]*x[8]*x[9]-0.9687*x[2]*x[8]*x[11]-0.2402*x[2]*x[8]*x[14]-0.0968*x[2]*x[8]*x[15]-0.8223*x[2]*x[9]*x[12]-0.2455*x[2]*x[9]*x[13]+0.416*x[2]*x[10]*x[11]-0.8667*x[2]*x[10]*x[15]-0.222*x[2]*x[11]*x[14]-0.8504*x[2]*x[11]*x[15]+0.743*x[2]*x[13]*x[14]+0.6789*x[3]*x[4]*x[6]+0.436*x[3]*x[4]*x[10]+0.0713*x[3]*x[4]*x[12]-0.0846*x[3]*x[5]*x[7]+0.5968*x[3]*x[5]*x[9]+0.4704*x[3]*x[5]*x[11]+0.1936*x[3]*x[5]*x[14]-0.3417*x[3]*x[6]*x[7]+0.9569*x[3]*x[6]*x[9]+0.2371*x[3]*x[6]*x[10]-0.6625*x[3]*x[6]*x[12]-0.109*x[3]*x[6]*x[14]+0.1794*x[3]*x[7]*x[8]+0.3703*x[3]*x[7]*x[9]-0.6292*x[3]*x[7]*x[10]+0.7822*x[3]*x[7]*x[13]+0.4837*x[3]*x[7]*x[15]-0.2253*x[3]*x[8]*x[9]+0.5684*x[3]*x[8]*x[11]+0.3176*x[3]*x[8]*x[13]-0.0097*x[3]*x[9]*x[12]+0.0256*x[3]*x[9]*x[13]-0.3214*x[3]*x[10]*x[12]-0.5144*x[3]*x[10]*x[13]-0.4416*x[3]*x[11]*x[13]+0.2939*x[3]*x[11]*x[14]-0.8262*x[3]*x[14]*x[15]-0.3744*x[4]*x[5]*x[8]+0.8756*x[4]*x[5]*x[10]-0.6154*x[4]*x[5]*x[11]+0.6795*x[4]*x[5]*x[13]-0.0217*x[4]*x[5]*x[15]-0.067*x[4]*x[6]*x[8]-0.2341*x[4]*x[6]*x[9]+0.4314*x[4]*x[6]*x[10]-0.1419*x[4]*x[6]*x[11]+0.2275*x[4]*x[6]*x[15]+0.0573*x[4]*x[7]*x[9]+0.6602*x[4]*x[7]*x[10]-0.8418*x[4]*x[7]*x[11]+0.9405*x[4]*x[7]*x[12]+0.9317*x[4]*x[7]*x[13]-0.7085*x[4]*x[7]*x[14]+0.0864*x[4]*x[7]*x[15]+0.0448*x[4]*x[8]*x[11]-0.1097*x[4]*x[8]*x[12]+0.9847*x[4]*x[8]*x[15]+0.6454*x[4]*x[9]*x[10]+0.8057*x[4]*x[9]*x[11]-0.0283*x[4]*x[9]*x[12]+0.522*x[4]*x[9]*x[13]-0.5978*x[4]*x[9]*x[14]+0.6799*x[4]*x[9]*x[15]+0.5959*x[4]*x[10]*x[11]-0.0285*x[4]*x[10]*x[12]-0.6272*x[4]*x[10]*x[13]-0.0596*x[4]*x[10]*x[14]-0.3978*x[4]*x[11]*x[13]-0.7372*x[4]*x[11]*x[14]-0.6765*x[4]*x[12]*x[13]+0.7684*x[4]*x[12]*x[15]+0.4003*x[4]*x[13]*x[14]-0.1668*x[4]*x[14]*x[15]+0.4568*x[5]*x[6]*x[8]+0.4507*x[5]*x[6]*x[9]-0.9454*x[5]*x[6]*x[11]-0.0813*x[5]*x[6]*x[13]-0.0112*x[5]*x[6]*x[14]+0.3795*x[5]*x[7]*x[8]-0.4102*x[5]*x[7]*x[9]-0.0339*x[5]*x[7]*x[10]-0.8875*x[5]*x[7]*x[15]-0.5289*x[5]*x[8]*x[10]+0.3393*x[5]*x[8]*x[13]+0.5633*x[5]*x[8]*x[14]+0.108*x[5]*x[9]*x[10]-0.679*x[5]*x[9]*x[13]-0.6234*x[5]*x[9]*x[14]-0.6505*x[5]*x[10]*x[14]+0.8754*x[5]*x[11]*x[12]-0.4368*x[5]*x[11]*x[13]+0.1394*x[5]*x[11]*x[14]-0.9516*x[5]*x[11]*x[15]-0.0061*x[5]*x[12]*x[15]+0.5875*x[5]*x[13]*x[15]+0.8706*x[5]*x[14]*x[15]+0.1058*x[6]*x[7]*x[8]-0.0574*x[6]*x[7]*x[11]-0.3328*x[6]*x[7]*x[12]-0.5863*x[6]*x[7]*x[13]+0.8725*x[6]*x[7]*x[14]-0.7644*x[6]*x[8]*x[10]-0.8164*x[6]*x[8]*x[12]+0.7539*x[6]*x[8]*x[15]+0.6511*x[6]*x[9]*x[11]+0.3016*x[6]*x[9]*x[13]-0.0207*x[6]*x[9]*x[15]-0.3874*x[6]*x[10]*x[11]+0.3698*x[6]*x[10]*x[13]-0.6405*x[6]*x[10]*x[15]+0.0874*x[6]*x[11]*x[14]-0.4061*x[6]*x[12]*x[13]-0.933*x[6]*x[12]*x[14]+0.5286*x[6]*x[12]*x[15]-0.3832*x[6]*x[13]*x[14]-0.9505*x[7]*x[8]*x[11]+0.3913*x[7]*x[8]*x[12]-0.34*x[7]*x[9]*x[10]+0.2964*x[7]*x[9]*x[11]-0.5689*x[7]*x[10]*x[11]-0.5819*x[7]*x[10]*x[12]+0.2752*x[7]*x[10]*x[13]+0.5617*x[7]*x[10]*x[14]+0.5946*x[7]*x[10]*x[15]+0.2747*x[7]*x[11]*x[13]-0.5651*x[7]*x[11]*x[14]+0.7045*x[7]*x[12]*x[13]+0.5713*x[7]*x[12]*x[15]-0.9519*x[7]*x[13]*x[14]-0.6643*x[7]*x[14]*x[15]-0.6388*x[8]*x[9]*x[10]-0.6462*x[8]*x[9]*x[14]+0.1277*x[8]*x[9]*x[15]+0.3975*x[8]*x[10]*x[11]-0.6033*x[8]*x[10]*x[12]+0.7789*x[8]*x[10]*x[13]+0.331*x[8]*x[11]*x[13]-0.4249*x[8]*x[11]*x[14]-0.6047*x[8]*x[11]*x[15]-0.5614*x[8]*x[12]*x[15]-0.7728*x[8]*x[13]*x[14]-0.8073*x[9]*x[10]*x[11]+0.5506*x[9]*x[10]*x[12]+0.1189*x[9]*x[10]*x[13]+0.7868*x[9]*x[10]*x[14]-0.2582*x[9]*x[10]*x[15]-0.9713*x[9]*x[11]*x[13]-0.2652*x[9]*x[11]*x[15]-0.2337*x[9]*x[12]*x[13]-0.1905*x[9]*x[12]*x[14]-0.9228*x[9]*x[13]*x[14]-0.7224*x[9]*x[13]*x[15]+0.8041*x[10]*x[11]*x[13]-0.1951*x[10]*x[11]*x[14]-0.4061*x[10]*x[11]*x[15]+0.6614*x[10]*x[12]*x[13]-0.558*x[10]*x[12]*x[14]+0.1782*x[11]*x[12]*x[13]+0.6276*x[11]*x[12]*x[14]-0.5928*x[11]*x[12]*x[15]+0.5537*x[11]*x[13]*x[14]-0.4451*x[11]*x[13]*x[15]-0.8135*x[11]*x[14]*x[15]-0.1622*x[12]*x[13]*x[14])+x[16] == 0.0)
@NLconstraint(m, e2, 0.5528*x[1]*x[7]+0.4041*x[1]*x[9]+0.6631*x[1]*x[10]-0.6457*x[2]*x[3]-0.014*x[2]*x[5]-0.5709*x[2]*x[8]-0.6193*x[2]*x[13]-0.4609*x[2]*x[14]-0.1261*x[3]*x[4]-0.2722*x[3]*x[6]-0.4473*x[3]*x[7]-0.3677*x[3]*x[10]+0.1935*x[3]*x[14]+0.7189*x[3]*x[15]-0.9398*x[4]*x[6]-0.2034*x[4]*x[7]+0.435*x[4]*x[8]+0.0946*x[4]*x[10]+0.0733*x[4]*x[11]-0.0679*x[4]*x[12]-0.2596*x[4]*x[14]+0.8925*x[5]*x[6]+0.3207*x[5]*x[7]-0.5345*x[5]*x[11]-0.8904*x[6]*x[7]-0.1876*x[6]*x[8]-0.6548*x[6]*x[12]+0.6021*x[6]*x[13]+0.8877*x[6]*x[14]+0.3058*x[6]*x[15]-0.8311*x[7]*x[8]+0.5066*x[7]*x[13]-0.6747*x[7]*x[15]-0.6102*x[8]*x[9]+0.865*x[8]*x[11]-0.4917*x[8]*x[12]-0.0821*x[9]*x[10]-0.9423*x[9]*x[15]-0.357*x[10]*x[13]+0.519*x[10]*x[14]-0.9582*x[10]*x[15]-0.1619*x[11]*x[13]+0.7864*x[11]*x[14]-0.8174*x[11]*x[15]+0.6639*x[12]*x[13]+0.807*x[13]*x[14]-0.6774*x[13]*x[15]+0.6616*x[1]+0.3928*x[2]+0.4047*x[3]-0.492*x[4]+0.0233*x[5]-0.0839*x[6]+0.9802*x[7]+0.2466*x[8]+0.0186*x[9]+0.761*x[10]+0.1837*x[11]+0.6049*x[12]-0.782*x[13]+0.8772*x[14]+0.9354*x[15]+0.3769*x[1]*x[2]*x[3]-0.6698*x[1]*x[2]*x[7]-0.3871*x[1]*x[2]*x[11]-0.0849*x[1]*x[2]*x[14]+0.0856*x[1]*x[2]*x[15]-0.6238*x[1]*x[3]*x[4]+0.3118*x[1]*x[3]*x[9]+0.4738*x[1]*x[3]*x[10]+0.9793*x[1]*x[3]*x[11]+0.4162*x[1]*x[4]*x[15]-0.3175*x[1]*x[5]*x[8]-0.1114*x[1]*x[5]*x[12]+0.9925*x[1]*x[5]*x[13]+0.4237*x[1]*x[6]*x[7]-0.1588*x[1]*x[6]*x[9]+0.379*x[1]*x[6]*x[10]+0.0611*x[1]*x[6]*x[11]+0.6521*x[1]*x[6]*x[12]-0.0483*x[1]*x[7]*x[10]-0.9632*x[1]*x[7]*x[15]-0.92*x[1]*x[8]*x[10]-0.0941*x[1]*x[8]*x[11]+0.7893*x[1]*x[8]*x[14]+0.3232*x[1]*x[8]*x[15]-0.343*x[1]*x[11]*x[13]+0.1736*x[1]*x[11]*x[15]-0.4268*x[1]*x[13]*x[15]+0.32*x[1]*x[14]*x[15]-0.4111*x[2]*x[3]*x[4]-0.3399*x[2]*x[3]*x[7]-0.3243*x[2]*x[3]*x[10]-0.3063*x[2]*x[3]*x[12]+0.5834*x[2]*x[3]*x[13]+0.5914*x[2]*x[3]*x[15]-0.0737*x[2]*x[4]*x[6]-0.4663*x[2]*x[4]*x[10]+0.7964*x[2]*x[4]*x[11]+0.2624*x[2]*x[4]*x[12]+0.6958*x[2]*x[4]*x[14]+0.8876*x[2]*x[5]*x[6]-0.6526*x[2]*x[5]*x[7]-0.0434*x[2]*x[5]*x[8]-0.6522*x[2]*x[5]*x[10]+0.0538*x[2]*x[5]*x[12]+0.2033*x[2]*x[5]*x[13]+0.6907*x[2]*x[5]*x[14]-0.6183*x[2]*x[6]*x[7]-0.3498*x[2]*x[6]*x[8]+0.1849*x[2]*x[6]*x[9]+0.54*x[2]*x[6]*x[12]+0.2203*x[2]*x[6]*x[13]+0.2995*x[2]*x[6]*x[14]+0.5189*x[2]*x[7]*x[8]-0.2124*x[2]*x[7]*x[11]-0.3506*x[2]*x[7]*x[15]-0.0645*x[2]*x[8]*x[11]-0.7734*x[2]*x[8]*x[12]-0.4082*x[2]*x[9]*x[10]-0.4814*x[2]*x[9]*x[11]+0.2013*x[2]*x[9]*x[13]-0.9163*x[2]*x[9]*x[14]-0.3177*x[2]*x[10]*x[11]-0.3354*x[2]*x[10]*x[14]+0.0073*x[2]*x[11]*x[12]+0.8514*x[2]*x[11]*x[13]-0.644*x[2]*x[11]*x[14]-0.1013*x[2]*x[11]*x[15]+0.7768*x[2]*x[12]*x[13]-0.7955*x[2]*x[13]*x[15]-0.7597*x[2]*x[14]*x[15]-0.5887*x[3]*x[4]*x[6]+0.7548*x[3]*x[4]*x[7]+0.5847*x[3]*x[4]*x[8]+0.1693*x[3]*x[4]*x[9]-0.5562*x[3]*x[4]*x[11]+0.9834*x[3]*x[4]*x[13]-0.117*x[3]*x[4]*x[14]-0.1685*x[3]*x[5]*x[6]-0.0401*x[3]*x[5]*x[7]-0.1389*x[3]*x[5]*x[8]-0.2592*x[3]*x[5]*x[9]-0.416*x[3]*x[5]*x[10]+0.6108*x[3]*x[5]*x[11]-0.5257*x[3]*x[5]*x[12]+0.8941*x[3]*x[6]*x[9]-0.7901*x[3]*x[6]*x[10]-0.9741*x[3]*x[6]*x[11]-0.3282*x[3]*x[6]*x[12]+0.6472*x[3]*x[6]*x[13]-0.2975*x[3]*x[6]*x[14]-0.2187*x[3]*x[6]*x[15]+0.4047*x[3]*x[7]*x[8]-0.6494*x[3]*x[7]*x[10]+0.1559*x[3]*x[7]*x[12]-0.1748*x[3]*x[7]*x[13]+0.0318*x[3]*x[7]*x[15]-0.0071*x[3]*x[8]*x[9]-0.9422*x[3]*x[8]*x[10]+0.7193*x[3]*x[8]*x[11]+0.9452*x[3]*x[8]*x[13]-0.8217*x[3]*x[8]*x[14]-0.2495*x[3]*x[8]*x[15]-0.1166*x[3]*x[9]*x[10]-0.5405*x[3]*x[9]*x[11]+0.3352*x[3]*x[9]*x[12]+0.0791*x[3]*x[9]*x[14]+0.1448*x[3]*x[10]*x[11]-0.2396*x[3]*x[10]*x[12]-0.6599*x[3]*x[10]*x[13]+0.3956*x[3]*x[10]*x[14]-0.6719*x[3]*x[11]*x[12]-0.0405*x[3]*x[11]*x[14]-0.0259*x[3]*x[12]*x[15]+0.5599*x[3]*x[13]*x[14]+0.0661*x[3]*x[14]*x[15]+0.1479*x[4]*x[5]*x[7]+0.225*x[4]*x[5]*x[9]-0.1281*x[4]*x[5]*x[10]-0.9986*x[4]*x[5]*x[12]+0.008*x[4]*x[6]*x[7]-0.27*x[4]*x[6]*x[8]-0.6057*x[4]*x[6]*x[9]+0.6115*x[4]*x[6]*x[11]-0.4616*x[4]*x[6]*x[13]+0.1178*x[4]*x[6]*x[14]-0.113*x[4]*x[6]*x[15]-0.6678*x[4]*x[7]*x[8]-0.4673*x[4]*x[7]*x[9]+0.2237*x[4]*x[7]*x[11]-0.7901*x[4]*x[7]*x[12]-0.6971*x[4]*x[7]*x[14]-0.9679*x[4]*x[8]*x[11]+0.8105*x[4]*x[8]*x[13]-0.6915*x[4]*x[8]*x[14]+0.2074*x[4]*x[9]*x[10]-0.1445*x[4]*x[9]*x[11]-0.9996*x[4]*x[9]*x[13]-0.0214*x[4]*x[9]*x[15]-0.0275*x[4]*x[10]*x[11]+0.3663*x[4]*x[10]*x[12]+0.3748*x[4]*x[10]*x[13]-0.5581*x[4]*x[10]*x[14]-0.6599*x[4]*x[11]*x[13]-0.7982*x[4]*x[12]*x[14]+0.7083*x[4]*x[13]*x[14]+0.7614*x[5]*x[6]*x[7]-0.4446*x[5]*x[6]*x[9]+0.5402*x[5]*x[6]*x[12]-0.1659*x[5]*x[6]*x[13]+0.1484*x[5]*x[6]*x[14]-0.9741*x[5]*x[6]*x[15]+0.7725*x[5]*x[7]*x[8]+0.1176*x[5]*x[7]*x[9]-0.5974*x[5]*x[7]*x[13]-0.0164*x[5]*x[7]*x[15]-0.3317*x[5]*x[8]*x[9]+0.6925*x[5]*x[8]*x[11]-0.3738*x[5]*x[8]*x[13]-0.3877*x[5]*x[8]*x[14]+0.4361*x[5]*x[9]*x[11]+0.4342*x[5]*x[9]*x[13]-0.1895*x[5]*x[9]*x[14]+0.6899*x[5]*x[9]*x[15]-0.3819*x[5]*x[10]*x[13]+0.5984*x[5]*x[10]*x[14]+0.6811*x[5]*x[10]*x[15]-0.9695*x[5]*x[11]*x[14]+0.4764*x[5]*x[12]*x[13]+0.459*x[5]*x[13]*x[14]+0.4255*x[6]*x[7]*x[9]+0.9347*x[6]*x[7]*x[10]+0.4211*x[6]*x[7]*x[14]+0.6789*x[6]*x[8]*x[9]+0.3488*x[6]*x[8]*x[10]+0.4117*x[6]*x[8]*x[12]+0.8966*x[6]*x[8]*x[14]-0.0821*x[6]*x[8]*x[15]+0.5563*x[6]*x[9]*x[12]-0.7816*x[6]*x[9]*x[13]+0.6146*x[6]*x[10]*x[11]-0.4982*x[6]*x[10]*x[14]-0.7367*x[6]*x[11]*x[12]-0.7712*x[6]*x[11]*x[14]-0.6926*x[6]*x[12]*x[13]-0.7882*x[6]*x[12]*x[15]+0.1803*x[7]*x[8]*x[11]-0.3946*x[7]*x[8]*x[12]-0.6359*x[7]*x[8]*x[13]+0.8319*x[7]*x[8]*x[15]+0.4719*x[7]*x[9]*x[10]-0.8851*x[7]*x[9]*x[12]+0.0473*x[7]*x[9]*x[13]+0.5281*x[7]*x[9]*x[14]+0.3126*x[7]*x[9]*x[15]-0.3792*x[7]*x[10]*x[11]-0.3062*x[7]*x[10]*x[12]+0.4854*x[7]*x[10]*x[13]+0.1433*x[7]*x[10]*x[14]+0.8944*x[7]*x[11]*x[12]+0.8516*x[7]*x[11]*x[13]+0.2886*x[7]*x[12]*x[13]-0.2321*x[7]*x[13]*x[14]+0.8568*x[8]*x[9]*x[10]+0.9525*x[8]*x[9]*x[11]-0.8786*x[8]*x[9]*x[12]-0.5107*x[8]*x[10]*x[11]-0.5235*x[8]*x[10]*x[12]-0.7975*x[8]*x[11]*x[12]-0.7488*x[8]*x[11]*x[13]+0.689*x[8]*x[11]*x[14]+0.1169*x[8]*x[12]*x[13]-0.6772*x[8]*x[12]*x[14]+0.6635*x[8]*x[12]*x[15]+0.695*x[8]*x[13]*x[15]-0.0794*x[9]*x[10]*x[11]+0.152*x[9]*x[10]*x[13]+0.7306*x[9]*x[10]*x[14]+0.4229*x[9]*x[10]*x[15]-0.7882*x[9]*x[11]*x[13]+0.7152*x[9]*x[11]*x[15]+0.1772*x[9]*x[12]*x[14]-0.745*x[9]*x[13]*x[14]+0.6766*x[9]*x[13]*x[15]-0.5217*x[10]*x[11]*x[13]+0.1597*x[10]*x[11]*x[14]-0.221*x[10]*x[12]*x[14]-0.3954*x[10]*x[14]*x[15]-0.7035*x[11]*x[12]*x[14]+0.8267*x[11]*x[14]*x[15]+0.5574*x[12]*x[13]*x[14]-0.8157*x[12]*x[14]*x[15] <= 75.675)
@NLconstraint(m, e3, 0.7824*x[1]*x[3]-0.9886*x[1]*x[9]-0.9268*x[1]*x[10]+0.3441*x[1]*x[14]-0.1195*x[2]*x[3]+0.8427*x[2]*x[5]-0.4875*x[2]*x[6]-0.0242*x[2]*x[11]+0.6184*x[2]*x[14]-0.0395*x[2]*x[15]-0.7171*x[3]*x[4]-0.5774*x[3]*x[6]+0.6106*x[3]*x[7]-0.5979*x[3]*x[8]-0.3755*x[3]*x[9]+0.0744*x[3]*x[12]-0.255*x[3]*x[13]-0.0021*x[4]*x[7]+0.9451*x[4]*x[11]-0.6546*x[4]*x[12]-0.8841*x[5]*x[6]-0.4208*x[5]*x[7]-0.1365*x[5]*x[8]-0.1921*x[5]*x[11]+0.6526*x[6]*x[7]-0.3089*x[6]*x[8]+0.4195*x[6]*x[10]+0.683*x[6]*x[12]-0.9476*x[7]*x[8]+0.4378*x[7]*x[9]-0.6979*x[7]*x[14]+0.1403*x[8]*x[9]-0.0931*x[8]*x[12]+0.3724*x[8]*x[13]-0.6551*x[8]*x[14]-0.1725*x[9]*x[14]-0.3193*x[10]*x[11]-0.4208*x[10]*x[12]-0.6767*x[10]*x[13]+0.7226*x[10]*x[14]+0.074*x[10]*x[15]+0.1561*x[11]*x[14]+0.6878*x[11]*x[15]-0.159*x[12]*x[13]-0.9093*x[12]*x[14]+0.856*x[14]*x[15]-0.311*x[1]+0.248*x[2]-0.9393*x[3]+0.4*x[4]-0.0656*x[5]-0.066*x[6]-0.8488*x[7]+0.8501*x[8]+0.724*x[9]+0.0533*x[10]+0.2755*x[11]+0.2196*x[12]+0.615*x[13]+0.6974*x[14]-0.7515*x[15]+0.5632*x[1]*x[2]*x[3]-0.7901*x[1]*x[2]*x[4]-0.6054*x[1]*x[2]*x[11]-0.7989*x[1]*x[2]*x[15]-0.9843*x[1]*x[3]*x[4]+0.8332*x[1]*x[3]*x[5]+0.3193*x[1]*x[3]*x[9]+0.706*x[1]*x[3]*x[10]-0.8201*x[1]*x[3]*x[14]+0.744*x[1]*x[4]*x[7]+0.9396*x[1]*x[4]*x[8]+0.2794*x[1]*x[4]*x[11]-0.365*x[1]*x[4]*x[13]+0.4309*x[1]*x[4]*x[14]+0.8788*x[1]*x[5]*x[14]-0.8846*x[1]*x[6]*x[7]+0.3712*x[1]*x[6]*x[9]-0.1764*x[1]*x[6]*x[13]+0.2846*x[1]*x[6]*x[14]+0.4112*x[1]*x[8]*x[10]+0.7195*x[1]*x[8]*x[11]+0.9344*x[1]*x[8]*x[12]+0.5948*x[1]*x[8]*x[13]+0.5618*x[1]*x[9]*x[11]-0.8723*x[1]*x[10]*x[11]-0.6228*x[1]*x[11]*x[13]-0.7463*x[1]*x[12]*x[13]-0.1023*x[1]*x[13]*x[14]-0.2058*x[1]*x[13]*x[15]+0.9231*x[1]*x[14]*x[15]-0.7147*x[2]*x[3]*x[5]-0.2493*x[2]*x[3]*x[6]+0.0361*x[2]*x[3]*x[7]+0.9277*x[2]*x[3]*x[10]-0.2583*x[2]*x[3]*x[11]-0.7938*x[2]*x[3]*x[12]+0.7488*x[2]*x[3]*x[14]-0.2535*x[2]*x[3]*x[15]+0.88*x[2]*x[4]*x[5]-0.5735*x[2]*x[4]*x[6]-0.6992*x[2]*x[4]*x[7]-0.7476*x[2]*x[4]*x[10]-0.5018*x[2]*x[4]*x[11]+0.4341*x[2]*x[4]*x[12]+0.0107*x[2]*x[4]*x[13]-0.4245*x[2]*x[4]*x[14]+0.8684*x[2]*x[5]*x[6]-0.1537*x[2]*x[5]*x[8]-0.9136*x[2]*x[5]*x[9]+0.262*x[2]*x[5]*x[10]-0.6015*x[2]*x[5]*x[11]+0.3766*x[2]*x[5]*x[13]+0.0331*x[2]*x[5]*x[14]-0.9626*x[2]*x[5]*x[15]+0.5368*x[2]*x[6]*x[8]-0.4754*x[2]*x[6]*x[9]-0.2559*x[2]*x[6]*x[11]+0.0013*x[2]*x[6]*x[12]+0.649*x[2]*x[6]*x[13]-0.3804*x[2]*x[6]*x[14]-0.4812*x[2]*x[6]*x[15]-0.3223*x[2]*x[7]*x[8]-0.9236*x[2]*x[7]*x[10]-0.0494*x[2]*x[7]*x[11]-0.3651*x[2]*x[7]*x[13]+0.6766*x[2]*x[8]*x[11]+0.0836*x[2]*x[8]*x[13]-0.9235*x[2]*x[9]*x[10]-0.7257*x[2]*x[9]*x[11]+0.9998*x[2]*x[9]*x[12]+0.329*x[2]*x[9]*x[13]+0.8405*x[2]*x[9]*x[14]-0.8327*x[2]*x[9]*x[15]+0.5241*x[2]*x[10]*x[11]+0.724*x[2]*x[10]*x[13]-0.2922*x[2]*x[10]*x[14]+0.9828*x[2]*x[10]*x[15]+0.1221*x[2]*x[11]*x[12]+0.7955*x[2]*x[11]*x[15]+0.5005*x[2]*x[12]*x[13]+0.0181*x[2]*x[12]*x[14]+0.0604*x[2]*x[13]*x[15]-0.9126*x[3]*x[4]*x[5]-0.1926*x[3]*x[4]*x[6]+0.8469*x[3]*x[4]*x[10]-0.8313*x[3]*x[4]*x[12]-0.0014*x[3]*x[4]*x[14]-0.717*x[3]*x[4]*x[15]+0.6835*x[3]*x[5]*x[7]+0.888*x[3]*x[5]*x[12]-0.2959*x[3]*x[5]*x[14]+0.6701*x[3]*x[6]*x[7]-0.2212*x[3]*x[6]*x[12]+0.4335*x[3]*x[6]*x[13]+0.5825*x[3]*x[6]*x[14]+0.9786*x[3]*x[7]*x[9]-0.7326*x[3]*x[7]*x[11]+0.9129*x[3]*x[7]*x[13]+0.7025*x[3]*x[7]*x[14]-0.5192*x[3]*x[8]*x[9]-0.8866*x[3]*x[8]*x[10]-0.0761*x[3]*x[8]*x[11]-0.019*x[3]*x[8]*x[12]-0.471*x[3]*x[8]*x[14]-0.6364*x[3]*x[9]*x[10]+0.2697*x[3]*x[10]*x[11]-0.1592*x[3]*x[10]*x[12]+0.5372*x[3]*x[10]*x[13]+0.4912*x[3]*x[10]*x[14]-0.6334*x[3]*x[10]*x[15]-0.6787*x[3]*x[11]*x[13]+0.7248*x[3]*x[12]*x[13]-0.8744*x[3]*x[13]*x[14]-0.2361*x[4]*x[5]*x[6]-0.7995*x[4]*x[5]*x[7]+0.4756*x[4]*x[5]*x[8]+0.142*x[4]*x[5]*x[11]-0.8059*x[4]*x[5]*x[12]+0.9736*x[4]*x[5]*x[14]+0.6808*x[4]*x[6]*x[7]-0.1302*x[4]*x[6]*x[10]-0.969*x[4]*x[6]*x[11]+0.9193*x[4]*x[6]*x[14]-0.3191*x[4]*x[7]*x[8]-0.4751*x[4]*x[7]*x[12]+0.0743*x[4]*x[7]*x[13]-0.7408*x[4]*x[8]*x[12]-0.4867*x[4]*x[8]*x[14]+0.5194*x[4]*x[9]*x[10]+0.5158*x[4]*x[9]*x[11]-0.4091*x[4]*x[9]*x[13]-0.9212*x[4]*x[9]*x[14]-0.4744*x[4]*x[9]*x[15]+0.5991*x[4]*x[10]*x[11]+0.022*x[4]*x[10]*x[12]-0.5375*x[4]*x[10]*x[13]-0.0419*x[4]*x[10]*x[14]-0.7528*x[4]*x[11]*x[12]+0.5905*x[4]*x[11]*x[14]+0.0653*x[4]*x[12]*x[14]+0.5066*x[4]*x[13]*x[15]+0.9853*x[5]*x[6]*x[7]-0.836*x[5]*x[6]*x[8]+0.7745*x[5]*x[6]*x[9]+0.4076*x[5]*x[6]*x[10]+0.191*x[5]*x[6]*x[11]-0.844*x[5]*x[6]*x[12]-0.3722*x[5]*x[6]*x[13]-0.6481*x[5]*x[7]*x[8]+0.9265*x[5]*x[7]*x[13]-0.6792*x[5]*x[7]*x[14]-0.8364*x[5]*x[8]*x[10]-0.4112*x[5]*x[8]*x[12]+0.6278*x[5]*x[8]*x[15]-0.7104*x[5]*x[9]*x[10]+0.3022*x[5]*x[9]*x[11]-0.1331*x[5]*x[9]*x[12]+0.4707*x[5]*x[9]*x[13]+0.1611*x[5]*x[9]*x[14]+0.9858*x[5]*x[9]*x[15]+0.3546*x[5]*x[10]*x[13]+0.9334*x[5]*x[10]*x[14]-0.2165*x[5]*x[10]*x[15]+0.7849*x[5]*x[11]*x[12]-0.6902*x[5]*x[11]*x[15]-0.1462*x[5]*x[12]*x[13]+0.9249*x[5]*x[12]*x[14]-0.7424*x[5]*x[13]*x[14]+0.9015*x[5]*x[14]*x[15]-0.4868*x[6]*x[7]*x[9]-0.9174*x[6]*x[7]*x[10]+0.9294*x[6]*x[7]*x[11]+0.4425*x[6]*x[7]*x[13]+0.87*x[6]*x[7]*x[15]-0.9105*x[6]*x[8]*x[9]+0.9586*x[6]*x[8]*x[10]+0.4987*x[6]*x[8]*x[11]-0.2116*x[6]*x[8]*x[13]+0.2242*x[6]*x[8]*x[14]-0.9696*x[6]*x[8]*x[15]-0.2336*x[6]*x[9]*x[11]-0.7341*x[6]*x[9]*x[13]-0.6838*x[6]*x[9]*x[14]-0.188*x[6]*x[9]*x[15]+0.0427*x[6]*x[10]*x[12]-0.5194*x[6]*x[10]*x[13]-0.9793*x[6]*x[10]*x[14]-0.3053*x[6]*x[11]*x[13]-0.2754*x[6]*x[11]*x[14]-0.6106*x[6]*x[11]*x[15]+0.5795*x[6]*x[12]*x[13]+0.6175*x[6]*x[12]*x[14]-0.8714*x[7]*x[8]*x[9]+0.2168*x[7]*x[8]*x[11]-0.3498*x[7]*x[8]*x[15]+0.0261*x[7]*x[9]*x[10]+0.006*x[7]*x[9]*x[12]+0.6628*x[7]*x[9]*x[15]-0.107*x[7]*x[10]*x[13]-0.2488*x[7]*x[11]*x[12]+0.758*x[7]*x[11]*x[13]-0.0051*x[7]*x[11]*x[15]-0.3572*x[7]*x[12]*x[13]-0.6426*x[7]*x[12]*x[14]+0.6391*x[7]*x[13]*x[14]+0.887*x[7]*x[13]*x[15]+0.6964*x[8]*x[9]*x[10]+0.5705*x[8]*x[9]*x[12]+0.147*x[8]*x[9]*x[13]-0.7313*x[8]*x[10]*x[12]-0.0298*x[8]*x[10]*x[13]-0.717*x[8]*x[11]*x[12]+0.2177*x[8]*x[11]*x[14]-0.1637*x[8]*x[11]*x[15]-0.0005*x[8]*x[12]*x[13]+0.6555*x[8]*x[12]*x[14]+0.2197*x[8]*x[13]*x[14]-0.8868*x[8]*x[13]*x[15]+0.8318*x[9]*x[10]*x[11]+0.901*x[9]*x[10]*x[13]+0.2389*x[9]*x[11]*x[12]+0.3263*x[9]*x[11]*x[13]-0.0698*x[9]*x[11]*x[14]-0.0251*x[9]*x[13]*x[15]+0.4685*x[9]*x[14]*x[15]+0.9213*x[10]*x[11]*x[12]-0.6408*x[10]*x[11]*x[14]+0.8894*x[10]*x[12]*x[15]-0.8373*x[10]*x[13]*x[15]-0.2238*x[11]*x[12]*x[13]-0.3619*x[11]*x[13]*x[15]-0.5765*x[12]*x[14]*x[15] <= 63.906)
@NLconstraint(m, e4, 0.2757*x[1]*x[11]-0.6777*x[1]*x[5]-0.1112*x[1]*x[13]-0.8753*x[2]*x[3]+0.979*x[2]*x[5]-0.9895*x[2]*x[6]+0.324*x[2]*x[7]+0.3125*x[2]*x[12]-0.0287*x[2]*x[13]-0.3202*x[3]*x[4]+0.0045*x[3]*x[5]+0.2866*x[3]*x[6]+0.1586*x[3]*x[7]-0.5175*x[3]*x[9]-0.4193*x[3]*x[10]+0.4285*x[3]*x[13]-0.1023*x[4]*x[6]-0.4147*x[4]*x[7]-0.3229*x[4]*x[8]+0.9549*x[4]*x[9]-0.765*x[4]*x[11]-0.6854*x[4]*x[12]-0.3464*x[4]*x[13]+0.0623*x[4]*x[14]+0.0042*x[4]*x[15]-0.183*x[5]*x[7]-0.6407*x[5]*x[8]-0.1208*x[5]*x[9]+0.3044*x[5]*x[10]-0.0086*x[6]*x[12]+0.3026*x[6]*x[13]-0.7342*x[6]*x[14]-0.0695*x[6]*x[15]-0.4365*x[7]*x[8]+0.4912*x[7]*x[9]+0.7722*x[8]*x[9]-0.4897*x[8]*x[10]+0.6645*x[8]*x[12]+0.0175*x[8]*x[15]-0.0558*x[9]*x[11]-0.2369*x[9]*x[12]-0.1587*x[9]*x[14]-0.0406*x[10]*x[11]-0.4526*x[10]*x[13]+0.3868*x[10]*x[14]-0.4856*x[11]*x[13]+0.795*x[11]*x[14]-0.674*x[12]*x[13]-0.0932*x[13]*x[14]+0.2175*x[14]*x[15]+0.9241*x[1]-0.2807*x[2]-0.6359*x[3]+0.9124*x[4]+0.6008*x[5]+0.9007*x[6]-0.6731*x[7]-0.3894*x[8]-0.2257*x[9]-0.7549*x[10]+0.1911*x[11]+0.9663*x[12]-0.5739*x[13]-0.6995*x[14]+0.0242*x[15]+0.3813*x[1]*x[2]*x[3]+0.8073*x[1]*x[2]*x[4]+0.3131*x[1]*x[2]*x[6]-0.2686*x[1]*x[2]*x[10]-0.14*x[1]*x[2]*x[13]+0.2896*x[1]*x[2]*x[14]+0.1862*x[1]*x[3]*x[6]-0.1562*x[1]*x[3]*x[8]+0.6355*x[1]*x[3]*x[11]-0.2498*x[1]*x[3]*x[14]-0.1694*x[1]*x[4]*x[6]+0.7802*x[1]*x[4]*x[8]+0.3342*x[1]*x[4]*x[9]-0.805*x[1]*x[4]*x[15]-0.2683*x[1]*x[5]*x[9]+0.9034*x[1]*x[5]*x[11]-0.0491*x[1]*x[5]*x[13]+0.2075*x[1]*x[6]*x[10]-0.3309*x[1]*x[6]*x[12]-0.8836*x[1]*x[6]*x[13]-0.0776*x[1]*x[6]*x[14]-0.9451*x[1]*x[6]*x[15]+0.2165*x[1]*x[8]*x[10]-0.9827*x[1]*x[8]*x[12]-0.4064*x[1]*x[8]*x[13]+0.0391*x[1]*x[8]*x[14]+0.6695*x[1]*x[9]*x[12]+0.8171*x[1]*x[9]*x[14]+0.361*x[1]*x[9]*x[15]+0.8108*x[1]*x[10]*x[13]-0.2015*x[1]*x[10]*x[14]+0.1727*x[1]*x[10]*x[15]+0.9459*x[1]*x[11]*x[12]+0.111*x[1]*x[12]*x[14]-0.6874*x[1]*x[13]*x[15]+0.6641*x[2]*x[3]*x[4]+0.4511*x[2]*x[3]*x[5]+0.3787*x[2]*x[3]*x[8]+0.3336*x[2]*x[3]*x[9]-0.5601*x[2]*x[3]*x[10]+0.0414*x[2]*x[3]*x[11]-0.324*x[2]*x[3]*x[12]+0.9835*x[2]*x[3]*x[13]-0.3339*x[2]*x[3]*x[14]+0.6559*x[2]*x[4]*x[8]+0.8545*x[2]*x[4]*x[9]-0.1988*x[2]*x[4]*x[10]-0.8619*x[2]*x[4]*x[12]-0.7063*x[2]*x[5]*x[9]+0.638*x[2]*x[5]*x[11]-0.2053*x[2]*x[5]*x[12]+0.5113*x[2]*x[5]*x[13]-0.9479*x[2]*x[6]*x[7]+0.6374*x[2]*x[6]*x[9]+0.2265*x[2]*x[6]*x[11]-0.9956*x[2]*x[7]*x[10]+0.0611*x[2]*x[7]*x[11]-0.7632*x[2]*x[7]*x[12]-0.9753*x[2]*x[8]*x[11]-0.9827*x[2]*x[8]*x[12]+0.7749*x[2]*x[8]*x[14]-0.6363*x[2]*x[9]*x[10]+0.6985*x[2]*x[9]*x[14]-0.3547*x[2]*x[10]*x[13]-0.2135*x[2]*x[10]*x[15]-0.9404*x[2]*x[11]*x[12]-0.4698*x[2]*x[11]*x[14]+0.761*x[2]*x[12]*x[13]+0.0968*x[2]*x[12]*x[14]-0.1485*x[2]*x[12]*x[15]-0.5023*x[2]*x[13]*x[14]+0.589*x[3]*x[4]*x[5]+0.8645*x[3]*x[4]*x[6]+0.3749*x[3]*x[4]*x[7]-0.4567*x[3]*x[4]*x[9]-0.6347*x[3]*x[4]*x[11]-0.1843*x[3]*x[4]*x[12]-0.04*x[3]*x[4]*x[13]-0.0678*x[3]*x[4]*x[14]+0.5093*x[3]*x[5]*x[6]-0.5391*x[3]*x[5]*x[10]-0.2546*x[3]*x[5]*x[11]+0.1672*x[3]*x[5]*x[13]+0.678*x[3]*x[5]*x[14]-0.5006*x[3]*x[5]*x[15]+0.2502*x[3]*x[6]*x[7]-0.9586*x[3]*x[6]*x[8]+0.0343*x[3]*x[6]*x[10]+0.6182*x[3]*x[6]*x[13]-0.2831*x[3]*x[7]*x[9]+0.9632*x[3]*x[7]*x[11]-0.1668*x[3]*x[7]*x[12]+0.897*x[3]*x[8]*x[10]-0.1305*x[3]*x[8]*x[11]+0.844*x[3]*x[8]*x[12]+0.1478*x[3]*x[8]*x[13]-0.8072*x[3]*x[8]*x[15]+0.5012*x[3]*x[9]*x[10]+0.2268*x[3]*x[9]*x[11]+0.6634*x[3]*x[9]*x[13]-0.1185*x[3]*x[9]*x[14]-0.3579*x[3]*x[9]*x[15]-0.4852*x[3]*x[10]*x[11]+0.245*x[3]*x[10]*x[12]+0.4082*x[3]*x[10]*x[14]+0.56*x[3]*x[11]*x[12]-0.7579*x[3]*x[11]*x[13]-0.0062*x[3]*x[12]*x[14]+0.4363*x[3]*x[13]*x[14]-0.6254*x[3]*x[13]*x[15]-0.7342*x[4]*x[5]*x[7]+0.9895*x[4]*x[5]*x[9]+0.8854*x[4]*x[5]*x[10]+0.2186*x[4]*x[5]*x[11]-0.451*x[4]*x[5]*x[12]+0.0671*x[4]*x[5]*x[14]+0.6875*x[4]*x[6]*x[8]+0.9127*x[4]*x[6]*x[10]-0.4838*x[4]*x[6]*x[11]-0.7673*x[4]*x[6]*x[12]+0.2166*x[4]*x[6]*x[13]-0.8306*x[4]*x[6]*x[15]-0.2758*x[4]*x[7]*x[10]+0.5735*x[4]*x[7]*x[12]+0.1171*x[4]*x[7]*x[14]-0.0459*x[4]*x[7]*x[15]+0.5788*x[4]*x[8]*x[9]+0.9995*x[4]*x[8]*x[10]+0.3427*x[4]*x[8]*x[11]-0.4035*x[4]*x[9]*x[10]+0.0461*x[4]*x[9]*x[11]-0.2314*x[4]*x[9]*x[14]+0.2886*x[4]*x[9]*x[15]-0.5374*x[4]*x[10]*x[13]+0.4694*x[4]*x[10]*x[14]+0.8766*x[4]*x[11]*x[12]+0.4409*x[4]*x[11]*x[13]-0.0141*x[4]*x[11]*x[14]+0.2132*x[4]*x[12]*x[13]-0.0753*x[4]*x[12]*x[14]+0.057*x[4]*x[14]*x[15]-0.5499*x[5]*x[6]*x[7]+0.2241*x[5]*x[6]*x[11]+0.4457*x[5]*x[6]*x[12]-0.9208*x[5]*x[6]*x[14]+0.9525*x[5]*x[7]*x[8]+0.3679*x[5]*x[7]*x[11]+0.641*x[5]*x[7]*x[13]+0.4227*x[5]*x[7]*x[14]-0.4715*x[5]*x[8]*x[10]-0.2366*x[5]*x[8]*x[12]+0.5983*x[5]*x[9]*x[10]+0.6044*x[5]*x[9]*x[11]+0.4992*x[5]*x[9]*x[13]+0.9517*x[5]*x[9]*x[14]-0.0368*x[5]*x[10]*x[11]+0.3019*x[5]*x[10]*x[14]-0.2552*x[5]*x[10]*x[15]-0.7583*x[5]*x[11]*x[12]-0.9883*x[5]*x[11]*x[13]+0.3196*x[5]*x[11]*x[14]+0.9067*x[5]*x[12]*x[13]-0.806*x[5]*x[12]*x[15]-0.3913*x[5]*x[13]*x[14]+0.2362*x[5]*x[13]*x[15]+0.3916*x[5]*x[14]*x[15]+0.7262*x[6]*x[7]*x[8]-0.0426*x[6]*x[7]*x[12]-0.5853*x[6]*x[7]*x[13]+0.2511*x[6]*x[7]*x[14]+0.2466*x[6]*x[8]*x[9]+0.5924*x[6]*x[8]*x[10]+0.1747*x[6]*x[8]*x[14]+0.1151*x[6]*x[9]*x[10]+0.8957*x[6]*x[9]*x[12]+0.8329*x[6]*x[9]*x[13]-0.5653*x[6]*x[9]*x[14]-0.476*x[6]*x[10]*x[11]-0.8164*x[6]*x[10]*x[12]-0.7281*x[6]*x[10]*x[13]-0.676*x[6]*x[11]*x[12]+0.9495*x[6]*x[11]*x[13]-0.2334*x[6]*x[11]*x[14]-0.1355*x[6]*x[12]*x[13]-0.0768*x[6]*x[12]*x[14]+0.1114*x[6]*x[13]*x[14]-0.8505*x[6]*x[14]*x[15]+0.5947*x[7]*x[8]*x[9]-0.3847*x[7]*x[8]*x[11]-0.8592*x[7]*x[8]*x[13]+0.9574*x[7]*x[8]*x[14]-0.6325*x[7]*x[8]*x[15]+0.6411*x[7]*x[9]*x[10]-0.1731*x[7]*x[9]*x[13]-0.5562*x[7]*x[9]*x[14]+0.2242*x[7]*x[10]*x[11]-0.706*x[7]*x[11]*x[13]-0.2873*x[7]*x[11]*x[15]-0.6707*x[7]*x[12]*x[13]-0.8396*x[7]*x[12]*x[15]+0.1531*x[7]*x[14]*x[15]-0.5357*x[8]*x[9]*x[10]+0.1753*x[8]*x[9]*x[11]-0.4028*x[8]*x[9]*x[12]+0.1535*x[8]*x[9]*x[13]+0.7406*x[8]*x[10]*x[12]+0.2446*x[8]*x[10]*x[14]-0.9747*x[8]*x[10]*x[15]+0.9659*x[8]*x[11]*x[13]+0.8338*x[8]*x[11]*x[15]-0.5829*x[8]*x[12]*x[13]-0.148*x[8]*x[12]*x[14]+0.884*x[8]*x[13]*x[14]+0.1312*x[9]*x[10]*x[13]+0.0707*x[9]*x[10]*x[14]+0.1605*x[9]*x[11]*x[12]-0.5429*x[9]*x[11]*x[13]+0.5285*x[9]*x[11]*x[14]-0.2707*x[9]*x[13]*x[14]-0.8969*x[9]*x[14]*x[15]-0.9321*x[10]*x[11]*x[12]+0.8197*x[10]*x[11]*x[13]+0.966*x[10]*x[11]*x[15]+0.2594*x[10]*x[12]*x[13]-0.6553*x[10]*x[12]*x[14]-0.6111*x[10]*x[13]*x[14]+0.8914*x[11]*x[12]*x[13]+0.5022*x[11]*x[13]*x[14]+0.9609*x[11]*x[14]*x[15]-0.3441*x[12]*x[14]*x[15] <= 27.692)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 
