using JuMP

m = Model();srand(12283919);

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.1 + 0.1*rand())
setlowerbound(x[9], 0.1 + 0.1*rand())
setlowerbound(x[1], 0.1 + 0.1*rand())
setlowerbound(x[7], 0.1 + 0.1*rand())
setlowerbound(x[8], 0.1 + 0.1*rand())
setlowerbound(x[4], 0.1 + 0.1*rand())
setlowerbound(x[2], 0.1 + 0.1*rand())
setlowerbound(x[6], 0.1 + 0.1*rand())
setlowerbound(x[10], 0.1 + 0.1*rand())
setlowerbound(x[3], 0.1 + 0.1*rand())
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.9857*x[4]^3-0.2976*x[4]+0.9744*x[7]-0.4667*x[7]^2+0.4136*x[8]-0.3518*x[8]^3+(-0.7781*x[9]^3)-0.234*x[9]+(-0.3627*x[1]*x[2])-0.963*x[1]*x[5]+0.9326*x[1]*x[7]-0.4708*x[1]*x[8]-0.279*x[1]*x[9]-0.0166*x[1]*x[10]+0.1276*x[2]*x[3]-0.7226*x[2]*x[5]+0.4141*x[2]*x[6]+0.5254*x[2]*x[7]+0.4246*x[2]*x[10]+0.8001*x[3]*x[4]-0.0356*x[3]*x[5]-0.551*x[3]*x[6]-0.7105*x[3]*x[7]+0.8349*x[3]*x[8]-0.0814*x[3]*x[9]-0.064*x[4]*x[5]-0.6417*x[4]*x[6]-0.5465*x[4]*x[7]-0.4118*x[4]*x[8]+0.4991*x[4]*x[9]-0.3208*x[4]*x[10]+0.8738*x[5]*x[6]+0.0379*x[5]*x[8]+0.1163*x[5]*x[9]+0.5895*x[5]*x[10]+0.3188*x[6]*x[7]-0.0892*x[6]*x[8]+0.8593*x[6]*x[9]-0.961*x[7]*x[8]+0.4953*x[7]*x[9]+0.7604*x[7]*x[10]-0.3482*x[8]*x[9]-0.7386*x[8]*x[10]-0.7924*x[9]*x[10]-0.8531*x[1]-0.9739*x[2]-0.1594*x[3]-0.366*x[5]-0.7101*x[6]+0.8367*x[10]+0.4157*x[1]^2*x[3]+0.2285*x[1]^2*x[4]-0.7942*x[1]^2*x[5]-0.6614*x[2]^2*x[3]-0.6566*x[2]^2*x[4]+0.9617*x[2]^2*x[5]-0.5521*x[2]^2*x[6]-0.8538*x[2]^2*x[7]-0.7786*x[2]^2*x[8]-0.0247*x[2]^2*x[9]+0.9497*x[2]^2*x[10]+0.8058*x[3]^2*x[2]-0.8497*x[3]^2*x[4]-0.6512*x[3]^2*x[5]+0.4493*x[3]^2*x[6]+0.5808*x[3]^2*x[8]-0.214*x[3]^2*x[9]+0.4701*x[4]^2*x[5]+0.3949*x[4]^2*x[6]+0.6486*x[4]^2*x[7]-0.7613*x[4]^2*x[8]+0.377*x[4]^2*x[9]-0.245*x[4]^2*x[10]+0.9208*x[5]^2*x[1]-0.245*x[5]^2*x[2]+0.7899*x[5]^2*x[4]-0.3762*x[5]^2*x[7]+0.4792*x[5]^2*x[8]-0.6016*x[5]^2*x[9]+0.0179*x[5]^2*x[10]-0.0651*x[6]^2*x[1]+0.2723*x[6]^2*x[2]-0.8874*x[6]^2*x[3]+0.3582*x[6]^2*x[4]+0.516*x[6]^2*x[7]-0.174*x[6]^2*x[8]+0.2297*x[7]^2*x[1]+0.8623*x[7]^2*x[2]+0.8247*x[7]^2*x[3]+0.988*x[7]^2*x[4]-0.0371*x[7]^2*x[5]+0.1625*x[7]^2*x[6]+0.5158*x[7]^2*x[8]-0.5451*x[7]^2*x[9]+0.8449*x[8]^2*x[1]+0.6685*x[8]^2*x[3]-0.2856*x[8]^2*x[5]-0.2267*x[8]^2*x[6]-0.7341*x[8]^2*x[9]-0.5748*x[9]^2*x[2]-0.4164*x[9]^2*x[3]+0.6217*x[9]^2*x[4]-0.2451*x[9]^2*x[5]-0.6614*x[9]^2*x[6]+0.8335*x[9]^2*x[7]-0.2336*x[9]^2*x[8]+0.3488*x[9]^2*x[10]+0.5168*x[1]*x[2]*x[4]-0.1843*x[1]*x[2]*x[3]-0.0882*x[1]*x[2]*x[5]+0.0633*x[1]*x[2]*x[6]+0.993*x[1]*x[2]*x[8]+0.6188*x[1]*x[2]*x[9]-0.7264*x[1]*x[2]*x[10]-0.0312*x[1]*x[3]*x[4]-0.944*x[1]*x[3]*x[6]+0.5401*x[1]*x[3]*x[7]-0.9975*x[1]*x[3]*x[8]-0.0874*x[1]*x[3]*x[10]-0.9536*x[1]*x[4]*x[5]-0.7972*x[1]*x[4]*x[6]-0.5649*x[1]*x[4]*x[8]-0.2983*x[1]*x[4]*x[9]-0.5434*x[1]*x[4]*x[10]+0.3969*x[1]*x[5]*x[6]+0.2013*x[1]*x[5]*x[7]+0.2282*x[1]*x[5]*x[9]-0.8738*x[1]*x[5]*x[10]-0.9536*x[1]*x[6]*x[7]+0.1839*x[1]*x[6]*x[9]-0.7727*x[1]*x[7]*x[8]+0.5354*x[1]*x[7]*x[9]-0.6481*x[1]*x[8]*x[9]+0.4285*x[1]*x[8]*x[10]+0.6705*x[1]*x[9]*x[10]-0.5689*x[2]*x[3]*x[4]+0.084*x[2]*x[3]*x[5]+0.6665*x[2]*x[3]*x[6]+0.0261*x[2]*x[3]*x[7]-0.9323*x[2]*x[3]*x[8]-0.7063*x[2]*x[3]*x[9]+0.2261*x[2]*x[3]*x[10]-0.5829*x[2]*x[4]*x[5]-0.0802*x[2]*x[4]*x[6]+0.4167*x[2]*x[4]*x[7]-0.1408*x[2]*x[4]*x[8]+0.7672*x[2]*x[4]*x[9]+0.5959*x[2]*x[4]*x[10]+0.9048*x[2]*x[5]*x[6]+0.1285*x[2]*x[5]*x[7]+0.7916*x[2]*x[5]*x[8]+0.4371*x[2]*x[5]*x[9]-0.4506*x[2]*x[6]*x[7]-0.4667*x[2]*x[6]*x[8]-0.5216*x[2]*x[7]*x[8]-0.5734*x[2]*x[7]*x[9]+0.68*x[2]*x[7]*x[10]-0.1875*x[2]*x[8]*x[9]+0.9071*x[2]*x[8]*x[10]-0.1369*x[2]*x[9]*x[10]+0.264*x[3]*x[4]*x[5]-0.0232*x[3]*x[4]*x[6]+0.9299*x[3]*x[4]*x[7]-0.8062*x[3]*x[4]*x[8]+0.1724*x[3]*x[4]*x[9]+0.8557*x[3]*x[4]*x[10]+0.4278*x[3]*x[5]*x[6]+0.6371*x[3]*x[5]*x[7]+0.0103*x[3]*x[5]*x[8]+0.8639*x[3]*x[5]*x[9]+0.7444*x[3]*x[5]*x[10]+0.895*x[3]*x[6]*x[7]+0.1597*x[3]*x[6]*x[8]-0.6371*x[3]*x[6]*x[9]+0.7212*x[3]*x[6]*x[10]+0.2338*x[3]*x[7]*x[8]-0.6759*x[3]*x[7]*x[9]+0.1894*x[3]*x[7]*x[10]+0.9939*x[3]*x[8]*x[9]+0.9625*x[3]*x[9]*x[10]+0.9438*x[4]*x[5]*x[6]+0.9376*x[4]*x[5]*x[7]+0.2375*x[4]*x[5]*x[8]-0.9114*x[4]*x[5]*x[9]+0.7633*x[4]*x[6]*x[7]-0.7818*x[4]*x[6]*x[8]-0.2509*x[4]*x[6]*x[9]+0.6192*x[4]*x[6]*x[10]-0.6223*x[4]*x[7]*x[8]-0.792*x[4]*x[7]*x[9]-0.2287*x[4]*x[7]*x[10]+0.2652*x[4]*x[8]*x[9]-0.0055*x[4]*x[9]*x[10]+0.9559*x[5]*x[6]*x[7]+0.255*x[5]*x[6]*x[8]+0.5449*x[5]*x[6]*x[9]+0.7072*x[5]*x[7]*x[8]+0.0543*x[5]*x[7]*x[9]+0.5968*x[5]*x[8]*x[9]-0.0584*x[5]*x[8]*x[10]+0.9503*x[5]*x[9]*x[10]+0.2141*x[6]*x[7]*x[8]+0.6684*x[6]*x[7]*x[9]+0.5999*x[6]*x[8]*x[9]-0.2699*x[6]*x[8]*x[10]+0.1318*x[6]*x[9]*x[10]-0.3541*x[7]*x[8]*x[9]+0.9756*x[7]*x[9]*x[10]-0.8699*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.7911*x[2]-0.6459*x[2]^3+0.4998*x[3]^2+0.2941*x[3]+0.8443*x[5]-0.3958*x[5]^2+0.4732*x[6]^2-0.049*x[6]+0.4939*x[7]^3-0.2111*x[7]^2-0.31*x[7]+0.0438*x[8]^2-0.5438*x[8]+(-0.2491*x[9]^3)-0.424*x[9]+0.8303*x[1]*x[2]-0.43*x[1]*x[5]+0.6206*x[1]*x[6]+0.2034*x[1]*x[7]+0.7032*x[1]*x[8]+0.7752*x[1]*x[9]-0.132*x[1]*x[10]+0.6398*x[2]*x[3]-0.3362*x[2]*x[4]-0.7438*x[2]*x[5]-0.9056*x[2]*x[7]-0.1544*x[2]*x[8]+0.9116*x[2]*x[9]-0.0031*x[2]*x[10]-0.861*x[3]*x[4]-0.8927*x[3]*x[5]-0.9155*x[3]*x[8]-0.4241*x[3]*x[9]+0.4169*x[3]*x[10]+0.6998*x[4]*x[6]+0.8654*x[4]*x[7]+0.1884*x[4]*x[8]+0.9817*x[4]*x[9]+0.3587*x[4]*x[10]+0.1369*x[5]*x[7]-0.8952*x[5]*x[8]+0.4895*x[5]*x[9]+0.148*x[5]*x[10]+0.0724*x[6]*x[7]-0.4755*x[6]*x[8]+0.0395*x[6]*x[9]+0.7769*x[7]*x[8]+0.3212*x[7]*x[9]-0.3163*x[7]*x[10]+0.1183*x[1]+0.7091*x[4]+0.5869*x[10]+0.9729*x[1]^2*x[9]+0.3494*x[1]^2*x[10]-0.3498*x[2]^2*x[3]-0.3424*x[2]^2*x[4]+0.6118*x[2]^2*x[5]-0.6053*x[2]^2*x[6]+0.2384*x[2]^2*x[7]-0.1081*x[2]^2*x[8]+0.5155*x[2]^2*x[9]-0.6097*x[2]^2*x[10]-0.7367*x[3]^2*x[1]-0.5368*x[3]^2*x[2]+0.6942*x[3]^2*x[4]-0.558*x[3]^2*x[5]+0.642*x[3]^2*x[7]-0.5091*x[3]^2*x[8]+0.9899*x[3]^2*x[9]+0.9952*x[4]^2*x[1]+0.7706*x[4]^2*x[2]-0.6902*x[4]^2*x[3]+0.3156*x[4]^2*x[5]+0.5366*x[4]^2*x[8]+0.8347*x[4]^2*x[9]+0.999*x[5]^2*x[2]+0.7764*x[5]^2*x[4]-0.78*x[5]^2*x[6]-0.5713*x[5]^2*x[7]-0.6298*x[5]^2*x[8]-0.351*x[5]^2*x[9]-0.5038*x[5]^2*x[10]+0.3648*x[6]^2*x[1]+0.6113*x[6]^2*x[2]+0.2762*x[6]^2*x[3]+0.8722*x[6]^2*x[4]-0.9091*x[6]^2*x[5]-0.92*x[6]^2*x[7]-0.6358*x[6]^2*x[8]+0.6532*x[6]^2*x[9]+0.2659*x[7]^2*x[3]-0.7805*x[7]^2*x[4]-0.6083*x[7]^2*x[5]+0.5019*x[7]^2*x[6]-0.7302*x[7]^2*x[8]+0.7752*x[7]^2*x[9]+0.2885*x[8]^2*x[2]+0.7713*x[8]^2*x[3]+0.1696*x[8]^2*x[6]-0.0018*x[8]^2*x[7]-0.1368*x[8]^2*x[9]-0.1809*x[8]^2*x[10]-0.5933*x[9]^2*x[2]+0.9689*x[9]^2*x[4]+0.7463*x[9]^2*x[6]+0.5675*x[9]^2*x[7]+0.589*x[9]^2*x[10]+0.3823*x[10]^2*x[2]+0.3281*x[1]*x[2]*x[4]-0.9903*x[1]*x[2]*x[3]+0.3724*x[1]*x[2]*x[6]-0.6514*x[1]*x[2]*x[7]+0.941*x[1]*x[2]*x[8]-0.0226*x[1]*x[2]*x[9]+0.1689*x[1]*x[2]*x[10]+0.4948*x[1]*x[3]*x[4]-0.4984*x[1]*x[3]*x[6]+0.6526*x[1]*x[3]*x[7]-0.8404*x[1]*x[3]*x[9]+0.781*x[1]*x[3]*x[10]+0.3006*x[1]*x[4]*x[5]+0.3832*x[1]*x[4]*x[6]+0.1831*x[1]*x[4]*x[8]+0.8572*x[1]*x[4]*x[9]-0.7016*x[1]*x[4]*x[10]-0.6425*x[1]*x[5]*x[7]+0.5421*x[1]*x[5]*x[8]+0.4943*x[1]*x[5]*x[9]+0.1532*x[1]*x[5]*x[10]+0.11*x[1]*x[6]*x[7]-0.362*x[1]*x[6]*x[8]-0.4699*x[1]*x[6]*x[9]+0.6887*x[1]*x[7]*x[8]+0.665*x[1]*x[7]*x[9]+0.1641*x[1]*x[7]*x[10]+0.561*x[2]*x[3]*x[4]+0.8003*x[2]*x[3]*x[5]-0.9903*x[2]*x[3]*x[6]-0.7156*x[2]*x[3]*x[7]+0.5167*x[2]*x[3]*x[8]-0.7171*x[2]*x[3]*x[9]+0.8083*x[2]*x[3]*x[10]-0.7302*x[2]*x[4]*x[5]+0.7473*x[2]*x[4]*x[6]+0.6669*x[2]*x[4]*x[7]-0.4491*x[2]*x[4]*x[8]-0.6519*x[2]*x[4]*x[9]+0.6845*x[2]*x[4]*x[10]+0.9447*x[2]*x[5]*x[6]+0.2258*x[2]*x[5]*x[7]-0.598*x[2]*x[5]*x[8]+0.579*x[2]*x[5]*x[9]+0.5801*x[2]*x[5]*x[10]-0.7107*x[2]*x[6]*x[7]+0.3746*x[2]*x[6]*x[8]+0.7675*x[2]*x[6]*x[9]-0.5186*x[2]*x[7]*x[8]-0.7908*x[2]*x[7]*x[9]+0.709*x[2]*x[7]*x[10]-0.5382*x[2]*x[8]*x[9]+0.8165*x[2]*x[8]*x[10]-0.6019*x[3]*x[4]*x[5]+0.0004*x[3]*x[4]*x[6]-0.9303*x[3]*x[4]*x[7]-0.8519*x[3]*x[4]*x[8]-0.7709*x[3]*x[4]*x[9]+0.8421*x[3]*x[4]*x[10]-0.439*x[3]*x[5]*x[6]+0.1324*x[3]*x[5]*x[7]+0.7686*x[3]*x[5]*x[8]+0.4243*x[3]*x[5]*x[9]-0.482*x[3]*x[6]*x[7]+0.662*x[3]*x[6]*x[8]+0.748*x[3]*x[6]*x[9]+0.4124*x[3]*x[6]*x[10]-0.7518*x[3]*x[7]*x[8]+0.9574*x[3]*x[7]*x[9]+0.36*x[3]*x[7]*x[10]-0.0665*x[3]*x[8]*x[9]-0.14*x[3]*x[8]*x[10]-0.8538*x[3]*x[9]*x[10]-0.4303*x[4]*x[5]*x[6]-0.5538*x[4]*x[5]*x[7]-0.6473*x[4]*x[5]*x[8]+0.4462*x[4]*x[5]*x[9]+0.1499*x[4]*x[5]*x[10]-0.2648*x[4]*x[6]*x[7]+0.2402*x[4]*x[6]*x[8]-0.4745*x[4]*x[6]*x[9]+0.8241*x[4]*x[6]*x[10]+0.0149*x[4]*x[7]*x[8]+0.4981*x[4]*x[7]*x[9]+0.8353*x[4]*x[7]*x[10]-0.0054*x[4]*x[8]*x[9]+0.0462*x[4]*x[8]*x[10]-0.5567*x[4]*x[9]*x[10]-0.2197*x[5]*x[6]*x[7]+0.0935*x[5]*x[6]*x[8]-0.5772*x[5]*x[6]*x[9]-0.9857*x[5]*x[6]*x[10]-0.5268*x[5]*x[7]*x[8]-0.132*x[5]*x[7]*x[9]+0.1861*x[5]*x[7]*x[10]+0.3377*x[5]*x[8]*x[9]-0.6333*x[5]*x[8]*x[10]-0.1622*x[5]*x[9]*x[10]-0.6175*x[6]*x[7]*x[8]-0.4351*x[6]*x[7]*x[9]-0.232*x[6]*x[8]*x[9]-0.5227*x[6]*x[8]*x[10]-0.5375*x[6]*x[9]*x[10]-0.9565*x[7]*x[8]*x[9]-0.7021*x[7]*x[8]*x[10] <= 79.559)
@NLconstraint(m, e3, 0.9631*x[2]^3-0.2538*x[2]^2-0.8491*x[2]+0.6338*x[4]-0.7349*x[4]^2+0.0906*x[5]^2+0.9436*x[5]+0.0811*x[6]^3+0.7725*x[6]^2+0.1596*x[6]+0.3186*x[8]^2-0.0513*x[8]^3+0.2117*x[8]+(-0.9608*x[1]*x[2])-0.3593*x[1]*x[3]+0.7864*x[1]*x[9]+0.2165*x[2]*x[3]+0.2975*x[2]*x[4]+0.8353*x[2]*x[5]+0.0182*x[2]*x[6]+0.559*x[2]*x[7]+0.8824*x[2]*x[8]-0.7018*x[2]*x[9]+0.5589*x[3]*x[4]+0.3794*x[3]*x[5]-0.0928*x[3]*x[6]-0.9085*x[3]*x[7]+0.1155*x[3]*x[8]+0.4725*x[3]*x[9]-0.1162*x[3]*x[10]-0.6341*x[4]*x[5]-0.5701*x[4]*x[6]-0.9295*x[4]*x[7]-0.4442*x[4]*x[8]+0.714*x[4]*x[9]-0.9604*x[4]*x[10]+0.3052*x[5]*x[7]-0.4323*x[5]*x[8]-0.6704*x[5]*x[9]-0.0946*x[5]*x[10]+0.0563*x[6]*x[7]-0.2747*x[6]*x[8]-0.3787*x[6]*x[9]+0.337*x[6]*x[10]-0.6928*x[7]*x[8]-0.2335*x[7]*x[9]-0.7523*x[7]*x[10]+0.6947*x[8]*x[10]-0.4399*x[1]-0.5646*x[3]+0.2337*x[7]-0.3998*x[9]+0.0196*x[10]+0.8868*x[1]^2*x[2]+0.991*x[1]^2*x[10]+0.0933*x[2]^2*x[3]+0.9821*x[2]^2*x[4]+0.8355*x[2]^2*x[6]-0.448*x[2]^2*x[7]+0.7281*x[2]^2*x[9]+0.4772*x[2]^2*x[10]+0.5676*x[3]^2*x[2]-0.0417*x[3]^2*x[4]+0.9124*x[3]^2*x[5]+0.1676*x[3]^2*x[6]-0.6482*x[3]^2*x[7]-0.9521*x[3]^2*x[8]-0.4814*x[3]^2*x[9]+0.0971*x[3]^2*x[10]+0.8228*x[4]^2*x[1]-0.6051*x[4]^2*x[2]+0.0015*x[4]^2*x[5]-0.6375*x[4]^2*x[7]+0.2641*x[4]^2*x[8]+0.3354*x[4]^2*x[9]+0.639*x[5]^2*x[2]-0.8859*x[5]^2*x[6]-0.1037*x[5]^2*x[8]+0.0866*x[5]^2*x[9]+0.1672*x[6]^2*x[1]-0.4604*x[6]^2*x[2]+0.0276*x[6]^2*x[3]+0.0223*x[6]^2*x[4]+0.1408*x[6]^2*x[5]+0.6223*x[6]^2*x[7]+0.0892*x[6]^2*x[8]-0.2799*x[6]^2*x[9]+0.7128*x[6]^2*x[10]+0.5509*x[7]^2*x[2]+0.9454*x[7]^2*x[3]-0.4956*x[7]^2*x[4]+0.2519*x[7]^2*x[5]+0.1401*x[7]^2*x[6]-0.3678*x[7]^2*x[9]-0.8564*x[7]^2*x[10]+0.7989*x[8]^2*x[1]+0.5576*x[8]^2*x[2]+0.9537*x[8]^2*x[5]+0.413*x[8]^2*x[6]+0.8766*x[8]^2*x[9]+0.0703*x[9]^2*x[2]-0.3298*x[9]^2*x[3]+0.2422*x[9]^2*x[4]-0.6695*x[9]^2*x[6]-0.9211*x[9]^2*x[7]+0.3459*x[9]^2*x[10]-0.7999*x[10]^2*x[1]+0.3751*x[10]^2*x[8]+0.4436*x[1]*x[2]*x[5]-0.5497*x[1]*x[2]*x[3]+0.2582*x[1]*x[2]*x[6]-0.2823*x[1]*x[2]*x[7]+0.1484*x[1]*x[2]*x[8]+0.5632*x[1]*x[2]*x[9]-0.339*x[1]*x[2]*x[10]-0.2352*x[1]*x[3]*x[4]-0.5106*x[1]*x[3]*x[5]+0.2721*x[1]*x[3]*x[6]+0.0979*x[1]*x[3]*x[7]+0.1188*x[1]*x[3]*x[8]-0.3261*x[1]*x[3]*x[9]+0.6155*x[1]*x[3]*x[10]-0.5031*x[1]*x[4]*x[5]+0.3942*x[1]*x[4]*x[6]+0.2691*x[1]*x[5]*x[8]-0.3177*x[1]*x[5]*x[10]+0.9723*x[1]*x[6]*x[7]-0.7555*x[1]*x[6]*x[8]+0.1609*x[1]*x[6]*x[9]-0.0659*x[1]*x[6]*x[10]-0.6887*x[1]*x[7]*x[9]-0.7917*x[1]*x[7]*x[10]-0.2819*x[1]*x[8]*x[10]+0.2524*x[1]*x[9]*x[10]+0.7613*x[2]*x[3]*x[4]+0.8042*x[2]*x[3]*x[5]+0.0973*x[2]*x[3]*x[6]+0.0874*x[2]*x[3]*x[7]-0.6642*x[2]*x[3]*x[8]+0.1157*x[2]*x[3]*x[9]-0.9645*x[2]*x[3]*x[10]+0.985*x[2]*x[4]*x[5]-0.3978*x[2]*x[4]*x[6]-0.7086*x[2]*x[4]*x[7]-0.4858*x[2]*x[4]*x[8]+0.5543*x[2]*x[4]*x[9]-0.6953*x[2]*x[4]*x[10]-0.0967*x[2]*x[5]*x[6]-0.0644*x[2]*x[5]*x[7]-0.8288*x[2]*x[5]*x[8]+0.9722*x[2]*x[5]*x[9]+0.8122*x[2]*x[5]*x[10]+0.8539*x[2]*x[6]*x[7]-0.6677*x[2]*x[6]*x[8]+0.526*x[2]*x[6]*x[9]+0.5119*x[2]*x[6]*x[10]-0.8222*x[2]*x[7]*x[8]+0.633*x[2]*x[7]*x[9]+0.4796*x[2]*x[7]*x[10]-0.9663*x[2]*x[8]*x[9]+0.4073*x[2]*x[8]*x[10]+0.5476*x[2]*x[9]*x[10]-0.9533*x[3]*x[4]*x[5]-0.6687*x[3]*x[4]*x[6]+0.3881*x[3]*x[4]*x[8]-0.859*x[3]*x[4]*x[9]+0.9838*x[3]*x[4]*x[10]-0.1123*x[3]*x[5]*x[6]+0.9178*x[3]*x[5]*x[7]+0.8168*x[3]*x[5]*x[8]-0.3204*x[3]*x[5]*x[9]-0.8669*x[3]*x[5]*x[10]-0.6135*x[3]*x[6]*x[7]-0.1293*x[3]*x[6]*x[8]+0.2126*x[3]*x[6]*x[9]+0.7404*x[3]*x[6]*x[10]-0.4736*x[3]*x[7]*x[8]-0.0027*x[3]*x[7]*x[9]+0.6759*x[3]*x[7]*x[10]+0.2717*x[3]*x[8]*x[9]+0.5833*x[3]*x[8]*x[10]+0.0261*x[4]*x[5]*x[6]+0.5288*x[4]*x[5]*x[7]+0.617*x[4]*x[5]*x[8]-0.7663*x[4]*x[5]*x[9]-0.7651*x[4]*x[6]*x[7]-0.2911*x[4]*x[6]*x[8]+0.2002*x[4]*x[6]*x[9]-0.3257*x[4]*x[6]*x[10]+0.2189*x[4]*x[7]*x[8]+0.8865*x[4]*x[7]*x[9]-0.1674*x[4]*x[7]*x[10]+0.1911*x[4]*x[8]*x[10]-0.3667*x[4]*x[9]*x[10]+0.5469*x[5]*x[6]*x[7]-0.3314*x[5]*x[6]*x[8]+0.8327*x[5]*x[6]*x[9]-0.6557*x[5]*x[7]*x[8]-0.5176*x[5]*x[7]*x[9]+0.6497*x[5]*x[7]*x[10]+0.2539*x[5]*x[8]*x[9]+0.4655*x[5]*x[9]*x[10]-0.413*x[6]*x[7]*x[8]-0.5131*x[6]*x[7]*x[9]+0.1549*x[6]*x[8]*x[9]-0.4706*x[6]*x[8]*x[10]+0.2938*x[6]*x[9]*x[10]+0.4722*x[7]*x[8]*x[9]+0.659*x[7]*x[8]*x[10]-0.3866*x[7]*x[9]*x[10]-0.9037*x[8]*x[9]*x[10] <= 64.604)
@NLconstraint(m, e4, 0.2346*x[2]^2+0.9996*x[2]+0.8725*x[5]^3-0.9827*x[5]+0.7082*x[6]^3-0.1757*x[6]+(-0.622*x[7]^3)-0.5701*x[7]+0.0965*x[8]^2-0.4353*x[8]^3-0.9195*x[8]+(-0.1756*x[9]^2)-0.9425*x[9]+0.3426*x[1]*x[3]-0.7307*x[1]*x[2]+0.9278*x[1]*x[5]+0.0169*x[1]*x[6]-0.3977*x[1]*x[7]-0.6411*x[1]*x[9]-0.0653*x[2]*x[3]+0.2506*x[2]*x[4]+0.9945*x[2]*x[5]-0.7622*x[2]*x[6]-0.8816*x[2]*x[7]+0.1422*x[2]*x[8]+0.6732*x[2]*x[10]-0.5714*x[3]*x[4]+0.6161*x[3]*x[5]+0.5475*x[3]*x[6]+0.523*x[3]*x[7]-0.9639*x[3]*x[8]+0.1864*x[3]*x[9]+0.8556*x[4]*x[5]-0.8951*x[4]*x[6]+0.8651*x[4]*x[7]-0.3638*x[4]*x[8]+0.9072*x[4]*x[9]+0.4776*x[5]*x[6]-0.2894*x[5]*x[7]-0.394*x[5]*x[8]+0.2722*x[5]*x[9]+0.2651*x[6]*x[8]+0.4597*x[6]*x[9]+0.9796*x[7]*x[8]+0.6017*x[7]*x[9]+0.9702*x[7]*x[10]+0.1515*x[8]*x[9]-0.0227*x[8]*x[10]-0.2642*x[9]*x[10]+0.9447*x[1]+0.8168*x[3]+0.0737*x[4]-0.1915*x[10]+0.5978*x[1]^2*x[3]+0.8106*x[1]^2*x[5]+0.8243*x[1]^2*x[6]+0.1254*x[1]^2*x[9]+0.5896*x[2]^2*x[1]-0.9324*x[2]^2*x[3]+0.7689*x[2]^2*x[4]+0.2601*x[2]^2*x[5]-0.2977*x[2]^2*x[6]+0.9234*x[2]^2*x[7]+0.5831*x[2]^2*x[9]-0.414*x[3]^2*x[1]-0.4157*x[3]^2*x[4]-0.707*x[3]^2*x[5]+0.704*x[3]^2*x[6]-0.7129*x[3]^2*x[7]+0.0829*x[3]^2*x[8]+0.2681*x[3]^2*x[9]+0.5266*x[4]^2*x[2]-0.9332*x[4]^2*x[3]+0.144*x[4]^2*x[5]+0.8676*x[4]^2*x[6]-0.8494*x[4]^2*x[8]-0.7481*x[4]^2*x[9]+0.6314*x[4]^2*x[10]-0.3744*x[5]^2*x[1]-0.6327*x[5]^2*x[2]+0.3443*x[5]^2*x[4]-0.5892*x[5]^2*x[6]-0.1272*x[5]^2*x[7]-0.1749*x[5]^2*x[8]-0.2731*x[6]^2*x[2]+0.4718*x[6]^2*x[3]+0.3408*x[6]^2*x[4]+0.9849*x[6]^2*x[5]+0.0979*x[6]^2*x[7]+0.5867*x[6]^2*x[8]-0.9763*x[6]^2*x[9]-0.0744*x[6]^2*x[10]+0.4409*x[7]^2*x[3]-0.7356*x[7]^2*x[4]-0.6838*x[7]^2*x[5]+0.925*x[7]^2*x[6]-0.601*x[7]^2*x[8]+0.8378*x[7]^2*x[9]+0.0058*x[7]^2*x[10]+0.8016*x[8]^2*x[1]+0.2611*x[8]^2*x[2]+0.143*x[8]^2*x[3]+0.3819*x[8]^2*x[4]-0.213*x[8]^2*x[5]+0.7511*x[8]^2*x[6]-0.7805*x[8]^2*x[7]+0.8954*x[8]^2*x[9]+0.7535*x[8]^2*x[10]-0.9107*x[9]^2*x[1]+0.8335*x[9]^2*x[2]-0.9238*x[9]^2*x[4]-0.7046*x[9]^2*x[6]-0.4027*x[9]^2*x[7]+0.3283*x[9]^2*x[8]-0.9895*x[9]^2*x[10]-0.774*x[10]^2*x[2]-0.4886*x[10]^2*x[5]-0.4074*x[10]^2*x[6]+0.5662*x[1]*x[2]*x[5]-0.3701*x[1]*x[2]*x[6]-0.8416*x[1]*x[2]*x[7]+0.7765*x[1]*x[2]*x[8]-0.8052*x[1]*x[2]*x[9]-0.0634*x[1]*x[2]*x[10]-0.3299*x[1]*x[3]*x[4]-0.8858*x[1]*x[3]*x[5]+0.8769*x[1]*x[3]*x[6]-0.5517*x[1]*x[3]*x[7]+0.5603*x[1]*x[3]*x[9]-0.4004*x[1]*x[3]*x[10]-0.1842*x[1]*x[4]*x[6]+0.7656*x[1]*x[4]*x[7]-0.4549*x[1]*x[4]*x[9]-0.8405*x[1]*x[5]*x[6]+0.2986*x[1]*x[5]*x[8]+0.4855*x[1]*x[5]*x[9]+0.1612*x[1]*x[6]*x[8]+0.2856*x[1]*x[7]*x[9]+0.453*x[1]*x[8]*x[9]-0.4218*x[2]*x[3]*x[4]+0.5407*x[2]*x[3]*x[5]+0.9364*x[2]*x[3]*x[6]-0.9789*x[2]*x[3]*x[7]+0.0141*x[2]*x[3]*x[8]+0.0108*x[2]*x[3]*x[9]-0.7313*x[2]*x[3]*x[10]+0.5331*x[2]*x[4]*x[5]+0.3942*x[2]*x[4]*x[6]-0.134*x[2]*x[4]*x[7]+0.7702*x[2]*x[4]*x[8]+0.6126*x[2]*x[4]*x[9]-0.7078*x[2]*x[4]*x[10]-0.3199*x[2]*x[5]*x[6]+0.1985*x[2]*x[5]*x[7]+0.1525*x[2]*x[5]*x[8]+0.2664*x[2]*x[5]*x[9]+0.0003*x[2]*x[5]*x[10]-0.462*x[2]*x[6]*x[7]+0.0287*x[2]*x[6]*x[8]+0.9507*x[2]*x[6]*x[9]-0.3708*x[2]*x[6]*x[10]+0.5218*x[2]*x[7]*x[8]+0.2256*x[2]*x[7]*x[9]-0.6703*x[2]*x[7]*x[10]-0.0073*x[2]*x[8]*x[9]+0.5282*x[2]*x[8]*x[10]+0.7503*x[2]*x[9]*x[10]+0.9087*x[3]*x[4]*x[5]-0.6923*x[3]*x[4]*x[6]-0.5146*x[3]*x[4]*x[7]-0.3488*x[3]*x[4]*x[8]+0.0515*x[3]*x[4]*x[9]-0.2954*x[3]*x[4]*x[10]+0.3353*x[3]*x[5]*x[6]+0.3087*x[3]*x[5]*x[8]-0.5707*x[3]*x[5]*x[9]-0.3039*x[3]*x[5]*x[10]-0.5868*x[3]*x[6]*x[7]+0.3362*x[3]*x[6]*x[8]-0.1028*x[3]*x[6]*x[9]+0.4577*x[3]*x[6]*x[10]-0.5148*x[3]*x[7]*x[8]-0.247*x[3]*x[7]*x[9]-0.5577*x[3]*x[8]*x[9]-0.318*x[3]*x[8]*x[10]+0.842*x[3]*x[9]*x[10]+0.4505*x[4]*x[5]*x[6]+0.9804*x[4]*x[5]*x[7]+0.8258*x[4]*x[5]*x[8]+0.395*x[4]*x[5]*x[9]+0.3322*x[4]*x[6]*x[7]-0.0241*x[4]*x[6]*x[8]+0.7801*x[4]*x[6]*x[9]-0.296*x[4]*x[6]*x[10]+0.696*x[4]*x[7]*x[9]+0.8223*x[4]*x[8]*x[9]+0.1201*x[4]*x[8]*x[10]-0.1042*x[5]*x[6]*x[7]+0.4049*x[5]*x[6]*x[8]+0.9057*x[5]*x[6]*x[9]+0.1833*x[5]*x[6]*x[10]-0.5997*x[5]*x[7]*x[8]+0.8789*x[5]*x[7]*x[9]+0.8705*x[5]*x[7]*x[10]-0.4865*x[5]*x[9]*x[10]-0.6533*x[6]*x[7]*x[8]-0.2904*x[6]*x[7]*x[9]+0.2409*x[6]*x[7]*x[10]+0.7476*x[6]*x[8]*x[9]-0.4604*x[6]*x[8]*x[10]+0.84*x[7]*x[8]*x[9]+0.4568*x[7]*x[9]*x[10]+0.4429*x[8]*x[9]*x[10] <= 72.351)
@NLconstraint(m, e5, 0.7608*x[2]-0.4462*x[2]^3+(-0.65*x[3]^2)-0.9201*x[3]+0.1996*x[4]^3+0.49*x[4]+(-0.6815*x[5]^3)-0.0534*x[5]^2-0.4448*x[5]+0.9254*x[6]^2-0.3594*x[6]+0.1345*x[8]^2+0.5704*x[8]+0.7376*x[9]^2-0.676*x[9]+(-0.5426*x[1]*x[3])-0.595*x[1]*x[4]+0.2126*x[2]*x[3]+0.1984*x[2]*x[6]-0.4809*x[2]*x[7]+0.7427*x[2]*x[8]+0.2996*x[2]*x[9]+0.6017*x[2]*x[10]+0.9706*x[3]*x[5]-0.782*x[3]*x[6]-0.8218*x[3]*x[7]+0.8715*x[3]*x[8]-0.0266*x[3]*x[9]+0.8696*x[3]*x[10]+0.7861*x[4]*x[5]+0.5632*x[4]*x[7]-0.3734*x[4]*x[8]+0.2434*x[4]*x[9]+0.1099*x[5]*x[6]+0.1627*x[5]*x[7]+0.5459*x[5]*x[8]-0.3914*x[5]*x[9]+0.1836*x[5]*x[10]-0.5475*x[6]*x[7]-0.2217*x[6]*x[8]-0.2492*x[6]*x[9]-0.4284*x[6]*x[10]-0.3514*x[7]*x[8]-0.288*x[7]*x[9]+0.1617*x[7]*x[10]-0.463*x[1]+0.4059*x[7]+0.7807*x[10]+0.9228*x[2]^2*x[1]-0.7243*x[1]^2*x[9]+0.947*x[2]^2*x[3]+0.4199*x[2]^2*x[4]+0.6431*x[2]^2*x[5]+0.3515*x[2]^2*x[6]+0.4432*x[2]^2*x[7]-0.6258*x[2]^2*x[9]-0.8204*x[2]^2*x[10]-0.1535*x[3]^2*x[1]+0.6099*x[3]^2*x[2]-0.0629*x[3]^2*x[4]-0.1531*x[3]^2*x[5]+0.4834*x[3]^2*x[6]-0.8105*x[3]^2*x[7]-0.2958*x[3]^2*x[8]+0.754*x[3]^2*x[9]+0.1808*x[3]^2*x[10]-0.9666*x[4]^2*x[2]-0.0628*x[4]^2*x[3]+0.1872*x[4]^2*x[5]-0.9376*x[4]^2*x[7]+0.9176*x[4]^2*x[8]-0.3671*x[4]^2*x[9]+0.0436*x[5]^2*x[2]+0.622*x[5]^2*x[3]+0.6994*x[5]^2*x[4]-0.0604*x[5]^2*x[6]+0.2671*x[5]^2*x[8]+0.3444*x[5]^2*x[10]+0.522*x[6]^2*x[1]-0.1369*x[6]^2*x[2]+0.4672*x[6]^2*x[3]-0.8163*x[6]^2*x[4]+0.2513*x[6]^2*x[5]-0.9151*x[6]^2*x[8]-0.3973*x[6]^2*x[10]-0.8575*x[7]^2*x[2]-0.1724*x[7]^2*x[3]+0.8837*x[7]^2*x[4]-0.5348*x[7]^2*x[6]-0.9003*x[7]^2*x[8]+0.9475*x[7]^2*x[9]-0.6291*x[8]^2*x[2]-0.6688*x[8]^2*x[4]-0.9617*x[8]^2*x[5]-0.4706*x[9]^2*x[2]-0.0689*x[9]^2*x[3]-0.8291*x[9]^2*x[4]-0.2488*x[9]^2*x[5]+0.7655*x[9]^2*x[6]+0.5043*x[9]^2*x[8]+0.4713*x[9]^2*x[10]+0.3624*x[10]^2*x[2]+0.4945*x[10]^2*x[6]-0.7696*x[10]^2*x[7]-0.8127*x[10]^2*x[9]+(-0.3709*x[1]*x[2]*x[3])-0.3528*x[1]*x[2]*x[4]-0.537*x[1]*x[2]*x[5]+0.9799*x[1]*x[2]*x[7]-0.4987*x[1]*x[2]*x[8]+0.1953*x[1]*x[2]*x[10]+0.2536*x[1]*x[3]*x[4]-0.7776*x[1]*x[3]*x[5]-0.8481*x[1]*x[3]*x[7]+0.0928*x[1]*x[3]*x[9]+0.1671*x[1]*x[4]*x[5]+0.2188*x[1]*x[4]*x[6]+0.7239*x[1]*x[4]*x[7]-0.2583*x[1]*x[4]*x[9]+0.6024*x[1]*x[4]*x[10]+0.0357*x[1]*x[5]*x[6]+0.6292*x[1]*x[5]*x[7]+0.7909*x[1]*x[5]*x[8]-0.4525*x[1]*x[5]*x[9]+0.7559*x[1]*x[5]*x[10]-0.4351*x[1]*x[6]*x[7]+0.0698*x[1]*x[6]*x[9]+0.6377*x[1]*x[6]*x[10]+0.2057*x[1]*x[7]*x[10]-0.6676*x[1]*x[8]*x[9]-0.6902*x[2]*x[3]*x[4]+0.4219*x[2]*x[3]*x[5]-0.5071*x[2]*x[3]*x[6]+0.8289*x[2]*x[3]*x[7]-0.7241*x[2]*x[3]*x[8]+0.3364*x[2]*x[3]*x[9]+0.0486*x[2]*x[4]*x[5]+0.7867*x[2]*x[4]*x[6]+0.5022*x[2]*x[4]*x[7]+0.1596*x[2]*x[4]*x[8]-0.0401*x[2]*x[4]*x[9]+0.8672*x[2]*x[4]*x[10]-0.1628*x[2]*x[5]*x[6]-0.0287*x[2]*x[5]*x[7]+0.0047*x[2]*x[5]*x[8]-0.4227*x[2]*x[5]*x[9]+0.8895*x[2]*x[5]*x[10]+0.1666*x[2]*x[6]*x[7]-0.2362*x[2]*x[6]*x[8]+0.3636*x[2]*x[6]*x[9]-0.4771*x[2]*x[6]*x[10]-0.3496*x[2]*x[7]*x[9]+0.2701*x[2]*x[7]*x[10]+0.7418*x[2]*x[8]*x[9]-0.2997*x[2]*x[8]*x[10]-0.9824*x[2]*x[9]*x[10]-0.7711*x[3]*x[4]*x[5]-0.6913*x[3]*x[4]*x[6]+0.3991*x[3]*x[4]*x[7]+0.4238*x[3]*x[4]*x[8]-0.7504*x[3]*x[4]*x[9]+0.2862*x[3]*x[5]*x[6]-0.974*x[3]*x[5]*x[7]-0.9361*x[3]*x[5]*x[8]-0.3911*x[3]*x[5]*x[9]+0.2827*x[3]*x[5]*x[10]+0.4752*x[3]*x[6]*x[7]-0.8059*x[3]*x[6]*x[8]-0.795*x[3]*x[6]*x[9]-0.6571*x[3]*x[6]*x[10]-0.6029*x[3]*x[7]*x[8]-0.9978*x[3]*x[7]*x[9]+0.1912*x[3]*x[7]*x[10]+0.6231*x[3]*x[8]*x[9]-0.4809*x[3]*x[8]*x[10]-0.7165*x[3]*x[9]*x[10]+0.1009*x[4]*x[5]*x[6]+0.2354*x[4]*x[5]*x[7]-0.9483*x[4]*x[5]*x[8]-0.062*x[4]*x[5]*x[9]+0.7829*x[4]*x[6]*x[7]-0.7965*x[4]*x[6]*x[8]-0.1096*x[4]*x[6]*x[9]+0.4175*x[4]*x[6]*x[10]+0.0883*x[4]*x[7]*x[8]-0.9038*x[4]*x[7]*x[9]-0.5729*x[4]*x[7]*x[10]-0.7923*x[4]*x[8]*x[9]-0.6378*x[4]*x[8]*x[10]-0.9909*x[4]*x[9]*x[10]+0.5607*x[5]*x[6]*x[7]-0.3294*x[5]*x[6]*x[8]-0.909*x[5]*x[6]*x[9]-0.6116*x[5]*x[7]*x[8]-0.278*x[5]*x[7]*x[9]-0.3646*x[5]*x[7]*x[10]-0.1812*x[5]*x[8]*x[9]+0.31*x[5]*x[8]*x[10]+0.2506*x[5]*x[9]*x[10]-0.6093*x[6]*x[7]*x[8]+0.0656*x[6]*x[7]*x[9]+0.6209*x[6]*x[7]*x[10]+0.9611*x[6]*x[8]*x[9]-0.964*x[6]*x[8]*x[10]-0.0094*x[6]*x[9]*x[10]+0.8253*x[7]*x[8]*x[9]+0.4191*x[7]*x[8]*x[10]-0.2367*x[7]*x[9]*x[10]-0.3183*x[8]*x[9]*x[10] <= 51.407)
@NLconstraint(m, e6, 0.6538*x[1]^2+0.2604*x[1]+0.3412*x[2]^2-0.6941*x[2]^3+0.7821*x[2]+(-0.9685*x[4]^3)-0.1207*x[4]+0.8784*x[5]^2+0.9434*x[5]+(-0.9756*x[6]^2)-0.2464*x[6]+(-0.9244*x[8]^3)-0.4721*x[8]^2+0.9929*x[8]+(-0.9808*x[9]^2)-0.2119*x[9]+0.2282*x[1]*x[3]-0.5036*x[1]*x[2]+0.1151*x[1]*x[4]+0.4349*x[1]*x[5]-0.3539*x[1]*x[6]-0.3471*x[1]*x[8]-0.3646*x[1]*x[9]+0.2675*x[2]*x[3]+0.8312*x[2]*x[4]+0.8381*x[2]*x[5]+0.5349*x[2]*x[6]+0.1922*x[2]*x[7]-0.0681*x[2]*x[8]+0.3155*x[2]*x[9]+0.5495*x[2]*x[10]-0.0268*x[3]*x[4]+0.7376*x[3]*x[5]-0.5579*x[3]*x[6]+0.5881*x[3]*x[7]+0.7833*x[3]*x[8]+0.5029*x[3]*x[9]-0.0748*x[3]*x[10]+0.1276*x[4]*x[5]-0.8902*x[4]*x[6]+0.6796*x[4]*x[7]+0.6422*x[4]*x[8]+0.5629*x[4]*x[9]-0.4931*x[4]*x[10]-0.3661*x[5]*x[6]+0.6866*x[5]*x[7]-0.356*x[5]*x[8]+0.7669*x[5]*x[9]+0.6955*x[5]*x[10]-0.1936*x[6]*x[7]+0.828*x[6]*x[8]-0.4271*x[6]*x[10]-0.5342*x[7]*x[8]-0.8547*x[7]*x[9]-0.1456*x[9]*x[10]+0.7989*x[3]+0.3971*x[7]-0.6675*x[10]+(-0.7835*x[1]^2*x[4])-0.7033*x[1]^2*x[7]-0.5409*x[2]^2*x[3]+0.734*x[2]^2*x[4]-0.1485*x[2]^2*x[5]-0.7027*x[2]^2*x[6]+0.3695*x[2]^2*x[7]+0.2627*x[2]^2*x[8]+0.3973*x[3]^2*x[1]+0.4878*x[3]^2*x[2]-0.5126*x[3]^2*x[4]+0.1988*x[3]^2*x[5]-0.1841*x[3]^2*x[6]+0.9737*x[3]^2*x[7]-0.8823*x[4]^2*x[2]+0.9705*x[4]^2*x[3]-0.0708*x[4]^2*x[5]+0.409*x[4]^2*x[6]+0.1734*x[4]^2*x[7]+0.8877*x[4]^2*x[8]-0.232*x[4]^2*x[9]-0.4405*x[5]^2*x[3]+0.6165*x[5]^2*x[6]+0.1853*x[5]^2*x[7]-0.7488*x[5]^2*x[8]-0.5269*x[5]^2*x[9]+0.3456*x[5]^2*x[10]-0.9789*x[6]^2*x[1]-0.1434*x[6]^2*x[2]+0.6723*x[6]^2*x[4]-0.6587*x[6]^2*x[7]+0.514*x[6]^2*x[8]+0.2382*x[7]^2*x[2]+0.8301*x[7]^2*x[4]+0.2418*x[7]^2*x[5]+0.2062*x[7]^2*x[8]-0.8181*x[7]^2*x[9]+0.7013*x[8]^2*x[1]-0.1389*x[8]^2*x[3]-0.3908*x[8]^2*x[4]-0.0359*x[8]^2*x[6]+0.1982*x[9]^2*x[1]-0.1135*x[9]^2*x[2]+0.9035*x[9]^2*x[4]+0.8661*x[9]^2*x[5]-0.4127*x[9]^2*x[6]-0.0883*x[9]^2*x[7]+0.002*x[9]^2*x[8]+0.6012*x[10]^2*x[3]-0.2394*x[10]^2*x[4]+0.9345*x[10]^2*x[8]+0.9*x[1]*x[2]*x[3]-0.6698*x[1]*x[2]*x[4]-0.8512*x[1]*x[2]*x[5]+0.5976*x[1]*x[2]*x[6]-0.2216*x[1]*x[2]*x[7]+0.6321*x[1]*x[2]*x[8]+0.0623*x[1]*x[2]*x[9]-0.44*x[1]*x[2]*x[10]+0.5406*x[1]*x[3]*x[6]-0.7283*x[1]*x[3]*x[7]+0.4117*x[1]*x[3]*x[9]+0.8215*x[1]*x[3]*x[10]+0.4906*x[1]*x[4]*x[5]-0.5686*x[1]*x[4]*x[6]+0.4189*x[1]*x[4]*x[7]+0.4744*x[1]*x[4]*x[8]+0.3563*x[1]*x[4]*x[9]+0.0203*x[1]*x[4]*x[10]+0.0188*x[1]*x[5]*x[6]-0.7091*x[1]*x[5]*x[7]+0.3616*x[1]*x[5]*x[8]+0.8862*x[1]*x[5]*x[9]+0.4165*x[1]*x[6]*x[8]-0.1259*x[1]*x[6]*x[9]+0.0813*x[1]*x[7]*x[8]-0.2809*x[1]*x[7]*x[9]+0.2906*x[1]*x[8]*x[9]-0.2284*x[2]*x[3]*x[4]+0.2048*x[2]*x[3]*x[5]+0.063*x[2]*x[3]*x[6]+0.2157*x[2]*x[3]*x[7]-0.1781*x[2]*x[3]*x[8]-0.0662*x[2]*x[3]*x[9]-0.8049*x[2]*x[3]*x[10]-0.8052*x[2]*x[4]*x[5]-0.8395*x[2]*x[4]*x[6]-0.6665*x[2]*x[4]*x[7]+0.2784*x[2]*x[4]*x[8]+0.6177*x[2]*x[4]*x[9]+0.9172*x[2]*x[4]*x[10]-0.1877*x[2]*x[5]*x[6]+0.0734*x[2]*x[5]*x[7]-0.0904*x[2]*x[5]*x[8]-0.3195*x[2]*x[5]*x[9]-0.2922*x[2]*x[6]*x[7]+0.4014*x[2]*x[6]*x[8]-0.5857*x[2]*x[6]*x[9]+0.2543*x[2]*x[6]*x[10]-0.3353*x[2]*x[7]*x[8]+0.1477*x[2]*x[7]*x[9]-0.414*x[2]*x[7]*x[10]+0.6738*x[2]*x[8]*x[9]+0.2809*x[2]*x[9]*x[10]+0.3939*x[3]*x[4]*x[5]-0.3773*x[3]*x[4]*x[6]+0.9097*x[3]*x[4]*x[7]-0.176*x[3]*x[4]*x[8]-0.3013*x[3]*x[4]*x[9]+0.6406*x[3]*x[4]*x[10]+0.205*x[3]*x[5]*x[6]+0.8206*x[3]*x[5]*x[7]+0.6405*x[3]*x[5]*x[8]-0.7973*x[3]*x[5]*x[9]-0.4693*x[3]*x[5]*x[10]+0.0869*x[3]*x[6]*x[7]+0.3459*x[3]*x[6]*x[8]-0.0777*x[3]*x[6]*x[9]+0.2602*x[3]*x[6]*x[10]-0.5604*x[3]*x[7]*x[8]-0.3226*x[3]*x[7]*x[9]+0.2671*x[3]*x[7]*x[10]+0.3384*x[3]*x[8]*x[9]-0.8991*x[3]*x[9]*x[10]-0.6749*x[4]*x[5]*x[6]-0.0457*x[4]*x[5]*x[7]+0.4246*x[4]*x[5]*x[8]-0.6039*x[4]*x[5]*x[9]+0.7898*x[4]*x[5]*x[10]-0.7771*x[4]*x[6]*x[7]-0.3966*x[4]*x[6]*x[8]+0.601*x[4]*x[6]*x[9]+0.0081*x[4]*x[6]*x[10]+0.637*x[4]*x[7]*x[8]+0.3547*x[4]*x[7]*x[9]+0.7884*x[4]*x[7]*x[10]+0.8218*x[4]*x[8]*x[9]-0.7145*x[5]*x[6]*x[7]+0.7093*x[5]*x[6]*x[8]-0.4822*x[5]*x[6]*x[9]+0.0849*x[5]*x[6]*x[10]+0.2994*x[5]*x[7]*x[8]+0.1503*x[5]*x[7]*x[9]+0.8016*x[5]*x[8]*x[9]+0.9677*x[5]*x[8]*x[10]-0.4597*x[6]*x[7]*x[8]-0.8661*x[6]*x[7]*x[9]-0.1523*x[6]*x[7]*x[10]+0.2182*x[6]*x[8]*x[9]-0.295*x[6]*x[8]*x[10]+0.8541*x[6]*x[9]*x[10]-0.3192*x[7]*x[8]*x[9]-0.5687*x[7]*x[8]*x[10]+0.6805*x[8]*x[9]*x[10] <= 19.634)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
