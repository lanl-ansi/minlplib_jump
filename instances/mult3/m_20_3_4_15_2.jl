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
@NLconstraint(m, e1, -(0.2362*x[1]*x[5]-0.6777*x[1]*x[7]+0.2757*x[1]*x[14]+0.324*x[2]*x[9]+0.0045*x[3]*x[6]-0.2826*x[3]*x[12]-0.8871*x[4]*x[7]-0.324*x[4]*x[16]-0.4147*x[5]*x[10]+0.4067*x[5]*x[11]+0.3511*x[5]*x[12]-0.3464*x[5]*x[17]-0.0678*x[5]*x[19]+0.167*x[6]*x[8]-0.0571*x[8]*x[11]+0.6889*x[9]*x[13]-0.6774*x[9]*x[16]+0.0008*x[10]*x[17]-0.0749*x[10]*x[19]+0.6645*x[11]*x[16]-0.2269*x[12]*x[14]+0.2268*x[12]*x[15]-0.2369*x[12]*x[16]+0.8171*x[12]*x[19]+0.9459*x[15]*x[16]+0.4053*x[15]*x[17]-0.4856*x[15]*x[18]-0.5585*x[1]-0.5146*x[2]+0.911*x[3]-0.0746*x[4]-0.5004*x[5]+0.2916*x[6]+0.9706*x[7]-0.969*x[8]+0.1727*x[9]+0.7279*x[10]-0.2928*x[11]+0.0602*x[12]+0.278*x[13]+0.5924*x[14]-0.4617*x[15]+0.0605*x[16]-0.3899*x[17]+0.2513*x[18]-0.3331*x[19]+0.8073*x[1]*x[2]*x[5]-0.2686*x[1]*x[2]*x[14]-0.4973*x[1]*x[2]*x[16]+0.1862*x[1]*x[3]*x[8]-0.9469*x[1]*x[3]*x[11]+0.2896*x[1]*x[3]*x[19]+0.846*x[1]*x[4]*x[8]-0.805*x[1]*x[6]*x[20]-0.8836*x[1]*x[8]*x[18]-0.7022*x[1]*x[9]*x[17]+0.3718*x[1]*x[11]*x[14]+0.88*x[1]*x[12]*x[19]+0.8423*x[1]*x[13]*x[18]-0.2015*x[1]*x[13]*x[19]-0.6412*x[1]*x[15]*x[18]+0.3736*x[1]*x[17]*x[18]-0.908*x[2]*x[3]*x[9]+0.9835*x[2]*x[3]*x[17]+0.8956*x[2]*x[4]*x[9]+0.5076*x[2]*x[4]*x[10]+0.9676*x[2]*x[4]*x[16]-0.7008*x[2]*x[6]*x[10]+0.0358*x[2]*x[7]*x[10]-0.1072*x[2]*x[7]*x[11]+0.2075*x[2]*x[7]*x[13]+0.6305*x[2]*x[7]*x[18]-0.9479*x[2]*x[8]*x[9]+0.3921*x[2]*x[8]*x[16]+0.6888*x[2]*x[8]*x[17]+0.8563*x[2]*x[9]*x[13]+0.6439*x[2]*x[9]*x[16]+0.5277*x[2]*x[11]*x[20]-0.7001*x[2]*x[12]*x[15]+0.6788*x[2]*x[12]*x[16]-0.9321*x[2]*x[12]*x[18]-0.4526*x[2]*x[13]*x[18]+0.0533*x[2]*x[17]*x[19]+0.0523*x[3]*x[4]*x[7]-0.1023*x[3]*x[4]*x[12]-0.4789*x[3]*x[4]*x[15]-0.3865*x[3]*x[4]*x[19]-0.5141*x[3]*x[5]*x[11]+0.4517*x[3]*x[6]*x[7]+0.8331*x[3]*x[6]*x[8]+0.0058*x[3]*x[6]*x[18]+0.3029*x[3]*x[7]*x[13]+0.9547*x[3]*x[7]*x[17]+0.9651*x[3]*x[8]*x[10]+0.9949*x[3]*x[11]*x[15]-0.2364*x[3]*x[11]*x[16]-0.8072*x[3]*x[11]*x[20]+0.5224*x[3]*x[12]*x[14]+0.6634*x[3]*x[12]*x[17]-0.4852*x[3]*x[13]*x[14]-0.1569*x[3]*x[13]*x[16]+0.4082*x[3]*x[13]*x[18]+0.0614*x[3]*x[14]*x[15]+0.0195*x[3]*x[14]*x[19]+0.5959*x[4]*x[5]*x[14]-0.5134*x[4]*x[5]*x[15]-0.5107*x[4]*x[5]*x[16]-0.9605*x[4]*x[6]*x[14]-0.7602*x[4]*x[6]*x[18]+0.929*x[4]*x[6]*x[19]-0.3796*x[4]*x[7]*x[13]-0.0086*x[4]*x[7]*x[16]-0.2743*x[4]*x[8]*x[16]-0.5196*x[4]*x[8]*x[20]-0.103*x[4]*x[9]*x[11]-0.0407*x[4]*x[9]*x[14]+0.6841*x[4]*x[9]*x[16]+0.0381*x[4]*x[9]*x[20]+0.1478*x[4]*x[10]*x[17]-0.2134*x[4]*x[10]*x[19]-0.7783*x[4]*x[11]*x[13]-0.3579*x[4]*x[11]*x[20]-0.1606*x[4]*x[12]*x[14]+0.7387*x[4]*x[13]*x[15]+0.4874*x[4]*x[13]*x[16]+0.6668*x[4]*x[13]*x[17]+0.6882*x[4]*x[14]*x[18]+0.8037*x[4]*x[16]*x[18]+0.4363*x[4]*x[18]*x[19]-0.3992*x[5]*x[6]*x[8]+0.1136*x[5]*x[6]*x[12]+0.0012*x[5]*x[6]*x[14]-0.4838*x[5]*x[7]*x[15]+0.1537*x[5]*x[7]*x[19]-0.458*x[5]*x[8]*x[9]+0.0888*x[5]*x[8]*x[17]-0.8306*x[5]*x[8]*x[20]-0.8889*x[5]*x[9]*x[12]+0.7993*x[5]*x[10]*x[16]+0.0461*x[5]*x[11]*x[15]+0.6998*x[5]*x[11]*x[16]-0.5984*x[5]*x[11]*x[20]+0.7394*x[5]*x[12]*x[13]+0.2575*x[5]*x[12]*x[14]-0.7195*x[5]*x[13]*x[19]-0.4779*x[5]*x[15]*x[17]-x[5]*x[15]*x[19]-0.159*x[5]*x[16]*x[17]-0.2454*x[6]*x[7]*x[10]-0.8287*x[6]*x[7]*x[14]+0.4884*x[6]*x[7]*x[15]+0.7947*x[6]*x[7]*x[17]-0.387*x[6]*x[8]*x[11]-0.9208*x[6]*x[8]*x[18]-0.5758*x[6]*x[8]*x[19]+0.5735*x[6]*x[9]*x[16]+0.1079*x[6]*x[9]*x[18]+0.6875*x[6]*x[10]*x[13]+0.641*x[6]*x[10]*x[17]+0.6044*x[6]*x[12]*x[14]-0.2093*x[6]*x[12]*x[16]-0.3877*x[6]*x[12]*x[18]-0.6102*x[6]*x[13]*x[18]+0.0998*x[6]*x[14]*x[18]-0.7818*x[6]*x[15]*x[17]-0.0769*x[6]*x[16]*x[19]-0.9895*x[7]*x[8]*x[18]+0.2602*x[7]*x[9]*x[11]+0.9691*x[7]*x[9]*x[14]-0.0632*x[7]*x[9]*x[15]-0.6218*x[7]*x[9]*x[19]+0.2466*x[7]*x[11]*x[12]+0.95*x[7]*x[11]*x[17]-0.3974*x[7]*x[12]*x[13]-0.0479*x[7]*x[12]*x[16]+0.7677*x[7]*x[12]*x[19]+0.7708*x[7]*x[13]*x[15]+0.1045*x[7]*x[14]*x[19]+0.2293*x[7]*x[15]*x[19]-0.4155*x[7]*x[16]*x[19]+0.0462*x[8]*x[9]*x[13]-0.5853*x[8]*x[9]*x[17]+0.3949*x[8]*x[10]*x[16]-0.5149*x[8]*x[10]*x[19]+0.8957*x[8]*x[12]*x[16]-0.9393*x[8]*x[13]*x[19]+0.8518*x[9]*x[10]*x[16]+0.1682*x[9]*x[10]*x[17]-0.8734*x[9]*x[10]*x[19]-0.3097*x[9]*x[10]*x[20]-0.3519*x[9]*x[11]*x[15]-0.1731*x[9]*x[11]*x[17]-0.0583*x[9]*x[14]*x[15]+0.3778*x[9]*x[15]*x[16]+0.4761*x[9]*x[15]*x[19]+0.8408*x[9]*x[16]*x[18]-0.4614*x[9]*x[17]*x[20]-0.5224*x[10]*x[11]*x[13]-0.6299*x[10]*x[12]*x[13]+0.1535*x[10]*x[12]*x[18]-0.9454*x[10]*x[13]*x[15]-0.9813*x[10]*x[15]*x[18]-0.6953*x[10]*x[16]*x[18]+0.8827*x[10]*x[17]*x[20]+0.5486*x[11]*x[14]*x[16]+0.5568*x[11]*x[14]*x[19]-0.9422*x[12]*x[14]*x[15]+0.3491*x[12]*x[14]*x[17]-0.7331*x[12]*x[17]*x[19]+0.2275*x[13]*x[15]*x[16]-0.7515*x[13]*x[16]*x[17]+0.2594*x[13]*x[16]*x[18]+0.2511*x[13]*x[17]*x[19]-0.2542*x[13]*x[18]*x[19]-0.5439*x[14]*x[15]*x[17]+0.9609*x[14]*x[19]*x[20]-0.59*x[15]*x[16]*x[19]+0.8044*x[15]*x[18]*x[20]-0.1678*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.3533*x[1]*x[4]+0.5333*x[1]*x[18]-0.7908*x[2]*x[8]-0.5574*x[2]*x[12]-0.0524*x[2]*x[16]-0.8913*x[3]*x[5]+0.366*x[3]*x[7]+0.8608*x[3]*x[14]-0.4711*x[3]*x[15]+0.4947*x[3]*x[17]-0.3339*x[3]*x[19]+0.0694*x[4]*x[5]+0.7531*x[4]*x[7]-0.2867*x[4]*x[11]-0.559*x[4]*x[15]+0.6008*x[5]*x[9]-0.7688*x[5]*x[10]+0.8434*x[5]*x[18]-0.9643*x[6]*x[10]-0.949*x[6]*x[12]-0.3023*x[8]*x[10]-0.7342*x[8]*x[18]-0.7632*x[9]*x[16]-0.8627*x[9]*x[17]+0.502*x[9]*x[20]-0.9827*x[11]*x[16]-0.5739*x[12]*x[20]-0.3547*x[13]*x[17]+0.6502*x[13]*x[18]-0.7403*x[15]*x[18]+0.6568*x[1]+0.171*x[2]-0.4814*x[3]+0.9998*x[4]+0.0097*x[5]+0.1656*x[6]+0.7843*x[7]-0.4655*x[8]-0.3294*x[9]+0.1955*x[10]-0.7698*x[11]+0.3101*x[12]+0.8013*x[13]+0.8409*x[14]-0.0683*x[15]+0.0873*x[16]-0.4183*x[17]-0.758*x[18]+0.2455*x[19]-0.2314*x[20]+0.4391*x[1]*x[4]*x[8]-0.0663*x[1]*x[2]*x[14]+0.1185*x[1]*x[5]*x[11]-0.1919*x[1]*x[5]*x[13]+0.3202*x[1]*x[5]*x[14]+0.7802*x[1]*x[6]*x[11]-0.2683*x[1]*x[6]*x[12]+0.2336*x[1]*x[8]*x[14]-0.6852*x[1]*x[9]*x[18]-0.503*x[1]*x[10]*x[17]-0.1543*x[1]*x[11]*x[19]-0.3963*x[1]*x[18]*x[19]-0.9461*x[2]*x[3]*x[4]+0.368*x[2]*x[3]*x[16]+0.936*x[2]*x[3]*x[17]-0.7823*x[2]*x[4]*x[6]-0.4928*x[2]*x[4]*x[7]-0.6963*x[2]*x[5]*x[8]-0.5276*x[2]*x[5]*x[11]-0.7369*x[2]*x[5]*x[19]+0.9399*x[2]*x[6]*x[12]+0.0808*x[2]*x[6]*x[20]+0.9625*x[2]*x[7]*x[12]-0.4433*x[2]*x[8]*x[12]-0.1453*x[2]*x[10]*x[17]+0.0096*x[2]*x[10]*x[18]+0.5019*x[2]*x[13]*x[15]-0.9404*x[2]*x[14]*x[15]+0.2586*x[2]*x[15]*x[17]+0.0968*x[2]*x[16]*x[19]+0.5705*x[3]*x[4]*x[5]+0.3787*x[3]*x[4]*x[11]-0.939*x[3]*x[4]*x[18]+0.8974*x[3]*x[5]*x[11]+0.9416*x[3]*x[5]*x[16]-0.4802*x[3]*x[5]*x[17]-0.9136*x[3]*x[6]*x[7]+0.3163*x[3]*x[6]*x[16]+0.4219*x[3]*x[6]*x[17]+0.7285*x[3]*x[6]*x[19]+0.7734*x[3]*x[7]*x[16]-0.4015*x[3]*x[8]*x[12]-0.3012*x[3]*x[8]*x[18]-0.5925*x[3]*x[11]*x[15]+0.6985*x[3]*x[11]*x[18]-0.2461*x[3]*x[12]*x[13]-0.7145*x[3]*x[13]*x[15]-0.7068*x[3]*x[13]*x[16]+0.9362*x[3]*x[13]*x[18]+0.4563*x[3]*x[16]*x[18]+0.0882*x[4]*x[5]*x[7]-0.6347*x[4]*x[5]*x[14]-0.6413*x[4]*x[5]*x[19]+0.1059*x[4]*x[6]*x[11]+0.6846*x[4]*x[7]*x[8]+0.3866*x[4]*x[7]*x[13]+0.4958*x[4]*x[7]*x[15]-0.2257*x[4]*x[7]*x[19]+0.8244*x[4]*x[8]*x[9]-0.3021*x[4]*x[8]*x[10]+0.8319*x[4]*x[8]*x[13]-0.5647*x[4]*x[8]*x[15]+0.9124*x[4]*x[8]*x[19]-0.2831*x[4]*x[9]*x[12]+0.3395*x[4]*x[9]*x[18]-0.7258*x[4]*x[9]*x[19]+0.0112*x[4]*x[10]*x[18]-0.3917*x[4]*x[11]*x[12]+0.2549*x[4]*x[12]*x[13]+0.0188*x[4]*x[13]*x[14]-0.8306*x[4]*x[13]*x[17]+0.5876*x[4]*x[15]*x[17]+0.1329*x[4]*x[15]*x[19]+0.9895*x[5]*x[6]*x[11]-0.1208*x[5]*x[6]*x[12]+0.4946*x[5]*x[6]*x[15]+0.1181*x[5]*x[8]*x[9]-0.1778*x[5]*x[8]*x[12]-0.1271*x[5]*x[9]*x[10]-0.4088*x[5]*x[10]*x[18]+0.3427*x[5]*x[11]*x[15]-0.9123*x[5]*x[12]*x[18]+0.442*x[5]*x[13]*x[18]-0.5726*x[5]*x[14]*x[17]+0.821*x[5]*x[14]*x[18]+0.2491*x[5]*x[15]*x[19]-0.7216*x[5]*x[16]*x[17]+0.3072*x[6]*x[7]*x[8]-0.1266*x[6]*x[7]*x[11]-0.0549*x[6]*x[7]*x[13]-0.957*x[6]*x[8]*x[11]+0.2241*x[6]*x[8]*x[15]+0.6794*x[6]*x[9]*x[14]+0.9525*x[6]*x[10]*x[11]+0.061*x[6]*x[11]*x[13]+0.3343*x[6]*x[11]*x[14]-0.3393*x[6]*x[12]*x[18]-0.2133*x[6]*x[13]*x[14]+0.9772*x[6]*x[13]*x[19]-0.4617*x[6]*x[14]*x[19]-0.2615*x[6]*x[16]*x[19]-0.3948*x[6]*x[17]*x[19]-0.9366*x[7]*x[8]*x[13]-0.1863*x[7]*x[8]*x[20]-0.6188*x[7]*x[9]*x[17]+0.0999*x[7]*x[10]*x[14]-0.5469*x[7]*x[11]*x[16]-0.604*x[7]*x[11]*x[19]-0.9455*x[7]*x[12]*x[14]+0.7777*x[7]*x[12]*x[19]+0.4531*x[7]*x[13]*x[14]-0.3284*x[7]*x[13]*x[17]-0.7852*x[7]*x[14]*x[15]+0.5564*x[7]*x[14]*x[17]-0.3432*x[7]*x[15]*x[16]+0.7855*x[7]*x[15]*x[19]+0.6732*x[7]*x[19]*x[20]+0.2511*x[8]*x[9]*x[19]-0.2541*x[8]*x[10]*x[11]+0.3148*x[8]*x[10]*x[20]+0.8408*x[8]*x[14]*x[16]-0.676*x[8]*x[14]*x[17]+0.9854*x[8]*x[14]*x[18]-0.0196*x[8]*x[14]*x[19]+0.2808*x[8]*x[15]*x[17]+0.3303*x[8]*x[15]*x[20]+0.6171*x[8]*x[17]*x[18]-0.2532*x[9]*x[10]*x[12]-0.6715*x[9]*x[10]*x[17]-0.4683*x[9]*x[10]*x[19]+0.7978*x[9]*x[11]*x[16]+0.9574*x[9]*x[11]*x[19]+0.6411*x[9]*x[12]*x[13]+0.2776*x[9]*x[12]*x[18]-0.5406*x[9]*x[13]*x[17]-0.9537*x[9]*x[18]*x[20]+0.3767*x[10]*x[11]*x[14]+0.1075*x[10]*x[11]*x[15]-0.071*x[10]*x[11]*x[16]+0.5396*x[10]*x[11]*x[17]+0.3626*x[10]*x[11]*x[18]+0.7007*x[10]*x[12]*x[18]+0.8639*x[10]*x[12]*x[20]+0.9656*x[10]*x[13]*x[20]+0.0324*x[10]*x[14]*x[19]+0.6262*x[10]*x[15]*x[17]+0.7836*x[10]*x[15]*x[19]+0.4504*x[10]*x[16]*x[18]+0.884*x[10]*x[17]*x[19]-0.0584*x[11]*x[12]*x[17]-0.5745*x[11]*x[12]*x[19]-0.6777*x[11]*x[14]*x[17]+0.8798*x[11]*x[15]*x[16]+0.1524*x[12]*x[13]*x[16]+0.1312*x[12]*x[13]*x[17]+0.9807*x[12]*x[14]*x[15]+0.435*x[12]*x[14]*x[18]+0.0707*x[12]*x[14]*x[19]-0.3477*x[12]*x[15]*x[18]-0.1875*x[12]*x[16]*x[20]-0.3478*x[12]*x[17]*x[18]+0.1143*x[12]*x[17]*x[19]+0.1019*x[13]*x[15]*x[18]-0.3295*x[13]*x[16]*x[19]-0.4595*x[14]*x[15]*x[16]-0.7121*x[14]*x[16]*x[19]+0.5022*x[14]*x[17]*x[18]+0.8914*x[15]*x[16]*x[17]+0.8637*x[18]*x[19]*x[20] <= 44.318)
@NLconstraint(m, e3, (-0.8677*x[1]*x[5])-0.7701*x[2]*x[7]+0.7631*x[2]*x[16]+0.6016*x[3]*x[4]+0.4686*x[3]*x[9]+0.8024*x[3]*x[10]+0.8192*x[3]*x[13]+0.4638*x[3]*x[16]+0.938*x[4]*x[11]-0.4546*x[4]*x[15]-0.8701*x[5]*x[10]-0.9276*x[5]*x[12]-0.0016*x[5]*x[13]-0.9819*x[5]*x[14]-0.9675*x[6]*x[7]-0.6198*x[6]*x[15]-0.832*x[6]*x[18]+0.2254*x[6]*x[20]+0.9299*x[7]*x[8]+0.2111*x[7]*x[14]+0.7504*x[9]*x[16]+0.7524*x[9]*x[19]-0.6265*x[10]*x[14]-0.3083*x[10]*x[15]+0.8789*x[10]*x[17]+0.3376*x[10]*x[18]+0.0804*x[11]*x[13]+0.8261*x[11]*x[14]-0.534*x[11]*x[15]+0.136*x[11]*x[18]+0.876*x[12]*x[15]-0.1934*x[13]*x[16]+0.1161*x[13]*x[19]-0.4794*x[15]*x[19]+0.9421*x[17]*x[19]+0.1215*x[17]*x[20]-0.3196*x[1]-0.1609*x[2]+0.7309*x[3]+0.4977*x[4]+0.2829*x[5]-0.6099*x[6]-0.7996*x[7]+0.3218*x[8]-0.6309*x[9]+0.5041*x[10]+0.7424*x[11]-0.6027*x[12]+0.965*x[13]-0.9937*x[14]+0.6049*x[15]-0.9632*x[16]-0.5825*x[17]+0.1448*x[18]-0.0147*x[19]-0.0997*x[20]+0.7067*x[1]*x[2]*x[5]-0.1851*x[1]*x[3]*x[10]+0.529*x[1]*x[3]*x[14]+0.5486*x[1]*x[7]*x[18]-0.2159*x[1]*x[9]*x[16]+0.2901*x[1]*x[11]*x[12]-0.6685*x[1]*x[13]*x[16]+0.388*x[1]*x[17]*x[19]+0.3892*x[1]*x[18]*x[20]+0.2287*x[2]*x[3]*x[4]-0.5057*x[2]*x[3]*x[8]-0.6305*x[2]*x[3]*x[13]-0.1452*x[2]*x[3]*x[17]-0.6573*x[2]*x[4]*x[5]+0.5504*x[2]*x[4]*x[8]+0.7441*x[2]*x[4]*x[12]+0.1103*x[2]*x[4]*x[14]+0.5117*x[2]*x[4]*x[16]-0.0225*x[2]*x[4]*x[18]-0.3507*x[2]*x[4]*x[19]-0.1481*x[2]*x[5]*x[9]+0.0686*x[2]*x[5]*x[11]-0.3412*x[2]*x[5]*x[16]-0.231*x[2]*x[5]*x[17]+0.9598*x[2]*x[5]*x[19]-0.8386*x[2]*x[5]*x[20]+0.9057*x[2]*x[6]*x[13]-0.0542*x[2]*x[7]*x[10]+0.4822*x[2]*x[7]*x[13]-0.3971*x[2]*x[7]*x[14]-0.8429*x[2]*x[8]*x[12]+0.2053*x[2]*x[8]*x[14]-0.7726*x[2]*x[8]*x[18]+0.5744*x[2]*x[8]*x[19]-0.1486*x[2]*x[9]*x[19]+0.6729*x[2]*x[9]*x[20]-0.4445*x[2]*x[10]*x[12]-0.022*x[2]*x[10]*x[15]-0.0707*x[2]*x[14]*x[16]+0.798*x[2]*x[18]*x[19]-0.1898*x[3]*x[4]*x[7]+0.4559*x[3]*x[4]*x[9]-0.201*x[3]*x[5]*x[7]+0.0332*x[3]*x[5]*x[9]+0.4835*x[3]*x[6]*x[7]+0.2259*x[3]*x[6]*x[10]-0.2862*x[3]*x[7]*x[13]+0.6767*x[3]*x[7]*x[17]-0.5313*x[3]*x[8]*x[11]+0.4129*x[3]*x[8]*x[16]-0.2406*x[3]*x[8]*x[18]-0.767*x[3]*x[8]*x[19]-0.6401*x[3]*x[10]*x[16]+0.6228*x[3]*x[11]*x[16]+0.9418*x[3]*x[12]*x[19]+0.5997*x[3]*x[13]*x[14]+0.1869*x[3]*x[13]*x[16]+0.3037*x[3]*x[13]*x[20]-0.7714*x[3]*x[17]*x[20]+0.3758*x[3]*x[18]*x[19]+0.1948*x[4]*x[5]*x[7]+0.062*x[4]*x[5]*x[8]-0.8108*x[4]*x[5]*x[11]+0.7765*x[4]*x[5]*x[13]-0.1108*x[4]*x[5]*x[19]+0.8031*x[4]*x[6]*x[17]-0.5742*x[4]*x[7]*x[9]-0.5868*x[4]*x[7]*x[12]+0.9409*x[4]*x[8]*x[15]-0.6945*x[4]*x[8]*x[18]+0.5031*x[4]*x[10]*x[13]-0.361*x[4]*x[15]*x[16]+0.0514*x[4]*x[18]*x[19]+0.9639*x[5]*x[6]*x[13]-0.8974*x[5]*x[7]*x[9]-0.3574*x[5]*x[7]*x[12]-0.8243*x[5]*x[7]*x[17]+0.9673*x[5]*x[8]*x[12]+0.6699*x[5]*x[9]*x[10]-0.6432*x[5]*x[9]*x[14]-0.0141*x[5]*x[9]*x[20]+0.3993*x[5]*x[10]*x[13]-0.6697*x[5]*x[10]*x[18]-0.9553*x[5]*x[11]*x[16]+0.9377*x[5]*x[11]*x[20]+0.0962*x[5]*x[12]*x[15]+0.4339*x[5]*x[15]*x[18]-0.9296*x[5]*x[15]*x[20]-0.1525*x[6]*x[7]*x[15]-0.5251*x[6]*x[7]*x[17]+0.6824*x[6]*x[7]*x[18]+0.2777*x[6]*x[8]*x[20]-0.1587*x[6]*x[9]*x[11]+0.4673*x[6]*x[9]*x[14]-0.2367*x[6]*x[10]*x[15]-0.6676*x[6]*x[10]*x[19]-0.3988*x[6]*x[11]*x[14]+0.0626*x[6]*x[11]*x[17]-0.4159*x[6]*x[12]*x[15]-0.4361*x[6]*x[14]*x[18]-0.7182*x[7]*x[8]*x[11]+0.3296*x[7]*x[9]*x[19]-0.9591*x[7]*x[11]*x[13]+0.8607*x[7]*x[11]*x[14]-0.8808*x[7]*x[11]*x[17]+0.5854*x[7]*x[13]*x[17]+0.5493*x[7]*x[14]*x[18]+0.2723*x[7]*x[14]*x[19]-0.2944*x[7]*x[17]*x[19]-0.2813*x[8]*x[9]*x[12]+0.8704*x[8]*x[10]*x[13]-0.9628*x[8]*x[10]*x[16]-0.9825*x[8]*x[11]*x[13]-0.0986*x[8]*x[13]*x[15]+0.1924*x[8]*x[13]*x[16]-0.8243*x[8]*x[14]*x[16]+0.7158*x[8]*x[14]*x[17]-0.7599*x[9]*x[10]*x[16]+0.9842*x[9]*x[10]*x[20]+0.4032*x[9]*x[11]*x[19]+0.0746*x[9]*x[12]*x[18]+0.5881*x[9]*x[14]*x[16]-0.4351*x[9]*x[17]*x[18]-0.8887*x[9]*x[18]*x[19]+0.3636*x[9]*x[19]*x[20]+0.6968*x[10]*x[11]*x[13]+0.5924*x[10]*x[12]*x[18]+0.2065*x[10]*x[13]*x[16]+0.7102*x[10]*x[14]*x[19]-0.2856*x[10]*x[16]*x[17]-0.5916*x[10]*x[17]*x[18]+0.2099*x[10]*x[17]*x[19]+0.4007*x[10]*x[18]*x[20]+0.7396*x[11]*x[12]*x[13]-0.6688*x[11]*x[12]*x[18]-0.5017*x[11]*x[13]*x[16]+0.1587*x[11]*x[13]*x[18]+0.5831*x[11]*x[13]*x[19]+0.7638*x[11]*x[14]*x[15]+0.5809*x[11]*x[14]*x[17]-0.0658*x[11]*x[14]*x[18]+0.4825*x[11]*x[15]*x[16]-0.0761*x[11]*x[15]*x[20]-0.9464*x[12]*x[13]*x[14]+0.9747*x[12]*x[13]*x[18]-0.0517*x[12]*x[13]*x[19]-0.808*x[12]*x[15]*x[16]-0.0578*x[12]*x[15]*x[19]-0.0997*x[12]*x[18]*x[20]-0.6863*x[13]*x[14]*x[16]-0.2626*x[13]*x[14]*x[19]+0.2626*x[14]*x[15]*x[17]+0.9596*x[14]*x[15]*x[18]-0.372*x[14]*x[15]*x[19]-0.8884*x[14]*x[16]*x[18]-0.1234*x[14]*x[16]*x[19]+0.3567*x[14]*x[18]*x[19]+0.212*x[15]*x[16]*x[17]+0.5183*x[15]*x[16]*x[18]+0.5929*x[15]*x[17]*x[18]+0.5809*x[16]*x[17]*x[19]-0.3082*x[17]*x[19]*x[20] <= 55.674)
@NLconstraint(m, e4, 0.0446*x[2]*x[3]-0.5864*x[1]*x[14]+0.1988*x[2]*x[4]-0.647*x[2]*x[5]+0.4097*x[2]*x[9]-0.6484*x[2]*x[14]+0.2682*x[2]*x[17]+0.508*x[3]*x[5]-0.6331*x[3]*x[6]+0.4304*x[3]*x[8]-0.5924*x[4]*x[6]+0.8928*x[4]*x[13]-0.8818*x[4]*x[15]+0.0767*x[4]*x[17]+0.4905*x[4]*x[19]+0.7605*x[4]*x[20]-0.1452*x[5]*x[7]-0.8056*x[6]*x[8]+0.5768*x[6]*x[15]-0.8656*x[6]*x[18]-0.3505*x[7]*x[14]-0.335*x[8]*x[18]+0.4264*x[10]*x[19]+0.2016*x[10]*x[20]-0.1435*x[11]*x[15]+0.1365*x[11]*x[19]-0.1754*x[12]*x[14]-0.6652*x[14]*x[16]-0.3135*x[14]*x[19]+0.3855*x[14]*x[20]+0.7224*x[15]*x[18]+0.8048*x[17]*x[19]-0.6081*x[17]*x[20]+0.0583*x[1]+0.8813*x[2]-0.0146*x[3]+0.1434*x[4]-0.1487*x[5]+0.9763*x[6]-0.5704*x[7]+0.7438*x[8]+0.4536*x[9]-0.5108*x[10]+0.9601*x[11]+0.5533*x[12]+0.7182*x[13]+0.235*x[14]-0.9393*x[15]-0.3468*x[16]+0.0937*x[17]-0.6601*x[18]+0.1715*x[19]+0.3667*x[20]+0.4716*x[1]*x[2]*x[14]-0.4894*x[1]*x[2]*x[9]+0.058*x[1]*x[3]*x[17]+0.3824*x[1]*x[3]*x[20]+0.4003*x[1]*x[4]*x[12]+0.6715*x[1]*x[4]*x[13]+0.9756*x[1]*x[4]*x[18]-0.337*x[1]*x[7]*x[14]-0.8459*x[1]*x[8]*x[10]+0.4541*x[1]*x[8]*x[11]-0.7643*x[1]*x[8]*x[13]-0.4294*x[1]*x[9]*x[11]+0.1259*x[1]*x[9]*x[12]+0.7101*x[1]*x[12]*x[14]-0.9499*x[1]*x[12]*x[19]+0.1473*x[2]*x[3]*x[8]-0.2224*x[2]*x[4]*x[7]+0.8547*x[2]*x[4]*x[12]+0.6725*x[2]*x[4]*x[13]-0.2046*x[2]*x[4]*x[14]-0.8575*x[2]*x[4]*x[16]-0.3724*x[2]*x[4]*x[18]+0.7328*x[2]*x[5]*x[12]-0.3321*x[2]*x[5]*x[15]+0.9689*x[2]*x[5]*x[16]+0.9641*x[2]*x[6]*x[9]+0.8625*x[2]*x[6]*x[14]+0.7671*x[2]*x[6]*x[19]+0.5526*x[2]*x[7]*x[10]-0.4246*x[2]*x[7]*x[11]-0.8477*x[2]*x[7]*x[16]-0.3614*x[2]*x[9]*x[14]-0.8533*x[2]*x[9]*x[19]-0.531*x[2]*x[10]*x[15]-0.2556*x[2]*x[11]*x[17]+0.6633*x[2]*x[12]*x[16]+0.6297*x[2]*x[13]*x[20]-0.3061*x[3]*x[4]*x[9]+0.3125*x[3]*x[4]*x[11]+0.4406*x[3]*x[4]*x[12]-0.4068*x[3]*x[5]*x[11]-0.8266*x[3]*x[5]*x[13]+0.8814*x[3]*x[6]*x[12]-0.7769*x[3]*x[6]*x[15]-0.8783*x[3]*x[6]*x[20]-0.405*x[3]*x[7]*x[9]+0.2858*x[3]*x[7]*x[13]+0.7834*x[3]*x[7]*x[15]+0.2047*x[3]*x[7]*x[18]-0.5673*x[3]*x[8]*x[19]-0.9996*x[3]*x[9]*x[12]+0.8305*x[3]*x[10]*x[18]+0.0395*x[3]*x[11]*x[17]-0.4632*x[3]*x[13]*x[18]-0.682*x[3]*x[14]*x[19]-0.4099*x[3]*x[15]*x[16]+0.5071*x[4]*x[5]*x[13]+0.4262*x[4]*x[5]*x[15]-0.2367*x[4]*x[6]*x[9]+0.0247*x[4]*x[6]*x[13]-0.6194*x[4]*x[6]*x[20]-0.8445*x[4]*x[7]*x[10]-0.2271*x[4]*x[7]*x[13]-0.7535*x[4]*x[8]*x[10]+0.3114*x[4]*x[8]*x[16]-0.3506*x[4]*x[9]*x[10]+0.4816*x[4]*x[9]*x[13]+0.1282*x[4]*x[9]*x[16]+0.065*x[4]*x[10]*x[12]+0.3326*x[4]*x[11]*x[17]+0.2634*x[4]*x[13]*x[14]-0.5786*x[4]*x[13]*x[16]-0.3121*x[4]*x[14]*x[16]-0.6307*x[4]*x[15]*x[16]-0.9252*x[4]*x[15]*x[18]+0.591*x[5]*x[6]*x[9]-0.2703*x[5]*x[6]*x[14]-0.8829*x[5]*x[6]*x[16]-0.3355*x[5]*x[6]*x[20]+0.221*x[5]*x[8]*x[17]+0.3764*x[5]*x[8]*x[18]+0.8194*x[5]*x[8]*x[19]+0.7997*x[5]*x[9]*x[10]-0.2602*x[5]*x[9]*x[11]-0.8292*x[5]*x[9]*x[12]-0.7762*x[5]*x[9]*x[13]+0.4223*x[5]*x[9]*x[15]+0.3243*x[5]*x[9]*x[16]+0.0853*x[5]*x[10]*x[14]+0.3039*x[5]*x[11]*x[13]-0.083*x[5]*x[11]*x[14]-0.5984*x[5]*x[12]*x[13]-0.2938*x[5]*x[12]*x[17]-0.3611*x[5]*x[13]*x[14]-0.4085*x[5]*x[13]*x[17]-0.3441*x[5]*x[14]*x[17]+0.4989*x[5]*x[14]*x[19]-0.0009*x[5]*x[16]*x[20]+0.0932*x[6]*x[7]*x[9]+0.7609*x[6]*x[7]*x[11]-0.6511*x[6]*x[8]*x[17]+0.923*x[6]*x[10]*x[14]+0.2041*x[6]*x[15]*x[16]+0.3959*x[6]*x[16]*x[17]+0.0728*x[6]*x[16]*x[19]-0.7535*x[6]*x[17]*x[19]+0.7058*x[7]*x[8]*x[15]-0.4542*x[7]*x[8]*x[20]+0.0983*x[7]*x[9]*x[14]-0.7697*x[7]*x[9]*x[16]+0.502*x[7]*x[9]*x[18]+0.6151*x[7]*x[9]*x[19]-0.3659*x[7]*x[9]*x[20]-0.4121*x[7]*x[10]*x[15]-0.4012*x[7]*x[10]*x[18]-0.3*x[7]*x[11]*x[12]-0.1684*x[7]*x[11]*x[14]-0.8762*x[7]*x[12]*x[14]-0.9211*x[7]*x[13]*x[19]-0.8068*x[7]*x[14]*x[17]+0.4854*x[7]*x[14]*x[19]-0.6514*x[8]*x[9]*x[10]+0.3412*x[8]*x[9]*x[19]-0.5339*x[8]*x[10]*x[15]-0.8293*x[8]*x[10]*x[16]-0.9214*x[8]*x[11]*x[13]+0.3162*x[8]*x[12]*x[14]-0.8891*x[8]*x[12]*x[19]+0.868*x[8]*x[12]*x[20]+0.9536*x[8]*x[15]*x[20]-0.858*x[8]*x[16]*x[18]-0.568*x[9]*x[11]*x[13]+0.8638*x[9]*x[11]*x[16]+0.8306*x[9]*x[11]*x[17]-0.5072*x[9]*x[13]*x[14]+0.4753*x[9]*x[14]*x[18]-0.8145*x[9]*x[15]*x[16]+0.151*x[9]*x[18]*x[19]-0.6786*x[10]*x[11]*x[17]+0.2762*x[10]*x[11]*x[18]-0.8709*x[10]*x[12]*x[16]-0.2024*x[10]*x[13]*x[20]-0.4846*x[10]*x[14]*x[18]+0.3634*x[10]*x[16]*x[17]-0.5467*x[10]*x[16]*x[18]+0.7093*x[10]*x[18]*x[19]+0.1117*x[11]*x[13]*x[20]+0.3201*x[11]*x[14]*x[15]-0.1659*x[11]*x[16]*x[17]+0.7479*x[11]*x[16]*x[19]+0.105*x[11]*x[17]*x[20]+0.8676*x[11]*x[18]*x[19]-0.3732*x[12]*x[13]*x[14]+0.0789*x[12]*x[14]*x[16]+0.3605*x[12]*x[15]*x[18]+0.9047*x[12]*x[16]*x[18]+0.9474*x[12]*x[18]*x[19]+0.3641*x[13]*x[14]*x[16]-0.289*x[13]*x[16]*x[19]-0.0277*x[14]*x[15]*x[20]+0.1108*x[14]*x[16]*x[19]-0.0059*x[14]*x[17]*x[19]-0.2945*x[14]*x[18]*x[20]-0.2186*x[15]*x[16]*x[19]-0.3159*x[15]*x[17]*x[18]+0.6894*x[15]*x[17]*x[20] <= 82.055)
@NLconstraint(m, e5, (-0.8705*x[1]*x[2])-0.9193*x[4]*x[5]-0.3975*x[4]*x[6]-0.8464*x[4]*x[10]-0.9045*x[4]*x[13]+0.1281*x[4]*x[14]-0.6451*x[4]*x[18]-0.6983*x[5]*x[12]-0.6671*x[5]*x[15]-0.5123*x[5]*x[19]-0.9844*x[6]*x[9]-0.7525*x[7]*x[8]-0.8786*x[7]*x[9]+0.5006*x[8]*x[12]-0.4816*x[8]*x[14]-0.0736*x[10]*x[15]-0.7695*x[10]*x[17]-0.1111*x[10]*x[19]-0.2184*x[11]*x[15]-0.2671*x[11]*x[16]+0.4418*x[11]*x[19]+0.7176*x[13]*x[14]+0.4653*x[13]*x[17]-0.2469*x[13]*x[19]+0.9371*x[14]*x[17]-0.0394*x[14]*x[18]+0.0347*x[15]*x[18]+0.7762*x[16]*x[20]-0.0852*x[17]*x[18]-0.8915*x[1]+0.1514*x[2]+0.7358*x[4]-0.3758*x[5]+0.4571*x[6]+0.8524*x[7]-0.9157*x[8]-0.1288*x[9]+0.6016*x[10]+0.2314*x[11]+0.0136*x[12]+0.7748*x[13]-0.1282*x[14]+0.976*x[15]+0.1705*x[16]+0.8084*x[17]+0.4144*x[18]-0.2357*x[19]+0.4619*x[20]+0.6724*x[1]*x[2]*x[12]-0.884*x[1]*x[3]*x[6]+0.2251*x[1]*x[4]*x[17]-0.3131*x[1]*x[5]*x[10]-0.9849*x[1]*x[5]*x[17]-0.295*x[1]*x[7]*x[8]-0.7603*x[1]*x[8]*x[16]-0.3427*x[1]*x[10]*x[15]+0.6111*x[1]*x[11]*x[12]-0.7251*x[1]*x[11]*x[15]-0.8954*x[1]*x[11]*x[20]-0.1144*x[1]*x[13]*x[16]-0.3666*x[1]*x[13]*x[18]+0.0777*x[1]*x[17]*x[18]+0.7389*x[2]*x[3]*x[7]-0.1392*x[2]*x[3]*x[8]-0.6011*x[2]*x[3]*x[13]+0.821*x[2]*x[5]*x[6]-0.6067*x[2]*x[5]*x[7]+0.3819*x[2]*x[5]*x[13]-0.8417*x[2]*x[6]*x[12]-0.274*x[2]*x[7]*x[9]-0.1405*x[2]*x[7]*x[11]-0.2938*x[2]*x[7]*x[16]+0.1001*x[2]*x[8]*x[15]-0.8511*x[2]*x[9]*x[16]-0.6329*x[2]*x[10]*x[11]-0.4213*x[2]*x[12]*x[14]+0.17*x[2]*x[12]*x[16]+0.9081*x[2]*x[12]*x[17]-0.8187*x[2]*x[13]*x[14]-0.0408*x[2]*x[13]*x[17]-0.0431*x[2]*x[14]*x[19]+0.4051*x[2]*x[15]*x[20]+0.643*x[2]*x[16]*x[18]+0.6713*x[2]*x[19]*x[20]-0.4798*x[3]*x[4]*x[14]-0.977*x[3]*x[4]*x[16]-0.9878*x[3]*x[5]*x[7]+0.6481*x[3]*x[5]*x[8]+0.9975*x[3]*x[5]*x[10]-0.0685*x[3]*x[7]*x[13]+0.4871*x[3]*x[8]*x[9]-0.4233*x[3]*x[8]*x[16]+0.4015*x[3]*x[9]*x[13]+0.1276*x[3]*x[9]*x[16]-0.0557*x[3]*x[10]*x[15]+0.0433*x[3]*x[10]*x[17]-0.8662*x[3]*x[11]*x[16]+0.0459*x[3]*x[12]*x[17]-0.6674*x[3]*x[13]*x[15]-0.3867*x[3]*x[13]*x[16]-0.1975*x[3]*x[14]*x[16]+0.2901*x[3]*x[14]*x[17]+0.0044*x[3]*x[14]*x[18]+0.5012*x[3]*x[15]*x[16]-0.1144*x[3]*x[15]*x[19]-0.0587*x[4]*x[5]*x[10]-0.9374*x[4]*x[5]*x[12]+0.7683*x[4]*x[5]*x[13]-0.7041*x[4]*x[5]*x[14]-0.1576*x[4]*x[5]*x[15]-0.5724*x[4]*x[6]*x[7]+0.7281*x[4]*x[6]*x[10]-0.5655*x[4]*x[7]*x[19]+0.6822*x[4]*x[8]*x[10]+0.8054*x[4]*x[8]*x[16]-0.9361*x[4]*x[8]*x[19]+0.8447*x[4]*x[9]*x[12]-0.4645*x[4]*x[9]*x[15]-0.2069*x[4]*x[9]*x[16]-0.4978*x[4]*x[10]*x[11]+0.6556*x[4]*x[10]*x[13]-0.2601*x[4]*x[11]*x[13]-0.5436*x[4]*x[11]*x[14]+0.2275*x[4]*x[12]*x[13]-0.803*x[4]*x[12]*x[15]-0.6815*x[4]*x[12]*x[18]+0.2991*x[4]*x[13]*x[19]-0.409*x[4]*x[14]*x[16]+0.3336*x[4]*x[14]*x[19]-0.4534*x[5]*x[6]*x[7]-0.1516*x[5]*x[6]*x[11]+0.3085*x[5]*x[6]*x[13]-0.9891*x[5]*x[6]*x[15]-0.1594*x[5]*x[6]*x[16]-0.9979*x[5]*x[6]*x[20]-0.1241*x[5]*x[7]*x[8]-0.1404*x[5]*x[7]*x[10]-0.1739*x[5]*x[7]*x[15]-0.4966*x[5]*x[8]*x[12]-0.2302*x[5]*x[8]*x[13]+0.5476*x[5]*x[9]*x[15]+0.5603*x[5]*x[9]*x[16]-0.7767*x[5]*x[9]*x[17]+0.9763*x[5]*x[10]*x[14]+0.0067*x[5]*x[10]*x[15]+0.9364*x[5]*x[10]*x[16]+0.4171*x[5]*x[10]*x[17]+0.3077*x[5]*x[11]*x[12]-0.117*x[5]*x[11]*x[13]+0.1814*x[5]*x[11]*x[16]-0.8654*x[5]*x[12]*x[17]+0.0597*x[5]*x[12]*x[20]+0.655*x[5]*x[18]*x[19]-0.6409*x[5]*x[19]*x[20]+0.6274*x[6]*x[7]*x[8]-0.028*x[6]*x[7]*x[10]-0.4458*x[6]*x[7]*x[13]-0.3563*x[6]*x[8]*x[12]+0.3716*x[6]*x[8]*x[14]-0.7721*x[6]*x[8]*x[20]+0.1739*x[6]*x[9]*x[13]-0.9773*x[6]*x[10]*x[17]-0.4559*x[6]*x[11]*x[13]-0.9292*x[6]*x[12]*x[13]-0.3356*x[6]*x[18]*x[20]-0.7243*x[7]*x[8]*x[10]+0.5991*x[7]*x[8]*x[15]+0.9119*x[7]*x[8]*x[16]+0.8243*x[7]*x[9]*x[15]+0.1699*x[7]*x[9]*x[16]-0.0124*x[7]*x[10]*x[12]+0.605*x[7]*x[10]*x[18]-0.8689*x[7]*x[11]*x[15]-0.5567*x[7]*x[11]*x[18]-0.9789*x[7]*x[12]*x[18]+0.4817*x[7]*x[14]*x[18]+0.079*x[7]*x[15]*x[18]-0.0088*x[7]*x[16]*x[19]-0.6023*x[7]*x[16]*x[20]-0.6756*x[7]*x[19]*x[20]-0.7207*x[8]*x[9]*x[10]-0.1462*x[8]*x[9]*x[16]+0.9907*x[8]*x[9]*x[18]-0.158*x[8]*x[10]*x[13]+0.1008*x[8]*x[10]*x[15]+0.4632*x[8]*x[11]*x[15]+0.8357*x[8]*x[12]*x[14]-0.5759*x[8]*x[13]*x[18]+0.7759*x[8]*x[14]*x[20]+0.9304*x[8]*x[15]*x[19]-0.0538*x[8]*x[16]*x[20]+0.3213*x[9]*x[10]*x[14]-0.0491*x[9]*x[11]*x[13]+0.7464*x[9]*x[11]*x[16]-0.3716*x[9]*x[11]*x[19]+0.4789*x[9]*x[13]*x[16]+0.354*x[9]*x[13]*x[17]-0.7807*x[9]*x[14]*x[16]-0.7548*x[9]*x[16]*x[20]+0.7451*x[10]*x[12]*x[13]+0.1187*x[10]*x[12]*x[16]+0.8036*x[10]*x[13]*x[18]-0.0688*x[10]*x[15]*x[17]+0.1676*x[10]*x[15]*x[18]-0.2841*x[10]*x[16]*x[18]-0.5651*x[10]*x[17]*x[19]+0.0222*x[11]*x[15]*x[18]+0.0319*x[11]*x[15]*x[20]+0.1239*x[11]*x[16]*x[19]-0.4136*x[11]*x[17]*x[20]+0.2394*x[11]*x[19]*x[20]-0.3625*x[12]*x[17]*x[19]-0.2945*x[13]*x[14]*x[15]+0.9124*x[13]*x[15]*x[17]+0.2547*x[13]*x[15]*x[19]-0.8264*x[15]*x[16]*x[19]-0.0998*x[15]*x[17]*x[19]-0.9152*x[16]*x[19]*x[20]+0.0753*x[3] <= 47.061)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
