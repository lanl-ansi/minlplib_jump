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
@NLconstraint(m, e1, -(-0.9752*x[4]*x[14]-0.9389*x[5]*x[6]-0.9741*x[5]*x[13]-0.9699*x[6]*x[11]-0.9695*x[6]*x[15]-0.9594*x[7]*x[10]-0.9485*x[7]*x[13]-0.985*x[11]*x[15]+0.9204*x[4]-0.1743*x[5]+0.2405*x[6]+0.1433*x[7]-0.14*x[10]+0.1251*x[11]-0.5929*x[13]+0.0649*x[14]+0.9708*x[15]+(-0.784*x[1]*x[6]*x[15])-0.6746*x[1]*x[7]*x[8]-0.7626*x[2]*x[6]*x[8]-0.8753*x[2]*x[11]*x[13]-0.6698*x[3]*x[5]*x[8]-0.6241*x[3]*x[9]*x[11]-0.7244*x[3]*x[9]*x[12]-0.6997*x[3]*x[9]*x[13]-0.8335*x[3]*x[10]*x[14]-0.7347*x[4]*x[8]*x[11]-0.7753*x[5]*x[8]*x[12]-0.7809*x[5]*x[9]*x[11]-0.9079*x[5]*x[10]*x[14]-0.6522*x[6]*x[9]*x[10]-0.6343*x[6]*x[10]*x[13]-0.7161*x[6]*x[13]*x[15]-0.893*x[7]*x[9]*x[10]-0.7535*x[7]*x[9]*x[12]-0.7641*x[7]*x[13]*x[14]-0.6102*x[8]*x[10]*x[11]-0.6095*x[8]*x[10]*x[15]-0.9033*x[8]*x[11]*x[13]-0.9192*x[9]*x[10]*x[12]-0.8797*x[10]*x[11]*x[14]-0.6117*x[11]*x[13]*x[14]+0.2286*x[1]-0.0991*x[2]-0.7218*x[3]+0.402*x[8]+0.7113*x[9]+0.0473*x[12]+0.3171*x[1]*x[2]*x[6]*x[14]-0.4047*x[1]*x[2]*x[7]*x[8]+0.5658*x[1]*x[2]*x[9]*x[15]+0.1464*x[1]*x[3]*x[6]*x[15]+0.8807*x[1]*x[3]*x[8]*x[10]+0.9897*x[1]*x[4]*x[5]*x[13]+0.0948*x[1]*x[4]*x[6]*x[11]+0.1967*x[1]*x[5]*x[7]*x[8]+0.1872*x[1]*x[6]*x[8]*x[13]+0.497*x[1]*x[6]*x[11]*x[13]+0.5281*x[1]*x[6]*x[11]*x[15]-0.2619*x[1]*x[6]*x[12]*x[13]-0.3353*x[1]*x[7]*x[13]*x[15]-0.0421*x[1]*x[8]*x[10]*x[15]+0.0747*x[1]*x[9]*x[11]*x[15]-0.2066*x[2]*x[3]*x[5]*x[7]+0.9588*x[2]*x[3]*x[5]*x[13]+0.988*x[2]*x[3]*x[6]*x[10]-0.2957*x[2]*x[3]*x[10]*x[11]-0.1502*x[2]*x[3]*x[10]*x[14]+0.6736*x[2]*x[3]*x[10]*x[15]+0.4158*x[2]*x[4]*x[5]*x[7]+0.305*x[2]*x[4]*x[5]*x[8]+0.0498*x[2]*x[4]*x[5]*x[10]+0.4074*x[2]*x[4]*x[5]*x[11]+0.6391*x[2]*x[4]*x[7]*x[10]+0.6908*x[2]*x[4]*x[9]*x[11]-0.2001*x[2]*x[4]*x[13]*x[14]-0.3738*x[2]*x[5]*x[8]*x[10]+0.225*x[2]*x[5]*x[8]*x[13]-0.232*x[2]*x[5]*x[10]*x[13]+0.9342*x[2]*x[5]*x[11]*x[12]+0.2922*x[2]*x[6]*x[8]*x[9]+0.6472*x[2]*x[6]*x[9]*x[13]-0.4036*x[2]*x[6]*x[10]*x[12]+0.2841*x[2]*x[6]*x[10]*x[14]+0.4854*x[2]*x[6]*x[11]*x[13]-0.0966*x[2]*x[7]*x[11]*x[13]+0.1803*x[2]*x[8]*x[11]*x[12]+0.1173*x[2]*x[9]*x[12]*x[14]-0.4814*x[2]*x[10]*x[12]*x[14]+0.9238*x[2]*x[11]*x[12]*x[14]+0.0294*x[2]*x[11]*x[12]*x[15]+0.4934*x[3]*x[4]*x[6]*x[14]-0.5275*x[3]*x[4]*x[7]*x[12]+0.3302*x[3]*x[4]*x[7]*x[13]+0.834*x[3]*x[4]*x[8]*x[12]+0.1796*x[3]*x[4]*x[9]*x[13]-0.0434*x[3]*x[5]*x[7]*x[10]+0.8077*x[3]*x[5]*x[8]*x[14]-0.5799*x[3]*x[5]*x[9]*x[11]+0.0133*x[3]*x[5]*x[12]*x[14]+0.498*x[3]*x[6]*x[9]*x[10]+0.4292*x[3]*x[6]*x[10]*x[12]+0.2013*x[3]*x[6]*x[11]*x[13]+0.8772*x[3]*x[8]*x[14]*x[15]+0.0738*x[3]*x[10]*x[11]*x[14]-0.4263*x[3]*x[11]*x[12]*x[13]+0.8015*x[4]*x[5]*x[7]*x[9]+0.8925*x[4]*x[5]*x[9]*x[11]+0.9897*x[4]*x[6]*x[7]*x[10]+0.0431*x[4]*x[6]*x[7]*x[14]-0.0455*x[4]*x[6]*x[9]*x[14]+0.3058*x[4]*x[7]*x[8]*x[11]+0.3771*x[4]*x[7]*x[9]*x[11]+0.3458*x[4]*x[7]*x[12]*x[14]-0.3419*x[4]*x[8]*x[11]*x[12]+0.7091*x[4]*x[9]*x[11]*x[13]+0.9391*x[4]*x[10]*x[12]*x[14]+0.0611*x[5]*x[6]*x[9]*x[14]-0.1202*x[5]*x[6]*x[10]*x[12]+0.1079*x[5]*x[7]*x[8]*x[15]+0.0895*x[5]*x[7]*x[14]*x[15]-0.1993*x[5]*x[8]*x[9]*x[13]+0.3093*x[5]*x[8]*x[10]*x[12]+0.1312*x[5]*x[9]*x[11]*x[14]+0.2279*x[6]*x[7]*x[8]*x[14]+0.6818*x[6]*x[7]*x[8]*x[15]+0.54*x[6]*x[8]*x[9]*x[10]-0.0127*x[6]*x[8]*x[11]*x[13]+0.9223*x[6]*x[10]*x[12]*x[13]-0.1661*x[6]*x[10]*x[14]*x[15]+0.7813*x[6]*x[11]*x[12]*x[13]+0.7656*x[7]*x[9]*x[10]*x[11]+0.8133*x[7]*x[9]*x[10]*x[15]+0.4641*x[7]*x[9]*x[11]*x[14]-0.3247*x[7]*x[10]*x[11]*x[13]+0.7189*x[8]*x[9]*x[11]*x[13]+0.4154*x[8]*x[9]*x[11]*x[15]+0.511*x[8]*x[9]*x[12]*x[14]+0.3574*x[8]*x[11]*x[12]*x[13]-0.2301*x[8]*x[11]*x[12]*x[14]+0.6408*x[8]*x[11]*x[13]*x[14]-0.1793*x[9]*x[10]*x[13]*x[14]+0.1892*x[10]^3*x[2]+0.4795*x[10]^3*x[5]+0.9841*x[3]^2*x[4]^2+0.2588*x[4]^2*x[12]^2+0.4135*x[5]^2*x[10]^2+(-0.8687*x[2]^2*x[10])-0.8782*x[3]^2*x[2]-0.709*x[4]^2*x[3]-0.9108*x[6]^2*x[14]-0.6899*x[6]^2*x[15]-0.7231*x[7]^2*x[13]-0.7839*x[10]^2*x[6]-0.6013*x[14]^2*x[3]-0.7141*x[14]^2*x[11]+0.6629*x[2]^2*x[9]*x[13]-0.4267*x[1]^2*x[4]*x[6]-0.5173*x[3]^2*x[4]*x[6]+0.3394*x[3]^2*x[6]*x[10]-0.1695*x[3]^2*x[7]*x[9]-0.2316*x[3]^2*x[7]*x[10]+0.3488*x[3]^2*x[9]*x[12]-0.0644*x[3]^2*x[13]*x[15]-0.5295*x[4]^2*x[1]*x[3]+0.12*x[4]^2*x[3]*x[11]+0.5881*x[4]^2*x[5]*x[8]-0.3012*x[4]^2*x[6]*x[8]+0.82*x[5]^2*x[2]*x[14]+0.7839*x[5]^2*x[6]*x[7]+0.296*x[5]^2*x[6]*x[13]+0.8381*x[6]^2*x[2]*x[3]-0.3327*x[6]^2*x[2]*x[8]-0.3099*x[6]^2*x[11]*x[12]+0.5597*x[7]^2*x[1]*x[2]+0.0016*x[7]^2*x[1]*x[5]-0.0097*x[7]^2*x[9]*x[10]+0.5813*x[8]^2*x[2]*x[9]+0.3945*x[8]^2*x[2]*x[14]-0.5798*x[8]^2*x[3]*x[9]-0.2596*x[8]^2*x[5]*x[13]-0.1965*x[8]^2*x[12]*x[14]+0.4571*x[9]^2*x[2]*x[11]+0.8603*x[9]^2*x[3]*x[14]+0.2775*x[9]^2*x[4]*x[11]+0.1024*x[9]^2*x[5]*x[6]-0.2027*x[9]^2*x[5]*x[11]-0.2744*x[9]^2*x[10]*x[13]-0.1996*x[10]^2*x[4]*x[12]+0.531*x[10]^2*x[8]*x[11]-0.3237*x[10]^2*x[12]*x[15]+0.803*x[11]^2*x[5]*x[13]+0.828*x[11]^2*x[6]*x[7]+0.1484*x[11]^2*x[6]*x[10]-0.1486*x[11]^2*x[7]*x[13]-0.1077*x[12]^2*x[4]*x[10]+0.6343*x[12]^2*x[5]*x[13]-0.2172*x[12]^2*x[6]*x[14]-0.4928*x[13]^2*x[2]*x[12]+0.8514*x[13]^2*x[3]*x[6]-0.5112*x[13]^2*x[3]*x[8]+0.1597*x[13]^2*x[3]*x[9]+0.3826*x[13]^2*x[4]*x[11]+0.6146*x[14]^2*x[2]*x[6]-0.3321*x[14]^2*x[3]*x[13]+0.3935*x[14]^2*x[4]*x[7]-0.3677*x[14]^2*x[10]*x[11]+0.4973*x[15]^2*x[3]*x[7])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])
m = m 		 # model get returned when including this script. 
