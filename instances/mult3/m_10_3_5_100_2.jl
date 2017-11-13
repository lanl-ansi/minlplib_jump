using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
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
@NLconstraint(m, e1, -(0.9658*x[1]*x[2]-0.8057*x[1]*x[3]+0.2716*x[1]*x[4]-0.8667*x[1]*x[5]-0.6541*x[1]*x[6]-0.0723*x[1]*x[7]-0.1218*x[1]*x[8]+0.6082*x[1]*x[9]-0.1423*x[1]*x[10]+0.5249*x[2]*x[3]+0.4167*x[2]*x[4]-0.507*x[2]*x[5]+0.8024*x[2]*x[6]-0.8732*x[2]*x[7]-0.9641*x[2]*x[8]+0.8948*x[2]*x[9]-0.0228*x[2]*x[10]-0.2308*x[3]*x[4]-0.8365*x[3]*x[5]-0.0407*x[3]*x[6]-0.6009*x[3]*x[7]-0.2916*x[3]*x[8]-0.1374*x[3]*x[9]+0.8125*x[3]*x[10]+0.8725*x[4]*x[5]+0.4909*x[4]*x[6]+0.9356*x[4]*x[7]+0.7571*x[4]*x[8]-0.4834*x[4]*x[9]+0.5875*x[4]*x[10]-0.8418*x[5]*x[6]-0.9637*x[5]*x[7]-0.3318*x[5]*x[8]-0.3304*x[5]*x[9]+0.0086*x[5]*x[10]-0.2382*x[6]*x[7]+0.7865*x[6]*x[8]-0.4775*x[6]*x[9]-0.0112*x[6]*x[10]+0.4793*x[7]*x[8]+0.2361*x[7]*x[9]+0.3537*x[7]*x[10]+0.4693*x[8]*x[9]+0.7316*x[8]*x[10]+0.3182*x[9]*x[10]+0.8041*x[1]-0.4561*x[2]+0.8676*x[3]-0.7196*x[4]-0.3273*x[5]-0.0517*x[6]-0.9975*x[7]-0.5365*x[8]+0.9168*x[9]+0.7715*x[10]+0.7603*x[1]*x[2]*x[3]-0.5705*x[1]*x[2]*x[4]+0.9037*x[1]*x[2]*x[5]+0.4382*x[1]*x[2]*x[6]-0.7787*x[1]*x[2]*x[7]+0.9149*x[1]*x[2]*x[8]+0.2939*x[1]*x[2]*x[9]+0.1637*x[1]*x[2]*x[10]-0.9742*x[1]*x[3]*x[4]-0.4477*x[1]*x[3]*x[5]+0.6009*x[1]*x[3]*x[6]-0.3442*x[1]*x[3]*x[7]+0.1588*x[1]*x[3]*x[8]-0.9521*x[1]*x[3]*x[9]+0.3398*x[1]*x[3]*x[10]-0.6371*x[1]*x[4]*x[5]-0.4268*x[1]*x[4]*x[6]+0.3169*x[1]*x[4]*x[7]+0.1779*x[1]*x[4]*x[8]-0.8726*x[1]*x[4]*x[9]-0.7344*x[1]*x[4]*x[10]+0.4833*x[1]*x[5]*x[6]+0.0007*x[1]*x[5]*x[7]-0.9371*x[1]*x[5]*x[8]+0.9815*x[1]*x[5]*x[9]-0.9932*x[1]*x[5]*x[10]+0.3986*x[1]*x[6]*x[7]+0.5181*x[1]*x[6]*x[8]-0.4916*x[1]*x[6]*x[9]-0.3371*x[1]*x[6]*x[10]+0.1457*x[1]*x[7]*x[8]+0.9832*x[1]*x[7]*x[9]-0.0207*x[1]*x[7]*x[10]+0.1223*x[1]*x[8]*x[9]+0.2128*x[1]*x[8]*x[10]-0.8286*x[1]*x[9]*x[10]-0.4837*x[2]*x[3]*x[4]-0.0592*x[2]*x[3]*x[5]+0.6266*x[2]*x[3]*x[6]+0.4492*x[2]*x[3]*x[7]+0.9861*x[2]*x[3]*x[8]-0.8687*x[2]*x[3]*x[9]-0.8504*x[2]*x[3]*x[10]+0.6624*x[2]*x[4]*x[5]-0.1745*x[2]*x[4]*x[6]+0.3241*x[2]*x[4]*x[7]-0.4919*x[2]*x[4]*x[8]-0.0339*x[2]*x[4]*x[9]+0.2248*x[2]*x[4]*x[10]+0.366*x[2]*x[5]*x[6]-0.1987*x[2]*x[5]*x[7]-0.5784*x[2]*x[5]*x[8]+0.8198*x[2]*x[5]*x[9]-0.0486*x[2]*x[5]*x[10]+0.7126*x[2]*x[6]*x[7]+0.8337*x[2]*x[6]*x[8]+0.0308*x[2]*x[6]*x[9]+0.4378*x[2]*x[6]*x[10]-0.4249*x[2]*x[7]*x[8]-0.876*x[2]*x[7]*x[9]-0.247*x[2]*x[7]*x[10]-0.482*x[2]*x[8]*x[9]+0.0808*x[2]*x[8]*x[10]+0.0687*x[2]*x[9]*x[10]-0.9379*x[3]*x[4]*x[5]-0.1556*x[3]*x[4]*x[6]-0.1534*x[3]*x[4]*x[7]+0.2972*x[3]*x[4]*x[8]-0.682*x[3]*x[4]*x[9]-0.2246*x[3]*x[4]*x[10]+0.2078*x[3]*x[5]*x[6]+0.0801*x[3]*x[5]*x[7]+0.412*x[3]*x[5]*x[8]-0.7653*x[3]*x[5]*x[9]+0.7097*x[3]*x[5]*x[10]+0.1609*x[3]*x[6]*x[7]+0.0463*x[3]*x[6]*x[8]-0.049*x[3]*x[6]*x[9]-0.9321*x[3]*x[6]*x[10]+0.5337*x[3]*x[7]*x[8]+0.6369*x[3]*x[7]*x[9]-0.8873*x[3]*x[7]*x[10]-0.5746*x[3]*x[8]*x[9]+0.4865*x[3]*x[8]*x[10]-0.3803*x[3]*x[9]*x[10]-0.7699*x[4]*x[5]*x[6]+0.7363*x[4]*x[5]*x[7]-0.2812*x[4]*x[5]*x[8]+0.8172*x[4]*x[5]*x[9]-0.5754*x[4]*x[5]*x[10]-0.2821*x[4]*x[6]*x[7]-0.8113*x[4]*x[6]*x[8]+0.3038*x[4]*x[6]*x[9]+0.8093*x[4]*x[6]*x[10]+0.5277*x[4]*x[7]*x[8]+0.7849*x[4]*x[7]*x[9]+0.6706*x[4]*x[7]*x[10]+0.0152*x[4]*x[8]*x[9]-0.009*x[4]*x[8]*x[10]+0.0082*x[4]*x[9]*x[10]+0.5372*x[5]*x[6]*x[7]-0.2333*x[5]*x[6]*x[8]-0.8164*x[5]*x[6]*x[9]+0.8521*x[5]*x[6]*x[10]+0.4163*x[5]*x[7]*x[8]+0.6625*x[5]*x[7]*x[9]+0.6022*x[5]*x[7]*x[10]+0.1782*x[5]*x[8]*x[9]+0.63*x[5]*x[8]*x[10]+0.4385*x[5]*x[9]*x[10]+0.9963*x[6]*x[7]*x[8]+0.8737*x[6]*x[7]*x[9]+0.382*x[6]*x[7]*x[10]+0.4417*x[6]*x[8]*x[9]+0.2669*x[6]*x[8]*x[10]+0.7712*x[6]*x[9]*x[10]+0.5226*x[7]*x[8]*x[9]+0.3681*x[7]*x[8]*x[10]+0.7255*x[7]*x[9]*x[10]-0.4059*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.5619*x[1]*x[3]-0.5013*x[1]*x[2]+0.6594*x[1]*x[4]-0.6765*x[1]*x[5]+0.8412*x[1]*x[6]-0.6171*x[1]*x[7]+0.5953*x[1]*x[8]+0.9679*x[1]*x[9]+0.7684*x[1]*x[10]+0.3959*x[2]*x[3]+0.61*x[2]*x[4]+0.6235*x[2]*x[5]-0.2316*x[2]*x[6]+0.2738*x[2]*x[7]-0.5261*x[2]*x[8]+0.6011*x[2]*x[9]+0.421*x[2]*x[10]-0.9893*x[3]*x[4]-0.5615*x[3]*x[5]+0.7985*x[3]*x[6]+0.1976*x[3]*x[7]-0.1837*x[3]*x[8]-0.7994*x[3]*x[9]-0.7895*x[3]*x[10]+0.146*x[4]*x[5]-0.5227*x[4]*x[6]+0.3006*x[4]*x[7]+0.8038*x[4]*x[8]-0.0596*x[4]*x[9]+0.152*x[4]*x[10]+0.5178*x[5]*x[6]-0.1747*x[5]*x[7]+0.9976*x[5]*x[8]+0.1196*x[5]*x[9]-0.5697*x[5]*x[10]-0.8498*x[6]*x[7]-0.6921*x[6]*x[8]-0.0832*x[6]*x[9]+0.7875*x[6]*x[10]+0.2374*x[7]*x[8]+0.2773*x[7]*x[9]+0.8304*x[7]*x[10]-0.2771*x[8]*x[9]+0.8288*x[8]*x[10]-0.6953*x[9]*x[10]+0.9491*x[1]-0.1701*x[2]+0.4837*x[3]-0.9392*x[4]-0.0295*x[5]+0.8232*x[6]+0.8049*x[7]+0.8403*x[8]+0.0402*x[9]+0.4708*x[10]+0.1129*x[1]*x[2]*x[3]-0.3254*x[1]*x[2]*x[4]-0.6267*x[1]*x[2]*x[5]-0.2341*x[1]*x[2]*x[6]+0.332*x[1]*x[2]*x[7]+0.8281*x[1]*x[2]*x[8]-0.1747*x[1]*x[2]*x[9]+0.9767*x[1]*x[2]*x[10]-0.6643*x[1]*x[3]*x[4]-0.7506*x[1]*x[3]*x[5]+0.0168*x[1]*x[3]*x[6]-0.0513*x[1]*x[3]*x[7]-0.6878*x[1]*x[3]*x[8]-0.0265*x[1]*x[3]*x[9]+0.6138*x[1]*x[3]*x[10]+0.9757*x[1]*x[4]*x[5]-0.8293*x[1]*x[4]*x[6]+0.9219*x[1]*x[4]*x[7]+0.403*x[1]*x[4]*x[8]-0.0383*x[1]*x[4]*x[9]-0.1156*x[1]*x[4]*x[10]-0.9505*x[1]*x[5]*x[6]-0.5166*x[1]*x[5]*x[7]-0.7652*x[1]*x[5]*x[8]-0.9915*x[1]*x[5]*x[9]-0.477*x[1]*x[5]*x[10]+0.1948*x[1]*x[6]*x[7]-0.9361*x[1]*x[6]*x[8]-0.0442*x[1]*x[6]*x[9]-0.4517*x[1]*x[6]*x[10]-0.8448*x[1]*x[7]*x[8]-0.8462*x[1]*x[7]*x[9]+0.7179*x[1]*x[7]*x[10]+0.1438*x[1]*x[8]*x[9]-0.831*x[1]*x[8]*x[10]+0.1377*x[1]*x[9]*x[10]+0.2404*x[2]*x[3]*x[4]+0.4776*x[2]*x[3]*x[5]+0.9781*x[2]*x[3]*x[6]-0.4061*x[2]*x[3]*x[7]-0.8912*x[2]*x[3]*x[8]+0.9125*x[2]*x[3]*x[9]+0.706*x[2]*x[3]*x[10]-0.8906*x[2]*x[4]*x[5]+0.942*x[2]*x[4]*x[6]-0.0261*x[2]*x[4]*x[7]-0.068*x[2]*x[4]*x[8]-0.847*x[2]*x[4]*x[9]+0.5746*x[2]*x[4]*x[10]-0.3526*x[2]*x[5]*x[6]+0.4389*x[2]*x[5]*x[7]+0.4542*x[2]*x[5]*x[8]+0.0367*x[2]*x[5]*x[9]-0.3709*x[2]*x[5]*x[10]+0.8193*x[2]*x[6]*x[7]+0.5633*x[2]*x[6]*x[8]-0.0382*x[2]*x[6]*x[9]-0.959*x[2]*x[6]*x[10]-0.7036*x[2]*x[7]*x[8]+0.7485*x[2]*x[7]*x[9]-0.0868*x[2]*x[7]*x[10]-0.6044*x[2]*x[8]*x[9]+0.3054*x[2]*x[8]*x[10]+0.6064*x[2]*x[9]*x[10]-0.5288*x[3]*x[4]*x[5]-0.0285*x[3]*x[4]*x[6]-0.5481*x[3]*x[4]*x[7]-0.7647*x[3]*x[4]*x[8]+0.6671*x[3]*x[4]*x[9]-0.0921*x[3]*x[4]*x[10]+0.7822*x[3]*x[5]*x[6]-0.688*x[3]*x[5]*x[7]-0.623*x[3]*x[5]*x[8]-0.6958*x[3]*x[5]*x[9]+0.2072*x[3]*x[5]*x[10]+0.8573*x[3]*x[6]*x[7]+0.9353*x[3]*x[6]*x[8]-0.7581*x[3]*x[6]*x[9]-0.6678*x[3]*x[6]*x[10]+0.7244*x[3]*x[7]*x[8]+0.497*x[3]*x[7]*x[9]+0.8841*x[3]*x[7]*x[10]-0.419*x[3]*x[8]*x[9]-0.5639*x[3]*x[8]*x[10]+0.3384*x[3]*x[9]*x[10]+0.8517*x[4]*x[5]*x[6]+0.2487*x[4]*x[5]*x[7]+0.352*x[4]*x[5]*x[8]-0.9956*x[4]*x[5]*x[9]+0.1963*x[4]*x[5]*x[10]+0.6505*x[4]*x[6]*x[7]+0.8868*x[4]*x[6]*x[8]+0.064*x[4]*x[6]*x[9]-0.2306*x[4]*x[6]*x[10]+0.3456*x[4]*x[7]*x[8]-0.0124*x[4]*x[7]*x[9]-0.7644*x[4]*x[7]*x[10]-0.9407*x[4]*x[8]*x[9]-0.5041*x[4]*x[8]*x[10]-0.4612*x[4]*x[9]*x[10]+0.6372*x[5]*x[6]*x[7]-0.9423*x[5]*x[6]*x[8]+0.4769*x[5]*x[6]*x[9]+0.6691*x[5]*x[6]*x[10]-0.6518*x[5]*x[7]*x[8]+0.5892*x[5]*x[7]*x[9]+0.1282*x[5]*x[7]*x[10]-0.0097*x[5]*x[8]*x[9]-0.0037*x[5]*x[8]*x[10]-0.4974*x[5]*x[9]*x[10]-0.1368*x[6]*x[7]*x[8]-0.663*x[6]*x[7]*x[9]-0.3471*x[6]*x[7]*x[10]-0.9665*x[6]*x[8]*x[9]-0.6331*x[6]*x[8]*x[10]-0.0998*x[6]*x[9]*x[10]+0.9348*x[7]*x[8]*x[9]-0.5585*x[7]*x[8]*x[10]-0.1588*x[7]*x[9]*x[10]+0.3535*x[8]*x[9]*x[10] <= 82.649)
@NLconstraint(m, e3, 0.5066*x[1]*x[3]-0.7468*x[1]*x[2]+0.5209*x[1]*x[4]-0.8096*x[1]*x[5]+0.2097*x[1]*x[6]-0.8223*x[1]*x[7]+0.8219*x[1]*x[8]+0.8915*x[1]*x[9]+0.4384*x[1]*x[10]+0.0104*x[2]*x[3]-0.6145*x[2]*x[4]+0.3569*x[2]*x[5]-0.0835*x[2]*x[6]-0.1778*x[2]*x[7]+0.1688*x[2]*x[8]-0.6302*x[2]*x[9]+0.0573*x[2]*x[10]+0.8851*x[3]*x[4]+0.9515*x[3]*x[5]-0.0604*x[3]*x[6]-0.8915*x[3]*x[7]-0.0968*x[3]*x[8]-0.5954*x[3]*x[9]-0.902*x[3]*x[10]+0.9315*x[4]*x[5]+0.4294*x[4]*x[6]+0.7398*x[4]*x[7]-0.6759*x[4]*x[8]-0.0166*x[4]*x[9]+0.3176*x[4]*x[10]-0.434*x[5]*x[6]-0.8219*x[5]*x[7]-0.9323*x[5]*x[8]-0.2384*x[5]*x[9]+0.2604*x[5]*x[10]+0.4567*x[6]*x[7]+0.7508*x[6]*x[8]+0.1384*x[6]*x[9]-0.5557*x[6]*x[10]-0.2385*x[7]*x[8]+0.0199*x[7]*x[9]+0.7632*x[7]*x[10]-0.9947*x[8]*x[9]-0.3877*x[8]*x[10]+0.8177*x[9]*x[10]-0.3725*x[1]-0.3487*x[2]-0.8521*x[3]+0.7201*x[4]-0.9411*x[5]-0.6075*x[6]+0.4446*x[7]-0.6889*x[8]+0.5368*x[9]+0.9675*x[10]+0.4072*x[1]*x[2]*x[3]+0.3477*x[1]*x[2]*x[4]-0.8469*x[1]*x[2]*x[5]-0.0643*x[1]*x[2]*x[6]+0.9855*x[1]*x[2]*x[7]+0.169*x[1]*x[2]*x[8]+0.1277*x[1]*x[2]*x[9]+0.1701*x[1]*x[2]*x[10]-0.2288*x[1]*x[3]*x[4]+0.6269*x[1]*x[3]*x[5]-0.165*x[1]*x[3]*x[6]-0.3328*x[1]*x[3]*x[7]+0.0711*x[1]*x[3]*x[8]+0.8548*x[1]*x[3]*x[9]+0.4886*x[1]*x[3]*x[10]-0.4103*x[1]*x[4]*x[5]+0.1394*x[1]*x[4]*x[6]-0.3792*x[1]*x[4]*x[7]-0.061*x[1]*x[4]*x[8]-0.6923*x[1]*x[4]*x[9]+0.194*x[1]*x[4]*x[10]-0.2253*x[1]*x[5]*x[6]-0.6197*x[1]*x[5]*x[7]-0.799*x[1]*x[5]*x[8]-0.9851*x[1]*x[5]*x[9]-0.164*x[1]*x[5]*x[10]+0.1448*x[1]*x[6]*x[7]+0.0185*x[1]*x[6]*x[8]+0.3829*x[1]*x[6]*x[9]+0.2687*x[1]*x[6]*x[10]+0.9428*x[1]*x[7]*x[8]+0.9418*x[1]*x[7]*x[9]+0.4694*x[1]*x[7]*x[10]+0.8523*x[1]*x[8]*x[9]-0.87*x[1]*x[8]*x[10]-0.5796*x[1]*x[9]*x[10]-0.486*x[2]*x[3]*x[4]+0.3746*x[2]*x[3]*x[5]+0.4788*x[2]*x[3]*x[6]+0.0586*x[2]*x[3]*x[7]+0.1473*x[2]*x[3]*x[8]+0.2498*x[2]*x[3]*x[9]-0.6388*x[2]*x[3]*x[10]+0.2472*x[2]*x[4]*x[5]-0.3687*x[2]*x[4]*x[6]+0.3536*x[2]*x[4]*x[7]+0.0072*x[2]*x[4]*x[8]-0.5806*x[2]*x[4]*x[9]-0.5058*x[2]*x[4]*x[10]-0.116*x[2]*x[5]*x[6]+0.191*x[2]*x[5]*x[7]+0.3699*x[2]*x[5]*x[8]+0.3731*x[2]*x[5]*x[9]+0.0031*x[2]*x[5]*x[10]+0.9294*x[2]*x[6]*x[7]-0.6047*x[2]*x[6]*x[8]+0.2348*x[2]*x[6]*x[9]+0.8324*x[2]*x[6]*x[10]+0.6608*x[2]*x[7]*x[8]-0.1673*x[2]*x[7]*x[9]-0.9519*x[2]*x[7]*x[10]+0.8066*x[2]*x[8]*x[9]-0.9313*x[2]*x[8]*x[10]-0.0297*x[2]*x[9]*x[10]-0.7382*x[3]*x[4]*x[5]-0.672*x[3]*x[4]*x[6]+0.3061*x[3]*x[4]*x[7]-0.1984*x[3]*x[4]*x[8]-0.8696*x[3]*x[4]*x[9]-0.5035*x[3]*x[4]*x[10]+0.2835*x[3]*x[5]*x[6]+0.2576*x[3]*x[5]*x[7]-0.5016*x[3]*x[5]*x[8]-0.738*x[3]*x[5]*x[9]-0.6402*x[3]*x[5]*x[10]+0.2333*x[3]*x[6]*x[7]-0.1863*x[3]*x[6]*x[8]+0.6045*x[3]*x[6]*x[9]-0.5819*x[3]*x[6]*x[10]-0.809*x[3]*x[7]*x[8]-0.3189*x[3]*x[7]*x[9]+0.802*x[3]*x[7]*x[10]-0.8383*x[3]*x[8]*x[9]+0.3569*x[3]*x[8]*x[10]+0.0003*x[3]*x[9]*x[10]+0.8089*x[4]*x[5]*x[6]-0.875*x[4]*x[5]*x[7]+0.4462*x[4]*x[5]*x[8]-0.3338*x[4]*x[5]*x[9]+0.1814*x[4]*x[5]*x[10]-0.8771*x[4]*x[6]*x[7]-0.9101*x[4]*x[6]*x[8]+0.1635*x[4]*x[6]*x[9]-0.1352*x[4]*x[6]*x[10]-0.8026*x[4]*x[7]*x[8]+0.9155*x[4]*x[7]*x[9]+0.5442*x[4]*x[7]*x[10]-0.7053*x[4]*x[8]*x[9]+0.4455*x[4]*x[8]*x[10]+0.9929*x[4]*x[9]*x[10]-0.3529*x[5]*x[6]*x[7]-0.8803*x[5]*x[6]*x[8]-0.9694*x[5]*x[6]*x[9]+0.7938*x[5]*x[6]*x[10]+0.664*x[5]*x[7]*x[8]+0.5083*x[5]*x[7]*x[9]-0.3124*x[5]*x[7]*x[10]-0.4061*x[5]*x[8]*x[9]+0.0858*x[5]*x[8]*x[10]-0.2714*x[5]*x[9]*x[10]-0.8232*x[6]*x[7]*x[8]-0.1146*x[6]*x[7]*x[9]+0.9703*x[6]*x[7]*x[10]+0.9858*x[6]*x[8]*x[9]+0.859*x[6]*x[8]*x[10]+0.0264*x[6]*x[9]*x[10]-0.8325*x[7]*x[8]*x[9]-0.2402*x[7]*x[8]*x[10]+0.9962*x[7]*x[9]*x[10]-0.612*x[8]*x[9]*x[10] <= 43.072)
@NLconstraint(m, e4, 0.6845*x[1]*x[3]-0.9142*x[1]*x[2]-0.7219*x[1]*x[4]+0.7798*x[1]*x[5]+0.0733*x[1]*x[6]-0.7376*x[1]*x[7]+0.0256*x[1]*x[8]-0.2386*x[1]*x[9]+0.8016*x[1]*x[10]+0.6794*x[2]*x[3]+0.6011*x[2]*x[4]-0.1622*x[2]*x[5]-0.0369*x[2]*x[6]-0.5992*x[2]*x[7]+0.9241*x[2]*x[8]+0.9873*x[2]*x[9]+0.5992*x[2]*x[10]+0.8133*x[3]*x[4]+0.4239*x[3]*x[5]-0.1981*x[3]*x[6]+0.5006*x[3]*x[7]-0.5385*x[3]*x[8]+0.1593*x[3]*x[9]-0.0871*x[3]*x[10]-0.9382*x[4]*x[5]-0.0148*x[4]*x[6]-0.4904*x[4]*x[7]+0.5096*x[4]*x[8]-0.4809*x[4]*x[9]-0.4848*x[4]*x[10]+0.3062*x[5]*x[6]+0.9318*x[5]*x[7]-0.1853*x[5]*x[8]+0.5946*x[5]*x[9]-0.9998*x[5]*x[10]+0.054*x[6]*x[7]+0.9006*x[6]*x[8]-0.322*x[6]*x[9]-0.4127*x[6]*x[10]-0.6934*x[7]*x[8]+0.408*x[7]*x[9]-0.6923*x[7]*x[10]-0.0869*x[8]*x[9]-0.0219*x[8]*x[10]+0.4814*x[9]*x[10]-0.0782*x[1]-0.3978*x[2]-0.0586*x[3]+0.8491*x[4]-0.9975*x[5]+0.5027*x[6]+0.496*x[7]-0.6663*x[8]+0.2055*x[9]-0.1878*x[10]+(-0.4474*x[1]*x[2]*x[3])-0.8875*x[1]*x[2]*x[4]-0.7171*x[1]*x[2]*x[5]-0.2179*x[1]*x[2]*x[6]-0.317*x[1]*x[2]*x[7]-0.0332*x[1]*x[2]*x[8]-0.625*x[1]*x[2]*x[9]+0.2913*x[1]*x[2]*x[10]+0.0755*x[1]*x[3]*x[4]-0.0178*x[1]*x[3]*x[5]-0.215*x[1]*x[3]*x[6]-0.7588*x[1]*x[3]*x[7]+0.2416*x[1]*x[3]*x[8]-0.1383*x[1]*x[3]*x[9]+0.2175*x[1]*x[3]*x[10]-0.5311*x[1]*x[4]*x[5]-0.6322*x[1]*x[4]*x[6]-0.8211*x[1]*x[4]*x[7]-0.2421*x[1]*x[4]*x[8]-0.9794*x[1]*x[4]*x[9]+0.6866*x[1]*x[4]*x[10]+0.144*x[1]*x[5]*x[6]+0.935*x[1]*x[5]*x[7]-0.7224*x[1]*x[5]*x[8]-0.79*x[1]*x[5]*x[9]-0.6261*x[1]*x[5]*x[10]-0.59*x[1]*x[6]*x[7]+0.8708*x[1]*x[6]*x[8]+0.5423*x[1]*x[6]*x[9]+0.3356*x[1]*x[6]*x[10]+0.142*x[1]*x[7]*x[8]+0.5119*x[1]*x[7]*x[9]+0.7599*x[1]*x[7]*x[10]-0.4022*x[1]*x[8]*x[9]+0.4446*x[1]*x[8]*x[10]-0.8166*x[1]*x[9]*x[10]+0.6446*x[2]*x[3]*x[4]-0.1284*x[2]*x[3]*x[5]-0.3651*x[2]*x[3]*x[6]-0.2567*x[2]*x[3]*x[7]+0.1421*x[2]*x[3]*x[8]-0.8825*x[2]*x[3]*x[9]-0.6058*x[2]*x[3]*x[10]+0.503*x[2]*x[4]*x[5]-0.0462*x[2]*x[4]*x[6]-0.717*x[2]*x[4]*x[7]+0.0253*x[2]*x[4]*x[8]-0.9476*x[2]*x[4]*x[9]-0.3171*x[2]*x[4]*x[10]+0.5691*x[2]*x[5]*x[6]-0.3612*x[2]*x[5]*x[7]+0.0488*x[2]*x[5]*x[8]+0.423*x[2]*x[5]*x[9]+0.2762*x[2]*x[5]*x[10]+0.0221*x[2]*x[6]*x[7]+0.3975*x[2]*x[6]*x[8]-0.5281*x[2]*x[6]*x[9]-0.722*x[2]*x[6]*x[10]-0.1433*x[2]*x[7]*x[8]+0.1957*x[2]*x[7]*x[9]+0.7882*x[2]*x[7]*x[10]+0.9988*x[2]*x[8]*x[9]+0.8552*x[2]*x[8]*x[10]+0.3681*x[2]*x[9]*x[10]-0.6187*x[3]*x[4]*x[5]-0.2208*x[3]*x[4]*x[6]-0.8222*x[3]*x[4]*x[7]+0.3944*x[3]*x[4]*x[8]+0.4808*x[3]*x[4]*x[9]-0.8075*x[3]*x[4]*x[10]-0.8579*x[3]*x[5]*x[6]-0.5665*x[3]*x[5]*x[7]-0.895*x[3]*x[5]*x[8]-0.3975*x[3]*x[5]*x[9]+0.4934*x[3]*x[5]*x[10]+0.2624*x[3]*x[6]*x[7]+0.2931*x[3]*x[6]*x[8]-0.8108*x[3]*x[6]*x[9]-0.6769*x[3]*x[6]*x[10]-0.2571*x[3]*x[7]*x[8]+0.1818*x[3]*x[7]*x[9]-0.5706*x[3]*x[7]*x[10]+0.6166*x[3]*x[8]*x[9]-0.7727*x[3]*x[8]*x[10]-0.2887*x[3]*x[9]*x[10]-0.6625*x[4]*x[5]*x[6]-0.4673*x[4]*x[5]*x[7]+0.9985*x[4]*x[5]*x[8]-0.0513*x[4]*x[5]*x[9]-0.243*x[4]*x[5]*x[10]+0.9283*x[4]*x[6]*x[7]-0.9095*x[4]*x[6]*x[8]+0.0583*x[4]*x[6]*x[9]+0.823*x[4]*x[6]*x[10]-0.5969*x[4]*x[7]*x[8]+0.8222*x[4]*x[7]*x[9]-0.0405*x[4]*x[7]*x[10]-0.131*x[4]*x[8]*x[9]-0.3485*x[4]*x[8]*x[10]+0.8998*x[4]*x[9]*x[10]-0.2805*x[5]*x[6]*x[7]+0.5217*x[5]*x[6]*x[8]-0.933*x[5]*x[6]*x[9]+0.9836*x[5]*x[6]*x[10]-0.9513*x[5]*x[7]*x[8]-0.9415*x[5]*x[7]*x[9]-0.4551*x[5]*x[7]*x[10]+0.4972*x[5]*x[8]*x[9]-0.429*x[5]*x[8]*x[10]-0.5465*x[5]*x[9]*x[10]-0.1411*x[6]*x[7]*x[8]+0.5444*x[6]*x[7]*x[9]+0.1779*x[6]*x[7]*x[10]+0.0402*x[6]*x[8]*x[9]-0.9732*x[6]*x[8]*x[10]-0.3496*x[6]*x[9]*x[10]-0.2575*x[7]*x[8]*x[9]+0.6694*x[7]*x[8]*x[10]-0.4773*x[7]*x[9]*x[10]+0.4754*x[8]*x[9]*x[10] <= 77.777)
@NLconstraint(m, e5, 0.034*x[1]*x[2]-0.1986*x[1]*x[3]+0.1794*x[1]*x[4]-0.2451*x[1]*x[5]-0.1578*x[1]*x[6]+0.2522*x[1]*x[7]+0.562*x[1]*x[8]+0.9868*x[1]*x[9]+0.0232*x[1]*x[10]+0.5897*x[2]*x[3]+0.1998*x[2]*x[4]-0.9026*x[2]*x[5]+0.5954*x[2]*x[6]-0.0184*x[2]*x[7]-0.9132*x[2]*x[8]-0.0269*x[2]*x[9]+0.5776*x[2]*x[10]+0.2437*x[3]*x[4]-0.9638*x[3]*x[5]+0.4683*x[3]*x[6]-0.0524*x[3]*x[7]+0.865*x[3]*x[8]-0.0714*x[3]*x[9]-0.5196*x[3]*x[10]+0.2146*x[4]*x[5]+0.2514*x[4]*x[6]-0.9667*x[4]*x[7]-0.328*x[4]*x[8]+0.185*x[4]*x[9]-0.1588*x[4]*x[10]-0.6343*x[5]*x[6]+0.7847*x[5]*x[7]+0.2423*x[5]*x[8]-0.357*x[5]*x[9]-0.2066*x[5]*x[10]-0.1247*x[6]*x[7]-0.9086*x[6]*x[8]-0.4053*x[6]*x[9]-0.6526*x[6]*x[10]-0.7753*x[7]*x[8]+0.6139*x[7]*x[9]+0.0606*x[7]*x[10]-0.4917*x[8]*x[9]+0.82*x[8]*x[10]-0.8487*x[9]*x[10]-0.4958*x[1]-0.4949*x[2]+0.7862*x[3]+0.7091*x[4]-0.6288*x[5]+0.7083*x[6]+0.4814*x[7]+0.1703*x[8]+0.511*x[9]+0.9122*x[10]+0.0953*x[1]*x[2]*x[3]-0.3364*x[1]*x[2]*x[4]-0.0269*x[1]*x[2]*x[5]+0.958*x[1]*x[2]*x[6]-0.871*x[1]*x[2]*x[7]-0.3226*x[1]*x[2]*x[8]-0.8197*x[1]*x[2]*x[9]-0.1814*x[1]*x[2]*x[10]-0.8487*x[1]*x[3]*x[4]+0.2095*x[1]*x[3]*x[5]-0.2767*x[1]*x[3]*x[6]-0.3641*x[1]*x[3]*x[7]-0.0245*x[1]*x[3]*x[8]+0.4568*x[1]*x[3]*x[9]+0.3128*x[1]*x[3]*x[10]+0.4853*x[1]*x[4]*x[5]+0.9152*x[1]*x[4]*x[6]-0.5344*x[1]*x[4]*x[7]+0.9609*x[1]*x[4]*x[8]+0.1761*x[1]*x[4]*x[9]+0.344*x[1]*x[4]*x[10]-0.3941*x[1]*x[5]*x[6]+0.8352*x[1]*x[5]*x[7]-0.8145*x[1]*x[5]*x[8]+0.4713*x[1]*x[5]*x[9]-0.2967*x[1]*x[5]*x[10]+0.1227*x[1]*x[6]*x[7]+0.6128*x[1]*x[6]*x[8]-0.5156*x[1]*x[6]*x[9]-0.1357*x[1]*x[6]*x[10]+0.4391*x[1]*x[7]*x[8]-0.916*x[1]*x[7]*x[9]-0.9986*x[1]*x[7]*x[10]+0.3863*x[1]*x[8]*x[9]-0.0975*x[1]*x[8]*x[10]+0.8211*x[1]*x[9]*x[10]+0.6467*x[2]*x[3]*x[4]+0.054*x[2]*x[3]*x[5]+0.0186*x[2]*x[3]*x[6]+0.3056*x[2]*x[3]*x[7]+0.6154*x[2]*x[3]*x[8]+0.0074*x[2]*x[3]*x[9]+0.4949*x[2]*x[3]*x[10]+0.6723*x[2]*x[4]*x[5]+0.3352*x[2]*x[4]*x[6]+0.0008*x[2]*x[4]*x[7]+0.5953*x[2]*x[4]*x[8]-0.6033*x[2]*x[4]*x[9]+0.5045*x[2]*x[4]*x[10]-0.269*x[2]*x[5]*x[6]+0.6495*x[2]*x[5]*x[7]+0.8248*x[2]*x[5]*x[8]-0.6363*x[2]*x[5]*x[9]+0.6394*x[2]*x[5]*x[10]+0.1078*x[2]*x[6]*x[7]+0.8161*x[2]*x[6]*x[8]-0.4037*x[2]*x[6]*x[9]+0.2088*x[2]*x[6]*x[10]-0.6234*x[2]*x[7]*x[8]-0.5131*x[2]*x[7]*x[9]-0.3159*x[2]*x[7]*x[10]-0.3376*x[2]*x[8]*x[9]-0.8348*x[2]*x[8]*x[10]-0.4805*x[2]*x[9]*x[10]+0.8075*x[3]*x[4]*x[5]+0.1383*x[3]*x[4]*x[6]-0.8913*x[3]*x[4]*x[7]-0.4103*x[3]*x[4]*x[8]+0.4252*x[3]*x[4]*x[9]-0.7663*x[3]*x[4]*x[10]-0.9546*x[3]*x[5]*x[6]+0.1664*x[3]*x[5]*x[7]-0.1357*x[3]*x[5]*x[8]+0.843*x[3]*x[5]*x[9]-0.4141*x[3]*x[5]*x[10]+0.9824*x[3]*x[6]*x[7]+0.8706*x[3]*x[6]*x[8]+0.3098*x[3]*x[6]*x[9]-0.8453*x[3]*x[6]*x[10]+0.4691*x[3]*x[7]*x[8]-0.4006*x[3]*x[7]*x[9]+0.3848*x[3]*x[7]*x[10]+0.9792*x[3]*x[8]*x[9]-0.4612*x[3]*x[8]*x[10]-0.9516*x[3]*x[9]*x[10]-0.4543*x[4]*x[5]*x[6]+0.5378*x[4]*x[5]*x[7]-0.8641*x[4]*x[5]*x[8]+0.6423*x[4]*x[5]*x[9]-0.8484*x[4]*x[5]*x[10]-0.3092*x[4]*x[6]*x[7]+0.6513*x[4]*x[6]*x[8]+0.0055*x[4]*x[6]*x[9]+0.0029*x[4]*x[6]*x[10]+0.9821*x[4]*x[7]*x[8]+0.477*x[4]*x[7]*x[9]+0.9873*x[4]*x[7]*x[10]+0.2413*x[4]*x[8]*x[9]+0.3671*x[4]*x[8]*x[10]-0.2025*x[4]*x[9]*x[10]-0.5689*x[5]*x[6]*x[7]+0.6425*x[5]*x[6]*x[8]+0.4043*x[5]*x[6]*x[9]-0.2493*x[5]*x[6]*x[10]-0.4849*x[5]*x[7]*x[8]+0.3103*x[5]*x[7]*x[9]-0.2523*x[5]*x[7]*x[10]+0.7611*x[5]*x[8]*x[9]+0.3698*x[5]*x[8]*x[10]-0.8896*x[5]*x[9]*x[10]+0.7634*x[6]*x[7]*x[8]-0.3524*x[6]*x[7]*x[9]-0.7996*x[6]*x[7]*x[10]+0.4739*x[6]*x[8]*x[9]+0.5203*x[6]*x[8]*x[10]-0.1375*x[6]*x[9]*x[10]-0.0134*x[7]*x[8]*x[9]-0.7802*x[7]*x[8]*x[10]+0.1529*x[7]*x[9]*x[10]-0.7427*x[8]*x[9]*x[10] <= 58.859)
@NLconstraint(m, e6, 0.949*x[1]*x[2]+0.8319*x[1]*x[3]-0.2402*x[1]*x[4]+0.3515*x[1]*x[5]-0.6997*x[1]*x[6]+0.7683*x[1]*x[7]-0.6599*x[1]*x[8]+0.1491*x[1]*x[9]+0.4292*x[1]*x[10]+0.5753*x[2]*x[3]-0.2752*x[2]*x[4]-0.7367*x[2]*x[5]+0.2302*x[2]*x[6]+0.9897*x[2]*x[7]-0.5626*x[2]*x[8]-0.3133*x[2]*x[9]-0.113*x[2]*x[10]+0.3194*x[3]*x[4]+0.4135*x[3]*x[5]-0.4578*x[3]*x[6]-0.4937*x[3]*x[7]+0.2359*x[3]*x[8]+0.2791*x[3]*x[9]-0.8753*x[3]*x[10]-0.8146*x[4]*x[5]+0.3627*x[4]*x[6]+0.6978*x[4]*x[7]-0.1502*x[4]*x[8]+0.8516*x[4]*x[9]-0.8482*x[4]*x[10]-0.7326*x[5]*x[6]+0.3347*x[5]*x[7]-0.3677*x[5]*x[8]+0.8576*x[5]*x[9]+0.8423*x[5]*x[10]+0.4222*x[6]*x[7]+0.3568*x[6]*x[8]+0.1597*x[6]*x[9]+0.2008*x[6]*x[10]+0.6678*x[7]*x[8]-0.7699*x[7]*x[9]+0.6536*x[7]*x[10]-0.4263*x[8]*x[9]+0.5469*x[8]*x[10]+0.6991*x[9]*x[10]+0.4764*x[1]-0.6822*x[2]-0.709*x[3]-0.6123*x[4]-0.6075*x[5]-0.6624*x[6]+0.3302*x[7]+0.6541*x[8]-0.6579*x[9]-0.5587*x[10]+0.6143*x[1]*x[2]*x[3]+0.0351*x[1]*x[2]*x[4]-0.6117*x[1]*x[2]*x[5]+0.6903*x[1]*x[2]*x[6]+0.8105*x[1]*x[2]*x[7]+0.3583*x[1]*x[2]*x[8]+0.296*x[1]*x[2]*x[9]+0.6876*x[1]*x[2]*x[10]-0.393*x[1]*x[3]*x[4]-0.3819*x[1]*x[3]*x[5]-0.3434*x[1]*x[3]*x[6]+0.498*x[1]*x[3]*x[7]+0.3344*x[1]*x[3]*x[8]-0.6604*x[1]*x[3]*x[9]+0.1448*x[1]*x[3]*x[10]-0.2679*x[1]*x[4]*x[5]-0.9699*x[1]*x[4]*x[6]+0.4874*x[1]*x[4]*x[7]-0.2642*x[1]*x[4]*x[8]+0.0611*x[1]*x[4]*x[9]+0.1584*x[1]*x[4]*x[10]-0.3937*x[1]*x[5]*x[6]+0.9029*x[1]*x[5]*x[7]-0.3443*x[1]*x[5]*x[8]+0.1484*x[1]*x[5]*x[9]+0.4433*x[1]*x[5]*x[10]+0.3218*x[1]*x[6]*x[7]-0.2226*x[1]*x[6]*x[8]+0.3904*x[1]*x[6]*x[9]+0.6146*x[1]*x[6]*x[10]-0.8245*x[1]*x[7]*x[8]+0.8728*x[1]*x[7]*x[9]-0.3059*x[1]*x[7]*x[10]+0.8877*x[1]*x[8]*x[9]+0.1024*x[1]*x[8]*x[10]+0.1653*x[1]*x[9]*x[10]-0.3166*x[2]*x[3]*x[4]+0.13*x[2]*x[3]*x[5]-0.4146*x[2]*x[3]*x[6]-0.0127*x[2]*x[3]*x[7]+0.4993*x[2]*x[3]*x[8]+0.6925*x[2]*x[3]*x[9]-0.0677*x[2]*x[3]*x[10]-0.2175*x[2]*x[4]*x[5]+0.828*x[2]*x[4]*x[6]-0.1967*x[2]*x[4]*x[7]+0.4211*x[2]*x[4]*x[8]-0.2497*x[2]*x[4]*x[9]+0.462*x[2]*x[4]*x[10]-0.7244*x[2]*x[5]*x[6]+0.5054*x[2]*x[5]*x[7]-0.6719*x[2]*x[5]*x[8]+0.2062*x[2]*x[5]*x[9]+0.4854*x[2]*x[5]*x[10]-0.8001*x[2]*x[6]*x[7]+0.4813*x[2]*x[6]*x[8]-0.2475*x[2]*x[6]*x[9]+0.659*x[2]*x[6]*x[10]-0.8335*x[2]*x[7]*x[8]+0.2203*x[2]*x[7]*x[9]+0.8903*x[2]*x[7]*x[10]-0.7647*x[2]*x[8]*x[9]+0.5881*x[2]*x[8]*x[10]-0.3864*x[2]*x[9]*x[10]-0.5257*x[3]*x[4]*x[5]-0.5672*x[3]*x[4]*x[6]-0.0589*x[3]*x[4]*x[7]-0.1993*x[3]*x[4]*x[8]-0.4537*x[3]*x[4]*x[9]+0.7725*x[3]*x[4]*x[10]+0.1709*x[3]*x[5]*x[6]-0.0676*x[3]*x[5]*x[7]-0.6013*x[3]*x[5]*x[8]+0.8428*x[3]*x[5]*x[9]-0.6915*x[3]*x[5]*x[10]+0.8838*x[3]*x[6]*x[7]+0.9223*x[3]*x[6]*x[8]+0.5193*x[3]*x[6]*x[9]+0.3182*x[3]*x[6]*x[10]-0.221*x[3]*x[7]*x[8]+0.6815*x[3]*x[7]*x[9]-0.0966*x[3]*x[7]*x[10]-0.1797*x[3]*x[8]*x[9]-0.7994*x[3]*x[8]*x[10]+0.6868*x[3]*x[9]*x[10]+0.4518*x[4]*x[5]*x[6]+0.8514*x[4]*x[5]*x[7]+0.6759*x[4]*x[5]*x[8]-0.6871*x[4]*x[5]*x[9]+0.6584*x[4]*x[5]*x[10]-0.2458*x[4]*x[6]*x[7]+0.6472*x[4]*x[6]*x[8]-0.3359*x[4]*x[6]*x[9]-0.863*x[4]*x[6]*x[10]+0.1233*x[4]*x[7]*x[8]+0.6612*x[4]*x[7]*x[9]+0.2013*x[4]*x[7]*x[10]+0.6938*x[4]*x[8]*x[9]-0.7642*x[4]*x[8]*x[10]+0.3951*x[4]*x[9]*x[10]-0.3524*x[5]*x[6]*x[7]-0.9741*x[5]*x[6]*x[8]+0.6833*x[5]*x[6]*x[9]-0.4752*x[5]*x[6]*x[10]-0.3353*x[5]*x[7]*x[8]+0.9698*x[5]*x[7]*x[9]-0.9741*x[5]*x[7]*x[10]-0.1607*x[5]*x[8]*x[9]+0.7583*x[5]*x[8]*x[10]+0.803*x[5]*x[9]*x[10]-0.4884*x[6]*x[7]*x[8]+0.459*x[6]*x[7]*x[9]+0.7593*x[6]*x[7]*x[10]+0.3966*x[6]*x[8]*x[9]+0.2922*x[6]*x[8]*x[10]-0.8999*x[6]*x[9]*x[10]-0.3177*x[7]*x[8]*x[9]+0.2054*x[7]*x[8]*x[10]-0.0702*x[7]*x[9]*x[10]-0.1661*x[8]*x[9]*x[10] <= 43.697)


# ----- Objective ----- #
@objective(m, Min, x[11])
m = m 		 # model get returned when including this script. 
