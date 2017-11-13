using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.3933*x[15]-0.9605*x[15]^2+(-0.9745*x[5]*x[13])-0.998*x[7]*x[12]-0.9697*x[10]*x[12]-0.9939*x[13]*x[15]-0.6662*x[5]-0.1467*x[7]-0.7406*x[10]-0.3289*x[12]-0.8604*x[13]+(-0.6792*x[1]*x[4]*x[5])-0.5914*x[1]*x[7]*x[11]-0.9037*x[2]*x[3]*x[4]-0.8469*x[2]*x[6]*x[9]-0.7025*x[2]*x[7]*x[10]-0.7428*x[3]*x[4]*x[8]-0.8262*x[3]*x[4]*x[14]-0.7254*x[3]*x[5]*x[10]-0.8016*x[3]*x[6]*x[10]-0.7532*x[3]*x[6]*x[13]-0.9096*x[3]*x[10]*x[12]-0.8073*x[4]*x[5]*x[9]-0.6835*x[4]*x[8]*x[12]-0.7712*x[4]*x[10]*x[13]-0.6098*x[4]*x[12]*x[14]-0.6916*x[4]*x[14]*x[15]-0.8199*x[5]*x[6]*x[7]-0.7372*x[6]*x[7]*x[11]-0.7343*x[6]*x[9]*x[11]-0.7908*x[6]*x[10]*x[15]-0.6929*x[7]*x[13]*x[15]-0.7672*x[8]*x[12]*x[15]-0.8054*x[11]*x[12]*x[13]-0.8135*x[11]*x[12]*x[14]+0.354*x[1]-0.5276*x[2]-0.6272*x[3]-0.8758*x[4]-0.5727*x[6]-0.8066*x[8]-0.53*x[9]+0.8858*x[11]-0.0148*x[14]+0.3852*x[1]*x[2]*x[3]*x[13]+0.41*x[1]*x[2]*x[4]*x[6]+0.6574*x[1]*x[2]*x[6]*x[7]-0.0089*x[1]*x[2]*x[8]*x[11]+0.6366*x[1]*x[3]*x[6]*x[10]+0.4463*x[1]*x[3]*x[9]*x[11]-0.5569*x[1]*x[3]*x[11]*x[15]+0.4481*x[1]*x[4]*x[5]*x[9]+0.3888*x[1]*x[4]*x[5]*x[13]+0.9753*x[1]*x[4]*x[8]*x[14]+0.0687*x[1]*x[4]*x[11]*x[13]-0.1218*x[1]*x[5]*x[14]*x[15]+0.3536*x[1]*x[6]*x[7]*x[14]-0.5734*x[1]*x[6]*x[9]*x[10]+0.8973*x[1]*x[7]*x[8]*x[14]+0.6989*x[1]*x[7]*x[10]*x[11]+0.5074*x[1]*x[8]*x[11]*x[12]+0.9861*x[1]*x[10]*x[11]*x[12]-0.3969*x[1]*x[11]*x[12]*x[14]+0.6511*x[2]*x[3]*x[9]*x[10]+0.2668*x[2]*x[3]*x[9]*x[12]+0.5786*x[2]*x[4]*x[6]*x[12]+0.1849*x[2]*x[4]*x[6]*x[14]-0.0116*x[2]*x[4]*x[12]*x[14]-0.4053*x[2]*x[5]*x[11]*x[15]+0.346*x[2]*x[6]*x[7]*x[12]+0.6597*x[2]*x[7]*x[9]*x[13]+0.4124*x[2]*x[8]*x[9]*x[12]+0.2918*x[2]*x[9]*x[12]*x[13]-0.2025*x[2]*x[10]*x[11]*x[13]+0.0629*x[3]*x[4]*x[5]*x[6]+0.4118*x[3]*x[4]*x[6]*x[12]+0.15*x[3]*x[4]*x[11]*x[14]+0.7136*x[3]*x[5]*x[8]*x[11]+0.6193*x[3]*x[5]*x[9]*x[13]+0.5472*x[3]*x[5]*x[9]*x[14]+0.2666*x[3]*x[5]*x[10]*x[13]+0.6454*x[3]*x[5]*x[14]*x[15]-0.5641*x[3]*x[6]*x[7]*x[14]+0.9611*x[3]*x[6]*x[8]*x[10]+0.5392*x[3]*x[6]*x[10]*x[12]+0.1237*x[3]*x[6]*x[11]*x[15]+0.4577*x[3]*x[7]*x[10]*x[14]+0.1895*x[3]*x[7]*x[14]*x[15]+0.1954*x[3]*x[8]*x[9]*x[13]-0.3219*x[3]*x[8]*x[9]*x[14]+0.357*x[3]*x[9]*x[11]*x[13]+0.9586*x[3]*x[9]*x[12]*x[13]+0.2114*x[3]*x[10]*x[11]*x[14]+0.159*x[3]*x[11]*x[13]*x[15]+0.7427*x[4]*x[5]*x[6]*x[8]+0.4195*x[4]*x[5]*x[8]*x[13]+0.6579*x[4]*x[5]*x[9]*x[14]+0.5938*x[4]*x[6]*x[9]*x[13]-0.0781*x[4]*x[6]*x[10]*x[11]-0.1674*x[4]*x[6]*x[12]*x[15]+0.4003*x[4]*x[7]*x[9]*x[14]+0.7114*x[4]*x[7]*x[9]*x[15]-0.0967*x[4]*x[7]*x[10]*x[13]+0.9569*x[4]*x[7]*x[11]*x[14]-0.2866*x[4]*x[9]*x[10]*x[13]+0.3273*x[4]*x[10]*x[12]*x[14]+0.0525*x[4]*x[11]*x[12]*x[15]+0.8756*x[4]*x[13]*x[14]*x[15]-0.2037*x[5]*x[6]*x[10]*x[13]-0.5107*x[5]*x[6]*x[10]*x[15]-0.0382*x[5]*x[6]*x[11]*x[12]+0.3839*x[5]*x[6]*x[13]*x[15]+0.6151*x[5]*x[7]*x[8]*x[9]+0.4615*x[5]*x[7]*x[11]*x[12]+0.7456*x[5]*x[7]*x[12]*x[13]-0.4303*x[5]*x[8]*x[11]*x[13]-0.5025*x[5]*x[8]*x[12]*x[15]+0.6888*x[5]*x[9]*x[10]*x[13]-0.561*x[5]*x[10]*x[11]*x[13]+0.8942*x[6]*x[7]*x[8]*x[11]-0.4609*x[6]*x[8]*x[13]*x[15]+0.6633*x[6]*x[9]*x[10]*x[13]-0.0323*x[6]*x[9]*x[10]*x[15]+0.9951*x[6]*x[9]*x[11]*x[15]+0.4699*x[7]*x[8]*x[12]*x[15]-0.3248*x[7]*x[9]*x[10]*x[11]-0.5125*x[7]*x[9]*x[11]*x[12]+0.5489*x[7]*x[10]*x[11]*x[13]+0.8754*x[7]*x[11]*x[12]*x[14]-0.497*x[7]*x[11]*x[13]*x[14]+0.67*x[8]*x[10]*x[11]*x[13]+0.3181*x[9]*x[10]*x[14]*x[15]+0.0993*x[9]*x[11]*x[12]*x[14]-0.5614*x[9]*x[12]*x[13]*x[14]+0.0562*x[3]^3*x[12]+0.3602*x[7]^3*x[14]+0.9986*x[12]^3*x[9]+0.1514*x[12]^3*x[13]-0.2835*x[14]^3*x[9]+0.9819*x[15]^3*x[6]+0.8031*x[3]^2*x[14]^2-0.3494*x[4]^2*x[8]^2-0.2659*x[5]^2*x[10]^2-0.2574*x[6]^2*x[11]^2+(-0.8533*x[4]^2*x[7])-0.5903*x[7]^2*x[2]-0.7085*x[7]^2*x[5]-0.7225*x[7]^2*x[15]-0.6094*x[10]^2*x[2]-0.8145*x[10]^2*x[7]-0.7123*x[12]^2*x[3]-0.722*x[12]^2*x[4]-0.9228*x[14]^2*x[2]+0.8655*x[2]^2*x[3]*x[8]+0.7557*x[2]^2*x[3]*x[9]+0.7005*x[2]^2*x[7]*x[13]+0.3767*x[2]^2*x[11]*x[12]-0.0621*x[3]^2*x[5]*x[9]+0.152*x[3]^2*x[6]*x[11]-0.162*x[3]^2*x[10]*x[11]+0.9871*x[4]^2*x[2]*x[5]+0.7265*x[4]^2*x[2]*x[14]-0.2095*x[4]^2*x[5]*x[11]+0.4096*x[4]^2*x[6]*x[7]+0.7539*x[4]^2*x[6]*x[11]+0.0097*x[4]^2*x[9]*x[14]+0.9973*x[4]^2*x[10]*x[13]+0.0692*x[4]^2*x[11]*x[15]-0.0621*x[5]^2*x[4]*x[7]+0.5162*x[5]^2*x[4]*x[10]+0.1642*x[5]^2*x[13]*x[14]-0.0387*x[6]^2*x[1]*x[2]-0.5768*x[6]^2*x[4]*x[13]+0.401*x[6]^2*x[4]*x[14]+0.6504*x[6]^2*x[5]*x[7]+0.9722*x[6]^2*x[11]*x[14]+0.134*x[7]^2*x[1]*x[15]-0.3698*x[7]^2*x[2]*x[11]+0.3672*x[7]^2*x[3]*x[5]-0.3769*x[8]^2*x[7]*x[9]+0.73*x[8]^2*x[12]*x[13]-0.3382*x[9]^2*x[1]*x[5]+0.6154*x[9]^2*x[2]*x[8]+0.6601*x[9]^2*x[6]*x[11]+0.5537*x[9]^2*x[10]*x[11]+0.3239*x[10]^2*x[1]*x[6]-0.1718*x[10]^2*x[2]*x[3]-0.244*x[10]^2*x[3]*x[6]-0.0184*x[10]^2*x[4]*x[5]-0.3924*x[10]^2*x[5]*x[8]+0.6861*x[10]^2*x[7]*x[14]-0.3179*x[11]^2*x[2]*x[10]+0.8444*x[11]^2*x[4]*x[7]+0.5809*x[11]^2*x[6]*x[7]+0.2912*x[11]^2*x[10]*x[13]-0.1111*x[11]^2*x[10]*x[14]+0.2373*x[11]^2*x[12]*x[14]+0.3345*x[12]^2*x[4]*x[5]+0.2954*x[13]^2*x[4]*x[14]+0.2233*x[14]^2*x[4]*x[9]+0.5532*x[14]^2*x[5]*x[6]+0.0341*x[14]^2*x[5]*x[12]+0.4181*x[14]^2*x[8]*x[10]+0.9799*x[14]^2*x[8]*x[12]-0.5147*x[15]^2*x[5]*x[8]+0.2246*x[15]^2*x[5]*x[9]+0.2374*x[15]^2*x[6]*x[14]+0.1058*x[15]^2*x[11]*x[14])+x[16] == 0.0)
@NLconstraint(m, e2, (-0.9605*x[15]^2)-0.1588*x[15]+(-0.9469*x[1]*x[4])-0.9382*x[5]*x[8]-0.9546*x[7]*x[9]-0.9392*x[8]*x[14]-0.0269*x[1]-0.9638*x[4]+0.4683*x[5]+0.865*x[7]-0.0714*x[8]-0.5196*x[9]+0.185*x[14]+(-0.8219*x[1]*x[6]*x[10])-0.8732*x[1]*x[8]*x[14]-0.8579*x[2]*x[4]*x[5]-0.8641*x[2]*x[6]*x[12]-0.8771*x[2]*x[7]*x[9]-0.9026*x[2]*x[8]*x[12]-0.8757*x[2]*x[8]*x[14]-0.8448*x[2]*x[9]*x[13]-0.8096*x[2]*x[9]*x[14]-0.5954*x[2]*x[11]*x[15]-0.7626*x[3]*x[5]*x[15]-0.7382*x[3]*x[7]*x[10]-0.6058*x[3]*x[8]*x[12]-0.6075*x[3]*x[11]*x[12]-0.8026*x[3]*x[12]*x[14]-0.8873*x[4]*x[5]*x[11]-0.6882*x[4]*x[7]*x[11]-0.8145*x[4]*x[7]*x[12]-0.6044*x[4]*x[10]*x[12]-0.7376*x[6]*x[8]*x[14]-0.875*x[6]*x[9]*x[11]-0.6267*x[6]*x[10]*x[14]-0.847*x[6]*x[11]*x[12]-0.7699*x[6]*x[13]*x[14]-0.6663*x[7]*x[9]*x[12]-0.8504*x[7]*x[10]*x[13]-0.6953*x[7]*x[11]*x[15]-0.8383*x[8]*x[10]*x[14]-0.8293*x[8]*x[11]*x[14]-0.831*x[9]*x[10]*x[11]-0.6047*x[10]*x[13]*x[14]-0.6171*x[12]*x[13]*x[15]+0.5776*x[2]+0.2437*x[3]-0.0524*x[6]+0.2146*x[10]+0.2514*x[11]-0.9667*x[12]-0.328*x[13]+0.194*x[1]*x[2]*x[4]*x[6]+0.7571*x[1]*x[2]*x[5]*x[12]-0.3725*x[1]*x[2]*x[6]*x[13]+0.4455*x[1]*x[2]*x[6]*x[15]+0.4391*x[1]*x[2]*x[7]*x[11]-0.0124*x[1]*x[3]*x[4]*x[5]-0.1368*x[1]*x[3]*x[4]*x[6]+0.8676*x[1]*x[3]*x[6]*x[8]-0.0382*x[1]*x[3]*x[7]*x[13]+0.6372*x[1]*x[3]*x[11]*x[13]+0.1588*x[1]*x[4]*x[5]*x[10]-0.5091*x[1]*x[4]*x[7]*x[8]-0.5261*x[1]*x[4]*x[11]*x[12]+0.1637*x[1]*x[5]*x[6]*x[12]-0.477*x[1]*x[5]*x[8]*x[9]+0.0199*x[1]*x[5]*x[13]*x[14]+0.5444*x[1]*x[6]*x[8]*x[9]-0.482*x[1]*x[7]*x[8]*x[9]-0.1853*x[1]*x[8]*x[12]*x[14]-0.2421*x[1]*x[9]*x[13]*x[15]-0.0586*x[1]*x[11]*x[12]*x[14]+0.9675*x[2]*x[3]*x[5]*x[7]+0.1383*x[2]*x[3]*x[5]*x[11]-0.5697*x[2]*x[3]*x[7]*x[14]+0.3169*x[2]*x[3]*x[9]*x[11]-0.2308*x[2]*x[4]*x[6]*x[8]+0.6045*x[2]*x[4]*x[6]*x[14]+0.0977*x[2]*x[4]*x[7]*x[10]-0.1284*x[2]*x[5]*x[6]*x[9]+0.0308*x[2]*x[5]*x[6]*x[11]-0.3159*x[2]*x[5]*x[6]*x[14]+0.7599*x[2]*x[5]*x[11]*x[13]+0.9781*x[2]*x[5]*x[13]*x[14]+0.0858*x[2]*x[6]*x[7]*x[15]+0.9858*x[2]*x[6]*x[8]*x[14]+0.0953*x[2]*x[6]*x[8]*x[15]-0.5754*x[2]*x[6]*x[10]*x[14]+0.0082*x[2]*x[6]*x[12]*x[14]+0.8851*x[2]*x[7]*x[8]*x[15]-0.3524*x[2]*x[7]*x[11]*x[12]+0.4072*x[2]*x[8]*x[10]*x[15]-0.0592*x[2]*x[11]*x[12]*x[15]+0.9428*x[2]*x[11]*x[14]*x[15]+0.3975*x[3]*x[4]*x[7]*x[9]-0.5016*x[3]*x[4]*x[7]*x[10]-0.0285*x[3]*x[4]*x[7]*x[13]-0.457*x[3]*x[4]*x[9]*x[12]+0.2252*x[3]*x[4]*x[11]*x[12]-0.2571*x[3]*x[5]*x[6]*x[15]-0.4103*x[3]*x[5]*x[8]*x[9]+0.7398*x[3]*x[5]*x[8]*x[10]+0.0755*x[3]*x[6]*x[8]*x[10]-0.1534*x[3]*x[6]*x[9]*x[10]+0.4846*x[3]*x[7]*x[9]*x[11]-0.0513*x[3]*x[8]*x[12]*x[15]+0.0801*x[3]*x[9]*x[11]*x[13]+0.9037*x[3]*x[10]*x[11]*x[14]-0.5013*x[3]*x[12]*x[13]*x[14]-0.4551*x[4]*x[5]*x[7]*x[11]+0.497*x[4]*x[5]*x[10]*x[14]-0.2179*x[4]*x[6]*x[8]*x[10]+0.4567*x[4]*x[6]*x[9]*x[13]-0.0835*x[4]*x[7]*x[8]*x[9]+0.6794*x[4]*x[7]*x[8]*x[12]-0.1981*x[4]*x[7]*x[9]*x[12]+0.9873*x[4]*x[7]*x[10]*x[11]-0.0998*x[4]*x[7]*x[10]*x[15]+0.8915*x[4]*x[8]*x[10]*x[11]+0.146*x[4]*x[8]*x[10]*x[14]+0.6495*x[4]*x[9]*x[12]*x[14]-0.1423*x[4]*x[11]*x[12]*x[14]+0.7882*x[4]*x[11]*x[14]*x[15]-0.3226*x[5]*x[6]*x[8]*x[11]+0.5181*x[5]*x[6]*x[9]*x[15]+0.6425*x[5]*x[6]*x[10]*x[11]+0.7938*x[5]*x[6]*x[12]*x[13]-0.0869*x[5]*x[7]*x[8]*x[11]-0.4784*x[5]*x[8]*x[10]*x[13]+0.4542*x[5]*x[8]*x[12]*x[14]+0.3128*x[5]*x[9]*x[10]*x[14]+0.4693*x[5]*x[10]*x[13]*x[14]+0.843*x[5]*x[10]*x[14]*x[15]-0.1986*x[6]*x[7]*x[9]*x[10]+0.6505*x[6]*x[8]*x[10]*x[14]-0.165*x[6]*x[8]*x[11]*x[14]-0.5365*x[6]*x[9]*x[13]*x[14]-0.4919*x[7]*x[8]*x[10]*x[11]-0.3137*x[7]*x[8]*x[11]*x[12]-0.4232*x[7]*x[9]*x[10]*x[11]+0.6679*x[7]*x[9]*x[12]*x[14]+0.152*x[7]*x[9]*x[12]*x[15]-0.164*x[8]*x[9]*x[10]*x[11]+0.562*x[8]*x[9]*x[12]*x[15]+0.6154*x[8]*x[10]*x[11]*x[13]+0.8049*x[8]*x[11]*x[13]*x[14]+0.9241*x[11]*x[12]*x[14]*x[15]+(-0.2208*x[2]^2*x[11]^2)-0.2623*x[4]^2*x[7]^2+0.5277*x[8]^2*x[13]^2+(-0.933*x[1]^2*x[15])-0.7224*x[4]^2*x[2]-0.6558*x[6]^2*x[11]-0.6371*x[7]^2*x[2]-0.6541*x[7]^2*x[12]-0.8906*x[8]^2*x[15]-0.8696*x[10]^2*x[4]-0.8453*x[11]^2*x[5]+(-0.1156*x[1]^2*x[3]*x[4])-0.1673*x[1]^2*x[8]*x[14]+0.0007*x[1]^2*x[11]*x[15]-0.2081*x[2]^2*x[4]*x[10]+0.7985*x[2]^2*x[7]*x[9]-0.4059*x[2]^2*x[10]*x[15]+0.7822*x[3]^2*x[4]*x[9]-0.322*x[3]^2*x[5]*x[11]+0.9994*x[3]^2*x[6]*x[10]-0.0134*x[3]^2*x[8]*x[9]+0.6435*x[3]^2*x[8]*x[14]-0.1747*x[3]^2*x[8]*x[15]+0.8573*x[3]^2*x[13]*x[15]-0.1383*x[4]^2*x[2]*x[10]+0.8161*x[4]^2*x[5]*x[9]+0.3536*x[4]^2*x[7]*x[8]+0.9792*x[5]^2*x[1]*x[12]+0.6905*x[5]^2*x[4]*x[13]+0.5096*x[5]^2*x[10]*x[15]-0.3318*x[6]^2*x[8]*x[14]-0.131*x[6]^2*x[12]*x[14]+0.5892*x[8]^2*x[5]*x[9]+0.0253*x[8]^2*x[10]*x[11]+0.8211*x[8]^2*x[10]*x[13]+0.6513*x[8]^2*x[11]*x[15]-0.0207*x[9]^2*x[2]*x[5]+0.169*x[9]^2*x[6]*x[12]+0.8517*x[10]^2*x[1]*x[9]+0.4934*x[10]^2*x[2]*x[3]+0.1473*x[10]^2*x[4]*x[5]+0.9317*x[10]^2*x[6]*x[7]-0.4775*x[10]^2*x[8]*x[11]-0.5796*x[11]^2*x[5]*x[8]+0.191*x[11]^2*x[8]*x[15]+0.4385*x[11]^2*x[14]*x[15]+0.0463*x[12]^2*x[1]*x[8]+0.9962*x[12]^2*x[3]*x[4]+0.0008*x[12]^2*x[4]*x[6]+0.3959*x[12]^2*x[6]*x[10]+0.8708*x[12]^2*x[9]*x[10]+0.4163*x[12]^2*x[9]*x[13]-0.2523*x[13]^2*x[2]*x[11]-0.2575*x[13]^2*x[3]*x[9]+0.0742*x[13]^2*x[4]*x[7]+0.2972*x[13]^2*x[4]*x[12]+0.2669*x[13]^2*x[11]*x[12]-0.0513*x[14]^2*x[4]*x[8]+0.2374*x[14]^2*x[6]*x[10]-0.5784*x[14]^2*x[8]*x[13]-0.1374*x[14]^2*x[11]*x[15] <= 18.284)
@NLconstraint(m, e3, (-0.9605*x[15]^2)-0.8811*x[15]+(-0.9752*x[4]*x[14])-0.9389*x[5]*x[6]-0.9741*x[5]*x[13]-0.9695*x[6]*x[15]-0.9594*x[7]*x[10]-0.9485*x[7]*x[13]+0.7113*x[4]-0.14*x[5]+0.1251*x[6]+0.0473*x[7]+0.9708*x[10]-0.1607*x[13]+0.059*x[14]+(-0.784*x[1]*x[6]*x[15])-0.6746*x[1]*x[7]*x[8]-0.7626*x[2]*x[6]*x[8]-0.8854*x[2]*x[8]*x[13]-0.8753*x[2]*x[11]*x[13]-0.6698*x[3]*x[5]*x[8]-0.6241*x[3]*x[9]*x[11]-0.7244*x[3]*x[9]*x[12]-0.6997*x[3]*x[9]*x[13]-0.8335*x[3]*x[10]*x[14]-0.7347*x[4]*x[8]*x[11]-0.9033*x[5]*x[8]*x[12]-0.7809*x[5]*x[9]*x[11]-0.9079*x[5]*x[10]*x[14]-0.6522*x[6]*x[9]*x[10]-0.7161*x[6]*x[13]*x[15]-0.7535*x[7]*x[9]*x[12]-0.7641*x[7]*x[13]*x[14]-0.6102*x[8]*x[10]*x[11]-0.6095*x[8]*x[10]*x[15]-0.9192*x[9]*x[10]*x[12]-0.8797*x[10]*x[11]*x[14]+0.2405*x[1]+0.1433*x[2]+0.402*x[3]-0.5929*x[8]+0.0649*x[9]+0.6177*x[11]+0.5806*x[12]+0.3171*x[1]*x[2]*x[6]*x[14]-0.4047*x[1]*x[2]*x[7]*x[8]+0.5658*x[1]*x[2]*x[9]*x[15]+0.1464*x[1]*x[3]*x[6]*x[15]+0.8807*x[1]*x[3]*x[8]*x[10]-0.3557*x[1]*x[3]*x[11]*x[15]+0.9897*x[1]*x[4]*x[5]*x[13]+0.0948*x[1]*x[4]*x[6]*x[11]+0.1967*x[1]*x[5]*x[7]*x[8]+0.1872*x[1]*x[6]*x[8]*x[13]-0.2619*x[1]*x[6]*x[12]*x[13]-0.3353*x[1]*x[7]*x[13]*x[15]-0.0421*x[1]*x[8]*x[10]*x[15]+0.0265*x[1]*x[8]*x[11]*x[15]+0.0747*x[1]*x[9]*x[11]*x[15]+0.9588*x[2]*x[3]*x[5]*x[13]+0.988*x[2]*x[3]*x[6]*x[10]-0.1502*x[2]*x[3]*x[10]*x[14]+0.6736*x[2]*x[3]*x[10]*x[15]+0.4158*x[2]*x[4]*x[5]*x[7]+0.305*x[2]*x[4]*x[5]*x[8]+0.4074*x[2]*x[4]*x[5]*x[11]+0.6391*x[2]*x[4]*x[7]*x[10]+0.6908*x[2]*x[4]*x[9]*x[11]-0.2001*x[2]*x[4]*x[13]*x[14]-0.3738*x[2]*x[5]*x[8]*x[10]+0.225*x[2]*x[5]*x[8]*x[13]+0.6139*x[2]*x[5]*x[8]*x[14]-0.232*x[2]*x[5]*x[10]*x[13]+0.9342*x[2]*x[5]*x[11]*x[12]+0.2922*x[2]*x[6]*x[8]*x[9]+0.6472*x[2]*x[6]*x[9]*x[13]-0.4036*x[2]*x[6]*x[10]*x[12]+0.8542*x[2]*x[6]*x[10]*x[14]+0.4854*x[2]*x[6]*x[11]*x[13]-0.1203*x[2]*x[7]*x[10]*x[13]-0.0966*x[2]*x[7]*x[11]*x[13]+0.1803*x[2]*x[8]*x[11]*x[12]+0.1173*x[2]*x[9]*x[12]*x[14]-0.4814*x[2]*x[10]*x[12]*x[14]+0.9238*x[2]*x[11]*x[12]*x[14]+0.0294*x[2]*x[11]*x[12]*x[15]+0.2151*x[3]*x[4]*x[5]*x[11]+0.4934*x[3]*x[4]*x[6]*x[14]-0.5275*x[3]*x[4]*x[7]*x[12]+0.3302*x[3]*x[4]*x[7]*x[13]+0.834*x[3]*x[4]*x[8]*x[12]+0.1796*x[3]*x[4]*x[9]*x[13]-0.0434*x[3]*x[5]*x[7]*x[10]+0.8077*x[3]*x[5]*x[8]*x[14]-0.5799*x[3]*x[5]*x[9]*x[11]+0.0133*x[3]*x[5]*x[12]*x[14]-0.3819*x[3]*x[6]*x[10]*x[11]+0.4292*x[3]*x[6]*x[10]*x[12]+0.2013*x[3]*x[6]*x[11]*x[13]+0.8772*x[3]*x[8]*x[14]*x[15]+0.0738*x[3]*x[10]*x[11]*x[14]-0.4263*x[3]*x[11]*x[12]*x[13]+0.8015*x[4]*x[5]*x[7]*x[9]+0.8925*x[4]*x[5]*x[9]*x[11]-0.4958*x[4]*x[5]*x[13]*x[14]+0.9897*x[4]*x[6]*x[7]*x[10]+0.0431*x[4]*x[6]*x[7]*x[14]-0.0455*x[4]*x[6]*x[9]*x[14]+0.3058*x[4]*x[7]*x[8]*x[11]+0.3771*x[4]*x[7]*x[9]*x[11]+0.3458*x[4]*x[7]*x[12]*x[14]-0.3419*x[4]*x[8]*x[11]*x[12]+0.1772*x[4]*x[8]*x[12]*x[13]+0.9391*x[4]*x[10]*x[12]*x[14]+0.0611*x[5]*x[6]*x[9]*x[14]-0.1202*x[5]*x[6]*x[10]*x[12]+0.7518*x[5]*x[6]*x[12]*x[13]+0.1079*x[5]*x[7]*x[8]*x[15]+0.0895*x[5]*x[7]*x[14]*x[15]-0.1993*x[5]*x[8]*x[9]*x[13]+0.3093*x[5]*x[8]*x[10]*x[12]+0.1312*x[5]*x[9]*x[11]*x[14]+0.8105*x[5]*x[10]*x[11]*x[13]+0.2279*x[6]*x[7]*x[8]*x[14]+0.6818*x[6]*x[7]*x[8]*x[15]+0.54*x[6]*x[8]*x[9]*x[10]-0.0127*x[6]*x[8]*x[11]*x[13]+0.0502*x[6]*x[10]*x[11]*x[13]+0.9223*x[6]*x[10]*x[12]*x[13]-0.1661*x[6]*x[10]*x[14]*x[15]+0.7813*x[6]*x[11]*x[12]*x[13]+0.7656*x[7]*x[9]*x[10]*x[11]+0.8133*x[7]*x[9]*x[10]*x[15]+0.4006*x[7]*x[9]*x[12]*x[14]-0.3247*x[7]*x[10]*x[11]*x[13]+0.7189*x[8]*x[9]*x[11]*x[13]+0.4154*x[8]*x[9]*x[11]*x[15]+0.3574*x[8]*x[11]*x[12]*x[13]-0.2301*x[8]*x[11]*x[12]*x[14]+0.6408*x[8]*x[11]*x[13]*x[14]-0.1793*x[9]*x[10]*x[13]*x[14]+0.7083*x[9]*x[11]*x[12]*x[14]+0.1892*x[10]^3*x[2]-0.114*x[3]^3*x[4]+0.4795*x[10]^3*x[5]+0.9841*x[3]^2*x[4]^2+0.2588*x[4]^2*x[12]^2+0.4135*x[5]^2*x[10]^2+(-0.8687*x[2]^2*x[10])-0.8782*x[3]^2*x[2]-0.9086*x[3]^2*x[5]-0.709*x[4]^2*x[3]-0.9108*x[6]^2*x[14]-0.6899*x[6]^2*x[15]-0.7839*x[10]^2*x[6]-0.7789*x[11]^2*x[2]-0.6013*x[14]^2*x[3]+0.6629*x[2]^2*x[9]*x[13]-0.4267*x[1]^2*x[4]*x[6]+0.3394*x[3]^2*x[6]*x[10]-0.1695*x[3]^2*x[7]*x[9]+0.3488*x[3]^2*x[9]*x[12]-0.0644*x[3]^2*x[13]*x[15]-0.5295*x[4]^2*x[1]*x[3]-0.2591*x[4]^2*x[3]*x[9]+0.12*x[4]^2*x[3]*x[11]+0.5881*x[4]^2*x[5]*x[8]-0.3012*x[4]^2*x[6]*x[8]+0.7839*x[5]^2*x[6]*x[7]+0.1448*x[6]^2*x[1]*x[11]+0.8381*x[6]^2*x[2]*x[3]-0.3327*x[6]^2*x[2]*x[8]-0.3099*x[6]^2*x[11]*x[12]+0.5597*x[7]^2*x[1]*x[2]+0.0016*x[7]^2*x[1]*x[5]+0.2286*x[7]^2*x[3]*x[14]+0.7847*x[7]^2*x[6]*x[10]-0.0097*x[7]^2*x[9]*x[10]+0.5813*x[8]^2*x[2]*x[9]+0.3945*x[8]^2*x[2]*x[14]-0.2596*x[8]^2*x[5]*x[13]-0.1965*x[8]^2*x[12]*x[14]+0.4571*x[9]^2*x[2]*x[11]+0.8603*x[9]^2*x[3]*x[14]+0.2775*x[9]^2*x[4]*x[11]+0.1024*x[9]^2*x[5]*x[6]-0.2027*x[9]^2*x[5]*x[11]-0.2744*x[9]^2*x[10]*x[13]+0.8953*x[10]^2*x[3]*x[6]-0.1996*x[10]^2*x[4]*x[12]+0.531*x[10]^2*x[8]*x[11]-0.3237*x[10]^2*x[12]*x[15]+0.1493*x[11]^2*x[1]*x[7]+0.803*x[11]^2*x[5]*x[13]+0.828*x[11]^2*x[6]*x[7]+0.1484*x[11]^2*x[6]*x[10]-0.1486*x[11]^2*x[7]*x[13]-0.1077*x[12]^2*x[4]*x[10]+0.6343*x[12]^2*x[5]*x[13]-0.2172*x[12]^2*x[6]*x[14]+0.8514*x[13]^2*x[3]*x[6]-0.5112*x[13]^2*x[3]*x[8]+0.1597*x[13]^2*x[3]*x[9]+0.3826*x[13]^2*x[4]*x[11]+0.6146*x[14]^2*x[2]*x[6]-0.3321*x[14]^2*x[3]*x[13]+0.3935*x[14]^2*x[4]*x[7]-0.3677*x[14]^2*x[10]*x[11]+0.4973*x[15]^2*x[3]*x[7] <= 27.539)
@NLconstraint(m, e4, 0.0654*x[15]-0.9605*x[15]^2+(-0.9402*x[1]*x[15])-0.9433*x[5]*x[11]-0.9394*x[7]*x[12]-0.9398*x[8]*x[10]-0.9582*x[11]*x[12]-0.1439*x[1]-0.9404*x[5]-0.4892*x[7]-0.8809*x[8]-0.5909*x[10]+0.8432*x[11]+0.4261*x[12]+(-0.6488*x[1]*x[6]*x[8])-0.769*x[1]*x[7]*x[14]-0.9103*x[1]*x[9]*x[11]-0.789*x[2]*x[4]*x[14]-0.82*x[2]*x[5]*x[6]-0.7606*x[2]*x[5]*x[13]-0.6933*x[2]*x[6]*x[15]-0.6164*x[2]*x[8]*x[10]-0.723*x[3]*x[4]*x[13]-0.8802*x[3]*x[6]*x[8]-0.7493*x[3]*x[6]*x[12]-0.842*x[3]*x[10]*x[11]-0.6195*x[3]*x[11]*x[13]-0.919*x[3]*x[12]*x[13]-0.6313*x[4]*x[6]*x[15]-0.8729*x[4]*x[13]*x[14]-0.8966*x[5]*x[9]*x[10]-0.7388*x[6]*x[9]*x[11]-0.7416*x[6]*x[10]*x[12]-0.7576*x[7]*x[8]*x[15]-0.6549*x[9]*x[10]*x[11]-0.6729*x[10]*x[12]*x[13]-0.1023*x[2]+0.4527*x[3]-0.9526*x[4]-0.4876*x[6]+0.5844*x[9]-0.7159*x[13]+0.6584*x[14]+0.7318*x[1]*x[2]*x[3]*x[13]-0.2119*x[1]*x[2]*x[3]*x[8]-0.4441*x[1]*x[2]*x[6]*x[7]-0.147*x[1]*x[2]*x[7]*x[14]+0.0322*x[1]*x[3]*x[4]*x[13]+0.2282*x[1]*x[3]*x[6]*x[11]+0.8903*x[1]*x[3]*x[9]*x[12]+0.3018*x[1]*x[3]*x[11]*x[15]+0.6566*x[1]*x[4]*x[7]*x[9]-0.2369*x[1]*x[4]*x[11]*x[15]-0.2626*x[1]*x[5]*x[6]*x[8]+0.8088*x[1]*x[5]*x[7]*x[14]+0.1705*x[1]*x[5]*x[8]*x[11]+0.623*x[1]*x[5]*x[13]*x[15]-0.4571*x[1]*x[7]*x[8]*x[11]+0.0598*x[1]*x[8]*x[14]*x[15]-0.1947*x[2]*x[3]*x[4]*x[13]-0.3491*x[2]*x[3]*x[5]*x[11]+0.2328*x[2]*x[3]*x[7]*x[8]+0.3731*x[2]*x[3]*x[7]*x[15]+0.7973*x[2]*x[3]*x[8]*x[10]+0.8846*x[2]*x[3]*x[8]*x[14]+0.3748*x[2]*x[3]*x[9]*x[14]-0.0695*x[2]*x[3]*x[11]*x[12]+0.9029*x[2]*x[3]*x[11]*x[13]-0.0071*x[2]*x[3]*x[12]*x[14]-0.3145*x[2]*x[3]*x[12]*x[15]-0.2986*x[2]*x[4]*x[7]*x[8]-0.4666*x[2]*x[4]*x[7]*x[9]+0.256*x[2]*x[4]*x[8]*x[12]-0.1372*x[2]*x[4]*x[10]*x[15]+0.8057*x[2]*x[5]*x[13]*x[14]-0.021*x[2]*x[6]*x[7]*x[8]-0.3842*x[2]*x[6]*x[7]*x[12]+0.9914*x[2]*x[6]*x[7]*x[14]+0.2792*x[2]*x[6]*x[8]*x[13]+0.3442*x[2]*x[6]*x[9]*x[14]+0.4864*x[2]*x[6]*x[11]*x[13]+0.5099*x[2]*x[7]*x[11]*x[13]-0.1976*x[2]*x[8]*x[10]*x[13]+0.7695*x[2]*x[9]*x[11]*x[12]-0.2946*x[3]*x[4]*x[6]*x[11]+0.008*x[3]*x[4]*x[6]*x[14]-0.2455*x[3]*x[4]*x[7]*x[9]-0.5453*x[3]*x[4]*x[9]*x[12]-0.5742*x[3]*x[4]*x[10]*x[13]+0.3256*x[3]*x[6]*x[9]*x[15]-0.3282*x[3]*x[6]*x[10]*x[13]+0.3769*x[3]*x[6]*x[11]*x[14]+0.4549*x[3]*x[7]*x[8]*x[13]+0.2846*x[3]*x[7]*x[10]*x[13]-0.13*x[3]*x[7]*x[10]*x[15]-0.244*x[3]*x[7]*x[11]*x[13]+0.4058*x[3]*x[8]*x[10]*x[14]+0.8112*x[3]*x[9]*x[12]*x[13]+0.6998*x[3]*x[9]*x[13]*x[14]-0.3681*x[3]*x[11]*x[12]*x[14]+0.3216*x[3]*x[12]*x[14]*x[15]+0.7289*x[4]*x[5]*x[6]*x[9]+0.9815*x[4]*x[5]*x[6]*x[13]+0.3971*x[4]*x[5]*x[6]*x[14]+0.2669*x[4]*x[6]*x[7]*x[10]-0.2048*x[4]*x[6]*x[7]*x[11]+0.326*x[4]*x[6]*x[7]*x[14]-0.3534*x[4]*x[7]*x[8]*x[9]+0.5277*x[4]*x[7]*x[8]*x[13]-0.2321*x[4]*x[7]*x[10]*x[14]+0.0203*x[4]*x[7]*x[13]*x[14]-0.3678*x[4]*x[8]*x[9]*x[10]-0.5534*x[4]*x[8]*x[9]*x[13]-0.3467*x[4]*x[8]*x[11]*x[12]-0.5737*x[4]*x[9]*x[10]*x[13]-0.117*x[5]*x[6]*x[10]*x[14]+0.5843*x[5]*x[6]*x[11]*x[12]+0.6143*x[5]*x[7]*x[8]*x[9]+0.3989*x[5]*x[7]*x[12]*x[13]+0.5071*x[5]*x[8]*x[13]*x[14]+0.5142*x[5]*x[9]*x[12]*x[13]+0.6858*x[5]*x[12]*x[13]*x[14]+0.255*x[6]*x[7]*x[9]*x[13]-0.2425*x[6]*x[8]*x[9]*x[13]+0.5675*x[6]*x[8]*x[10]*x[14]+0.0963*x[6]*x[8]*x[12]*x[15]-0.5345*x[6]*x[9]*x[10]*x[14]-0.0916*x[6]*x[9]*x[11]*x[12]+0.3282*x[6]*x[9]*x[13]*x[14]+0.7007*x[6]*x[10]*x[11]*x[13]+0.8267*x[7]*x[9]*x[10]*x[13]-0.556*x[7]*x[10]*x[11]*x[13]+0.5494*x[7]*x[10]*x[12]*x[13]+0.3609*x[7]*x[10]*x[13]*x[14]-0.5577*x[7]*x[11]*x[12]*x[14]+0.1693*x[7]*x[13]*x[14]*x[15]-0.0035*x[8]*x[9]*x[12]*x[14]+0.3384*x[8]*x[10]*x[14]*x[15]+0.4229*x[8]*x[11]*x[14]*x[15]-0.3261*x[9]*x[11]*x[13]*x[15]+0.4885*x[9]*x[12]*x[14]*x[15]-0.3909*x[9]*x[13]*x[14]*x[15]+0.4656*x[3]^3*x[1]+0.5075*x[3]^3*x[6]+0.2074*x[8]^3*x[13]+0.6098*x[5]^2*x[13]^2+0.9107*x[9]^2*x[12]^2+(-0.8295*x[2]^2*x[4])-0.6817*x[2]^2*x[12]-0.6553*x[6]^2*x[9]-0.83*x[14]^2*x[4]+0.2517*x[1]^2*x[6]*x[7]+0.4415*x[2]^2*x[1]*x[7]+0.064*x[2]^2*x[3]*x[10]+0.9667*x[2]^2*x[4]*x[6]+0.6431*x[2]^2*x[5]*x[11]+0.1216*x[2]^2*x[7]*x[10]+0.7614*x[2]^2*x[8]*x[9]+0.9889*x[2]^2*x[10]*x[13]-0.4469*x[3]^2*x[5]*x[13]+0.4655*x[4]^2*x[3]*x[6]+0.6279*x[4]^2*x[3]*x[9]-0.2114*x[4]^2*x[7]*x[10]-0.4531*x[5]^2*x[3]*x[10]-0.0832*x[5]^2*x[4]*x[9]+0.3677*x[5]^2*x[4]*x[10]+0.7644*x[5]^2*x[6]*x[9]-0.3337*x[5]^2*x[7]*x[11]-0.5709*x[5]^2*x[8]*x[14]+0.2589*x[5]^2*x[9]*x[13]+0.1586*x[6]^2*x[11]*x[12]-0.3467*x[7]^2*x[2]*x[11]-0.1137*x[7]^2*x[4]*x[10]+0.0518*x[8]^2*x[2]*x[6]-0.3827*x[8]^2*x[11]*x[14]+0.3641*x[9]^2*x[1]*x[8]-0.2872*x[9]^2*x[2]*x[7]+0.5367*x[9]^2*x[2]*x[13]+0.531*x[9]^2*x[3]*x[14]+0.8253*x[9]^2*x[4]*x[14]+0.7748*x[9]^2*x[5]*x[11]+0.1474*x[9]^2*x[6]*x[10]-0.299*x[9]^2*x[8]*x[14]-0.5344*x[9]^2*x[10]*x[15]-0.456*x[9]^2*x[11]*x[13]+0.6215*x[10]^2*x[2]*x[13]+0.4038*x[10]^2*x[3]*x[12]-0.4416*x[10]^2*x[9]*x[15]+0.6883*x[11]^2*x[2]*x[10]+0.3243*x[11]^2*x[3]*x[9]-0.4475*x[11]^2*x[4]*x[7]+0.5783*x[11]^2*x[4]*x[10]-0.3684*x[11]^2*x[7]*x[13]+0.6829*x[12]^2*x[2]*x[4]+0.4531*x[12]^2*x[3]*x[4]+0.5801*x[12]^2*x[4]*x[13]-0.0479*x[12]^2*x[7]*x[15]+0.2956*x[13]^2*x[1]*x[2]+0.5879*x[13]^2*x[1]*x[10]+0.9969*x[13]^2*x[6]*x[9]+0.6231*x[13]^2*x[6]*x[11]-0.0405*x[13]^2*x[8]*x[11]-0.4937*x[13]^2*x[8]*x[15]-0.4895*x[14]^2*x[3]*x[5]+0.3068*x[14]^2*x[5]*x[10]+0.9983*x[14]^2*x[5]*x[13]-0.5191*x[14]^2*x[8]*x[10]-0.2285*x[14]^2*x[8]*x[12]+0.6721*x[15]^2*x[7]*x[14] <= 98.578)


# ----- Objective ----- #
@objective(m, Min, x[16])
m = m 		 # model get returned when including this script. 
