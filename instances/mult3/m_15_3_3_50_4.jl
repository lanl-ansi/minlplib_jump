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
@NLconstraint(m, e1, -(0.9663*x[1]*x[6]+0.4436*x[1]*x[8]+0.162*x[1]*x[10]+0.3171*x[1]*x[13]+0.7864*x[1]*x[14]+0.6958*x[1]*x[15]+0.9235*x[2]*x[3]-0.8345*x[2]*x[4]+0.8353*x[2]*x[6]-0.1697*x[2]*x[7]-0.2355*x[2]*x[8]+0.722*x[2]*x[9]+0.8824*x[2]*x[11]-0.0647*x[2]*x[13]-0.3657*x[3]*x[4]+0.8355*x[3]*x[9]-0.9009*x[3]*x[10]+0.1924*x[3]*x[11]-0.6121*x[3]*x[12]+0.1498*x[3]*x[15]+0.4028*x[4]*x[5]+0.0973*x[4]*x[8]+0.1676*x[4]*x[9]-0.193*x[4]*x[11]-0.2436*x[4]*x[12]+0.1157*x[4]*x[13]+0.1522*x[5]*x[7]+0.0779*x[5]*x[9]+0.0654*x[5]*x[11]+0.4782*x[5]*x[13]-0.6341*x[6]*x[7]+0.8174*x[6]*x[8]-0.5701*x[6]*x[9]-0.3978*x[6]*x[10]+0.6669*x[6]*x[11]+0.0664*x[6]*x[14]+0.3587*x[6]*x[15]+0.4734*x[7]*x[8]-0.9255*x[7]*x[10]-0.0365*x[7]*x[11]-0.0445*x[7]*x[12]+0.3659*x[7]*x[13]-0.7934*x[7]*x[14]+0.011*x[8]*x[9]-0.325*x[8]*x[13]+0.8027*x[8]*x[14]+0.9173*x[9]*x[14]+0.9764*x[9]*x[15]+0.9846*x[10]*x[11]-0.858*x[10]*x[12]-0.9211*x[10]*x[14]+0.3864*x[10]*x[15]-0.7185*x[11]*x[12]+0.0937*x[11]*x[15]+0.148*x[13]*x[15]-0.2233*x[1]+0.414*x[2]-0.1474*x[3]+0.3486*x[4]+0.1718*x[5]+0.1067*x[6]+0.2728*x[7]-0.3408*x[8]+0.168*x[9]+0.9734*x[10]+0.6854*x[11]-0.3814*x[12]+0.3471*x[13]-0.3914*x[14]-0.6719*x[15]+0.4603*x[1]*x[2]*x[8]+0.5632*x[1]*x[2]*x[13]+0.1689*x[1]*x[2]*x[14]-0.5497*x[1]*x[3]*x[4]+0.5804*x[1]*x[3]*x[9]+0.8212*x[1]*x[3]*x[13]-0.339*x[1]*x[3]*x[15]+0.1713*x[1]*x[4]*x[8]-0.7825*x[1]*x[4]*x[12]+0.9952*x[1]*x[5]*x[6]+0.8948*x[1]*x[5]*x[8]-0.5031*x[1]*x[6]*x[8]+0.1304*x[1]*x[6]*x[14]+0.7747*x[1]*x[7]*x[9]+0.2034*x[1]*x[7]*x[11]-0.5666*x[1]*x[7]*x[12]-0.4699*x[1]*x[8]*x[14]-0.7555*x[1]*x[9]*x[12]+0.7848*x[1]*x[9]*x[13]+0.3538*x[1]*x[10]*x[11]-0.4025*x[1]*x[10]*x[12]-0.7917*x[1]*x[11]*x[14]+0.7391*x[1]*x[13]*x[14]-0.0929*x[2]*x[3]*x[4]-0.5032*x[2]*x[3]*x[5]-0.1606*x[2]*x[3]*x[6]+0.7462*x[2]*x[3]*x[7]-0.5471*x[2]*x[3]*x[8]+0.8975*x[2]*x[3]*x[9]+0.7657*x[2]*x[3]*x[11]+0.5563*x[2]*x[3]*x[14]+0.6483*x[2]*x[3]*x[15]-0.3117*x[2]*x[4]*x[5]-0.2352*x[2]*x[4]*x[6]+0.3671*x[2]*x[4]*x[8]-0.0307*x[2]*x[4]*x[11]+0.0061*x[2]*x[4]*x[12]+0.2247*x[2]*x[4]*x[14]-0.3515*x[2]*x[5]*x[6]+0.0255*x[2]*x[5]*x[9]+0.781*x[2]*x[5]*x[11]-0.9842*x[2]*x[5]*x[12]+0.3905*x[2]*x[5]*x[14]-0.745*x[2]*x[6]*x[7]+0.8056*x[2]*x[6]*x[8]+0.2807*x[2]*x[6]*x[11]+0.4065*x[2]*x[6]*x[12]-0.2452*x[2]*x[6]*x[15]+0.1915*x[2]*x[7]*x[8]-0.0967*x[2]*x[7]*x[9]+0.4478*x[2]*x[7]*x[10]-0.6589*x[2]*x[7]*x[12]-0.5769*x[2]*x[7]*x[15]+0.0112*x[2]*x[8]*x[10]-0.8689*x[2]*x[8]*x[12]-0.7473*x[2]*x[8]*x[13]+0.9667*x[2]*x[9]*x[10]+0.8358*x[2]*x[9]*x[12]-0.6321*x[2]*x[9]*x[13]+0.5119*x[2]*x[9]*x[14]-0.2251*x[2]*x[10]*x[11]+0.0399*x[2]*x[10]*x[13]-0.8838*x[2]*x[10]*x[15]-0.6928*x[2]*x[11]*x[12]+0.6578*x[2]*x[11]*x[14]-0.5683*x[2]*x[11]*x[15]+0.3663*x[2]*x[12]*x[14]-0.2819*x[2]*x[12]*x[15]-0.8346*x[2]*x[13]*x[15]+0.6325*x[3]*x[4]*x[5]-0.7551*x[3]*x[4]*x[6]+0.1949*x[3]*x[4]*x[7]+0.5991*x[3]*x[4]*x[11]-0.8927*x[3]*x[4]*x[12]-0.3103*x[3]*x[4]*x[13]-0.3288*x[3]*x[4]*x[14]+0.6026*x[3]*x[5]*x[6]+0.8414*x[3]*x[5]*x[7]-0.8066*x[3]*x[5]*x[8]-0.7517*x[3]*x[5]*x[9]-0.683*x[3]*x[5]*x[10]-0.7086*x[3]*x[5]*x[11]-0.2373*x[3]*x[5]*x[13]+0.6845*x[3]*x[5]*x[14]-0.4518*x[3]*x[6]*x[8]+0.9076*x[3]*x[6]*x[12]-0.4752*x[3]*x[6]*x[13]-0.2306*x[3]*x[6]*x[14]+0.8859*x[3]*x[7]*x[8]+0.9159*x[3]*x[7]*x[10]+0.5801*x[3]*x[7]*x[15]-0.3572*x[3]*x[8]*x[9]-0.0463*x[3]*x[8]*x[12]+0.8122*x[3]*x[8]*x[15]-0.1437*x[3]*x[9]*x[10]+0.0058*x[3]*x[9]*x[12]+0.0847*x[3]*x[9]*x[13]+0.5924*x[3]*x[9]*x[14]+0.5839*x[3]*x[9]*x[15]-0.1836*x[3]*x[10]*x[12]+0.2815*x[3]*x[10]*x[14]+0.0559*x[3]*x[10]*x[15]+0.3819*x[3]*x[11]*x[12]+0.9733*x[3]*x[11]*x[15]+0.8852*x[3]*x[12]*x[13]-0.9212*x[3]*x[12]*x[14]-0.8573*x[3]*x[13]*x[14]+0.3823*x[3]*x[14]*x[15]+0.5869*x[4]*x[5]*x[6]-0.9533*x[4]*x[5]*x[7]-0.6338*x[4]*x[5]*x[9]+0.476*x[4]*x[5]*x[10]+0.1464*x[4]*x[5]*x[11]-0.165*x[4]*x[5]*x[14]+0.4998*x[4]*x[5]*x[15]-0.9812*x[4]*x[6]*x[8]-0.6798*x[4]*x[6]*x[10]-0.7948*x[4]*x[6]*x[11]-0.3377*x[4]*x[6]*x[13]-0.0434*x[4]*x[7]*x[9]+0.9178*x[4]*x[7]*x[10]-0.9942*x[4]*x[7]*x[14]-0.3844*x[4]*x[8]*x[9]+0.7563*x[4]*x[8]*x[10]-0.6135*x[4]*x[8]*x[11]+0.9283*x[4]*x[8]*x[12]+0.8132*x[4]*x[8]*x[13]-0.6817*x[4]*x[9]*x[10]-0.8387*x[4]*x[9]*x[11]-0.9372*x[4]*x[9]*x[14]+0.8248*x[4]*x[9]*x[15]+0.6117*x[4]*x[10]*x[13]-0.1231*x[4]*x[10]*x[14]-0.8897*x[4]*x[11]*x[12]+0.2717*x[4]*x[11]*x[13]-0.6679*x[4]*x[11]*x[14]-0.3384*x[4]*x[12]*x[14]+0.72*x[4]*x[13]*x[14]-0.3087*x[4]*x[13]*x[15]-0.8244*x[5]*x[6]*x[9]+0.5358*x[5]*x[6]*x[11]-0.296*x[5]*x[6]*x[13]+0.0584*x[5]*x[6]*x[14]+0.061*x[5]*x[7]*x[8]+0.3482*x[5]*x[7]*x[10]-0.9701*x[5]*x[7]*x[11]-0.8042*x[5]*x[7]*x[12]+0.6481*x[5]*x[7]*x[13]-0.8166*x[5]*x[8]*x[9]-0.6662*x[5]*x[8]*x[11]-0.9737*x[5]*x[8]*x[12]+0.4024*x[5]*x[8]*x[13]-0.6411*x[5]*x[8]*x[15]+0.7542*x[5]*x[9]*x[11]-0.2911*x[5]*x[9]*x[12]+0.8733*x[5]*x[9]*x[14]-0.6773*x[5]*x[10]*x[11]-0.7534*x[5]*x[10]*x[14]+0.1096*x[5]*x[10]*x[15]+0.2783*x[5]*x[11]*x[12]-0.0027*x[5]*x[11]*x[13]+0.6542*x[5]*x[12]*x[13]+0.0675*x[5]*x[12]*x[14]-0.3339*x[5]*x[13]*x[14]+0.3022*x[6]*x[7]*x[11]+0.1499*x[6]*x[7]*x[14]+0.4597*x[6]*x[8]*x[9]+0.9867*x[6]*x[8]*x[12]-0.3143*x[6]*x[8]*x[13]+0.9184*x[6]*x[8]*x[15]-0.4897*x[6]*x[9]*x[10]-0.3116*x[6]*x[9]*x[11]-0.3148*x[6]*x[9]*x[12]-0.0228*x[6]*x[9]*x[14]+0.5321*x[6]*x[9]*x[15]-0.7615*x[6]*x[10]*x[12]+0.0467*x[6]*x[10]*x[13]+0.8865*x[6]*x[11]*x[14]+0.1911*x[6]*x[11]*x[15]-0.1872*x[6]*x[13]*x[15]-0.6828*x[7]*x[8]*x[9]-0.1309*x[7]*x[8]*x[10]+0.1722*x[7]*x[8]*x[12]+0.0866*x[7]*x[8]*x[13]-0.368*x[7]*x[9]*x[10]+0.5853*x[7]*x[9]*x[11]+0.4575*x[7]*x[9]*x[13]+0.9687*x[7]*x[9]*x[14]+0.1458*x[7]*x[10]*x[13]+0.3709*x[7]*x[10]*x[14]-0.2674*x[7]*x[10]*x[15]-0.2437*x[7]*x[11]*x[12]+0.4829*x[7]*x[11]*x[13]-0.9744*x[7]*x[11]*x[15]-0.7834*x[7]*x[12]*x[13]+0.5027*x[7]*x[12]*x[14]+0.4655*x[7]*x[13]*x[15]+0.9093*x[8]*x[9]*x[12]-0.3787*x[8]*x[9]*x[13]-0.1387*x[8]*x[10]*x[14]+0.9537*x[8]*x[11]*x[12]-0.9974*x[8]*x[11]*x[14]+0.7919*x[8]*x[12]*x[13]-0.7196*x[8]*x[12]*x[15]-0.1093*x[9]*x[10]*x[11]-0.8757*x[9]*x[10]*x[14]+0.702*x[9]*x[11]*x[12]+0.5598*x[9]*x[11]*x[13]-0.6262*x[9]*x[11]*x[14]-0.4706*x[9]*x[12]*x[15]-0.5694*x[9]*x[13]*x[14]+0.7291*x[9]*x[14]*x[15]+0.1696*x[10]*x[11]*x[12]-0.3678*x[10]*x[11]*x[14]+0.1285*x[10]*x[12]*x[14]+0.659*x[10]*x[12]*x[15]+0.8443*x[10]*x[13]*x[14]+0.7406*x[11]*x[12]*x[14]-0.7021*x[11]*x[12]*x[15]-0.9037*x[11]*x[13]*x[14]-0.8802*x[11]*x[13]*x[15]+0.5781*x[11]*x[14]*x[15]-0.7148*x[12]*x[13]*x[14]+0.3751*x[12]*x[14]*x[15])+x[16] == 0.0)
@NLconstraint(m, e2, 0.7481*x[1]*x[6]-0.3744*x[1]*x[8]+0.0169*x[1]*x[9]-0.7734*x[1]*x[11]+0.0662*x[1]*x[12]-0.1719*x[2]*x[3]-0.3318*x[2]*x[5]-0.5586*x[2]*x[6]+0.9352*x[2]*x[8]+0.5063*x[2]*x[12]+0.6258*x[2]*x[14]+0.991*x[2]*x[15]+0.559*x[3]*x[4]-0.2722*x[3]*x[6]+0.9234*x[3]*x[10]-0.7959*x[3]*x[14]-0.1865*x[3]*x[15]+0.9082*x[4]*x[6]-0.0928*x[4]*x[8]-0.9538*x[4]*x[10]+0.8592*x[4]*x[11]-0.8519*x[4]*x[13]+0.4743*x[5]*x[8]-0.6051*x[5]*x[9]-0.2119*x[5]*x[10]+0.4293*x[5]*x[13]-0.0297*x[6]*x[14]-0.8981*x[7]*x[8]+0.6195*x[7]*x[9]+0.2722*x[7]*x[14]-0.8645*x[8]*x[9]-0.1285*x[8]*x[10]+0.1148*x[8]*x[11]-0.9291*x[8]*x[13]+0.3736*x[9]*x[12]+0.4167*x[9]*x[13]+0.7173*x[9]*x[14]-0.9689*x[9]*x[15]+0.2602*x[10]*x[11]-0.2214*x[10]*x[14]+0.171*x[11]*x[14]+0.3941*x[12]*x[14]+0.0491*x[12]*x[15]+0.0574*x[13]*x[14]+0.2515*x[13]*x[15]+0.5978*x[1]+0.2847*x[2]-0.5411*x[3]-0.6963*x[4]-0.3945*x[5]-0.4905*x[6]+0.8211*x[7]-0.9483*x[8]+0.7422*x[9]+0.1962*x[10]-0.509*x[11]-0.1028*x[12]+0.2514*x[13]+0.267*x[14]+0.2254*x[15]+0.3732*x[1]*x[2]*x[8]-0.5454*x[1]*x[2]*x[5]+0.1254*x[1]*x[2]*x[13]+0.6742*x[1]*x[2]*x[14]+0.1099*x[1]*x[3]*x[8]+0.7257*x[1]*x[3]*x[11]-0.6308*x[1]*x[3]*x[12]+0.584*x[1]*x[3]*x[14]-0.414*x[1]*x[4]*x[5]-0.8858*x[1]*x[4]*x[8]-0.9687*x[1]*x[4]*x[11]+0.2973*x[1]*x[4]*x[12]+0.8003*x[1]*x[5]*x[10]-0.074*x[1]*x[5]*x[13]-0.5598*x[1]*x[6]*x[14]-0.5622*x[1]*x[6]*x[15]-0.8405*x[1]*x[7]*x[9]+0.7593*x[1]*x[7]*x[12]+0.5519*x[1]*x[8]*x[12]-0.2329*x[1]*x[8]*x[14]-0.0659*x[1]*x[9]*x[14]+0.1124*x[1]*x[10]*x[12]+0.6017*x[1]*x[10]*x[14]-0.8707*x[1]*x[11]*x[12]-0.6887*x[1]*x[11]*x[14]+0.3225*x[1]*x[12]*x[13]+0.453*x[1]*x[12]*x[14]-0.4877*x[1]*x[12]*x[15]-0.6046*x[2]*x[3]*x[6]+0.2601*x[2]*x[3]*x[7]-0.4373*x[2]*x[3]*x[8]-0.9647*x[2]*x[3]*x[14]-0.4218*x[2]*x[4]*x[6]+0.1465*x[2]*x[4]*x[7]+0.9746*x[2]*x[4]*x[8]+0.9364*x[2]*x[4]*x[9]+0.1367*x[2]*x[4]*x[12]-0.641*x[2]*x[4]*x[13]+0.4277*x[2]*x[4]*x[14]+0.3092*x[2]*x[5]*x[7]-0.9142*x[2]*x[5]*x[8]+0.1015*x[2]*x[5]*x[9]-0.5517*x[2]*x[5]*x[10]-0.6188*x[2]*x[5]*x[12]-0.9504*x[2]*x[5]*x[13]+0.6126*x[2]*x[5]*x[14]+0.5141*x[2]*x[5]*x[15]-0.2124*x[2]*x[6]*x[8]+0.5321*x[2]*x[6]*x[10]+0.1575*x[2]*x[6]*x[11]-0.0703*x[2]*x[6]*x[12]+0.4673*x[2]*x[6]*x[13]+0.0543*x[2]*x[7]*x[12]+0.2659*x[2]*x[7]*x[13]-0.5284*x[2]*x[8]*x[9]+0.4782*x[2]*x[8]*x[10]+0.7355*x[2]*x[8]*x[11]-0.1841*x[2]*x[8]*x[12]+0.1525*x[2]*x[8]*x[13]+0.8386*x[2]*x[8]*x[14]-0.777*x[2]*x[9]*x[10]-0.462*x[2]*x[9]*x[11]-0.2014*x[2]*x[9]*x[14]-0.9228*x[2]*x[10]*x[12]+0.8672*x[2]*x[10]*x[13]+0.5934*x[2]*x[10]*x[14]+0.967*x[2]*x[11]*x[12]+0.6511*x[2]*x[11]*x[13]-0.702*x[2]*x[11]*x[14]-0.5258*x[2]*x[13]*x[14]+0.9776*x[2]*x[14]*x[15]+0.9962*x[3]*x[4]*x[5]-0.1484*x[3]*x[4]*x[6]-0.658*x[3]*x[4]*x[8]-0.9789*x[3]*x[4]*x[10]-0.129*x[3]*x[4]*x[11]-0.7177*x[3]*x[4]*x[13]-0.2196*x[3]*x[4]*x[14]+0.7168*x[3]*x[5]*x[7]+0.5331*x[3]*x[5]*x[8]-0.8382*x[3]*x[5]*x[10]-0.3813*x[3]*x[5]*x[11]-0.8092*x[3]*x[5]*x[13]+0.2671*x[3]*x[5]*x[14]-0.4109*x[3]*x[6]*x[7]+0.2094*x[3]*x[6]*x[9]+0.8095*x[3]*x[6]*x[10]-0.36*x[3]*x[6]*x[12]-0.8386*x[3]*x[6]*x[13]+0.9342*x[3]*x[6]*x[15]+0.5716*x[3]*x[7]*x[8]+0.7597*x[3]*x[7]*x[10]+0.808*x[3]*x[7]*x[12]+0.1922*x[3]*x[7]*x[15]-0.4115*x[3]*x[8]*x[10]+0.7575*x[3]*x[8]*x[12]-0.6863*x[3]*x[8]*x[13]+0.5919*x[3]*x[8]*x[14]-0.7689*x[3]*x[9]*x[12]+0.4597*x[3]*x[9]*x[13]-0.9278*x[3]*x[9]*x[14]+0.5109*x[3]*x[10]*x[12]-0.2897*x[3]*x[10]*x[13]-0.735*x[3]*x[10]*x[14]+0.7748*x[3]*x[10]*x[15]-0.9939*x[3]*x[11]*x[13]+0.9702*x[3]*x[11]*x[15]+0.0965*x[3]*x[12]*x[13]-0.5577*x[3]*x[12]*x[14]+0.297*x[3]*x[13]*x[14]+0.4777*x[4]*x[5]*x[6]+0.719*x[4]*x[5]*x[7]+0.6456*x[4]*x[5]*x[8]+0.2994*x[4]*x[5]*x[9]-0.1092*x[4]*x[5]*x[10]+0.9509*x[4]*x[5]*x[11]-0.7183*x[4]*x[5]*x[12]-0.7364*x[4]*x[6]*x[7]-0.6449*x[4]*x[6]*x[8]-0.9386*x[4]*x[6]*x[10]-0.2359*x[4]*x[6]*x[11]-0.4164*x[4]*x[6]*x[12]+0.3883*x[4]*x[6]*x[13]+0.0515*x[4]*x[6]*x[14]+0.5764*x[4]*x[6]*x[15]+0.5116*x[4]*x[7]*x[9]+0.4355*x[4]*x[7]*x[10]+0.3087*x[4]*x[7]*x[12]-0.9302*x[4]*x[7]*x[13]-0.8824*x[4]*x[7]*x[14]-0.8789*x[4]*x[8]*x[9]+0.9581*x[4]*x[8]*x[12]-0.5868*x[4]*x[9]*x[10]+0.2621*x[4]*x[10]*x[11]-0.5551*x[4]*x[11]*x[13]+0.2165*x[4]*x[11]*x[14]-0.1148*x[4]*x[12]*x[13]-0.7332*x[4]*x[12]*x[14]-0.6864*x[4]*x[13]*x[14]-0.9327*x[5]*x[6]*x[7]-0.8019*x[5]*x[6]*x[9]+0.7579*x[5]*x[6]*x[10]+0.8651*x[5]*x[6]*x[11]-0.6945*x[5]*x[6]*x[12]+0.2441*x[5]*x[6]*x[13]-0.6299*x[5]*x[7]*x[8]+0.3031*x[5]*x[7]*x[10]+0.2752*x[5]*x[7]*x[12]-0.6606*x[5]*x[7]*x[13]+0.1528*x[5]*x[7]*x[14]+0.8836*x[5]*x[8]*x[9]+0.1788*x[5]*x[8]*x[10]-0.2049*x[5]*x[8]*x[11]+0.4838*x[5]*x[8]*x[13]+0.8203*x[5]*x[8]*x[14]+0.6835*x[5]*x[9]*x[14]-0.5248*x[5]*x[10]*x[12]-0.839*x[5]*x[10]*x[14]+0.1914*x[5]*x[11]*x[13]-0.9195*x[5]*x[11]*x[14]+0.6759*x[5]*x[11]*x[15]-0.893*x[5]*x[12]*x[13]+0.9619*x[5]*x[12]*x[14]+0.7908*x[5]*x[13]*x[14]-0.6426*x[6]*x[7]*x[9]+0.5216*x[6]*x[7]*x[13]-0.7722*x[6]*x[8]*x[9]-0.3009*x[6]*x[8]*x[10]+0.4082*x[6]*x[8]*x[12]+0.4855*x[6]*x[8]*x[13]-0.326*x[6]*x[8]*x[14]+0.8687*x[6]*x[9]*x[11]+0.3605*x[6]*x[9]*x[13]+0.8244*x[6]*x[9]*x[14]-0.296*x[6]*x[9]*x[15]+0.8066*x[6]*x[10]*x[11]+0.447*x[6]*x[10]*x[12]+0.7801*x[6]*x[10]*x[13]-0.2661*x[6]*x[11]*x[12]+0.0894*x[6]*x[11]*x[13]+0.8985*x[6]*x[11]*x[14]+0.0004*x[6]*x[11]*x[15]+0.9382*x[6]*x[12]*x[13]-0.4698*x[6]*x[12]*x[14]-0.0734*x[6]*x[13]*x[14]+0.4489*x[7]*x[8]*x[9]-0.8276*x[7]*x[8]*x[10]-0.2907*x[7]*x[8]*x[11]+0.9258*x[7]*x[8]*x[12]-0.4763*x[7]*x[9]*x[10]+0.5571*x[7]*x[9]*x[11]+0.8327*x[7]*x[9]*x[13]+0.1487*x[7]*x[10]*x[11]-0.5296*x[7]*x[10]*x[12]+0.7677*x[7]*x[10]*x[13]-0.1109*x[7]*x[11]*x[15]-0.7196*x[7]*x[12]*x[13]+0.7963*x[7]*x[13]*x[14]+0.2893*x[8]*x[9]*x[10]-0.2896*x[8]*x[9]*x[11]-0.4319*x[8]*x[9]*x[12]-0.8925*x[8]*x[9]*x[13]+0.9954*x[8]*x[10]*x[11]+0.2249*x[8]*x[10]*x[12]+0.8705*x[8]*x[10]*x[14]+0.3258*x[8]*x[10]*x[15]-0.213*x[8]*x[11]*x[12]+0.6459*x[8]*x[11]*x[14]+0.4738*x[8]*x[11]*x[15]-0.309*x[8]*x[12]*x[13]-0.4192*x[8]*x[12]*x[14]+0.8751*x[8]*x[13]*x[15]-0.4886*x[8]*x[14]*x[15]-0.6533*x[9]*x[10]*x[11]-0.0782*x[9]*x[10]*x[13]+0.2117*x[9]*x[10]*x[15]-0.9031*x[9]*x[11]*x[12]-0.3872*x[9]*x[11]*x[13]-0.0863*x[9]*x[11]*x[14]+0.4089*x[9]*x[11]*x[15]-0.9674*x[9]*x[12]*x[14]+0.3311*x[9]*x[13]*x[15]-0.1454*x[10]*x[11]*x[12]-0.6574*x[10]*x[11]*x[14]+0.4688*x[10]*x[11]*x[15]-0.7251*x[10]*x[12]*x[13]+0.492*x[10]*x[12]*x[14]+0.5487*x[10]*x[12]*x[15]-0.6504*x[10]*x[13]*x[14]-0.8365*x[10]*x[14]*x[15]-0.5432*x[11]*x[12]*x[13]-0.1811*x[11]*x[12]*x[14]-0.5179*x[11]*x[12]*x[15]-0.4013*x[11]*x[13]*x[14] <= 70.211)
@NLconstraint(m, e3, 0.6377*x[1]*x[9]+0.2126*x[2]*x[4]-0.9474*x[2]*x[7]-0.9889*x[2]*x[12]-0.129*x[2]*x[13]-0.3359*x[3]*x[4]-0.4302*x[3]*x[5]-0.598*x[3]*x[8]-0.1594*x[3]*x[9]-0.5245*x[3]*x[11]+0.2127*x[3]*x[12]+0.9198*x[3]*x[13]-0.0629*x[4]*x[5]+0.441*x[4]*x[7]-0.7811*x[4]*x[8]+0.2581*x[4]*x[10]+0.8289*x[4]*x[11]-0.9756*x[4]*x[12]+0.5731*x[4]*x[13]+0.4125*x[5]*x[7]+0.9067*x[5]*x[8]+0.5042*x[5]*x[10]+0.143*x[5]*x[11]+0.0521*x[5]*x[12]+0.3747*x[5]*x[14]+0.6211*x[6]*x[7]-0.9247*x[6]*x[9]+0.3778*x[6]*x[13]+0.0941*x[6]*x[14]-0.2307*x[7]*x[8]-0.909*x[7]*x[9]+0.1627*x[7]*x[10]+0.8741*x[7]*x[11]-0.3914*x[7]*x[13]+0.1836*x[7]*x[14]+0.8013*x[8]*x[9]-0.1947*x[8]*x[13]-0.4284*x[8]*x[14]+0.2975*x[8]*x[15]+0.7102*x[9]*x[10]+0.1563*x[9]*x[11]+0.9285*x[10]*x[12]-0.0557*x[11]*x[13]+0.6702*x[11]*x[14]-0.1143*x[12]*x[14]+0.3844*x[13]*x[14]-0.8041*x[13]*x[15]-0.6788*x[14]*x[15]+0.919*x[1]-0.5753*x[2]-0.4575*x[3]+0.0448*x[4]-0.3352*x[5]-0.2489*x[6]-0.2547*x[7]+0.1996*x[8]+0.1806*x[9]+0.3513*x[10]+0.1918*x[11]-0.6978*x[12]-0.5902*x[13]+0.4777*x[14]-0.5049*x[15]+0.447*x[1]*x[2]*x[7]-0.5157*x[1]*x[2]*x[4]+0.8827*x[1]*x[2]*x[11]+0.529*x[1]*x[2]*x[12]+0.5238*x[1]*x[2]*x[13]-0.3528*x[1]*x[3]*x[6]-0.2066*x[1]*x[3]*x[7]-0.0585*x[1]*x[3]*x[8]-0.6911*x[1]*x[3]*x[10]-0.4987*x[1]*x[3]*x[12]+0.1086*x[1]*x[3]*x[13]+0.7647*x[1]*x[4]*x[5]-0.3902*x[1]*x[4]*x[10]-0.8481*x[1]*x[4]*x[11]+0.4749*x[1]*x[4]*x[13]-0.8076*x[1]*x[5]*x[11]-0.4944*x[1]*x[5]*x[12]-0.896*x[1]*x[5]*x[14]+0.6828*x[1]*x[6]*x[7]+0.2188*x[1]*x[6]*x[9]+0.0175*x[1]*x[6]*x[11]+0.1781*x[1]*x[6]*x[12]-0.1911*x[1]*x[7]*x[8]+0.2696*x[1]*x[7]*x[9]+0.2727*x[1]*x[7]*x[12]+0.7559*x[1]*x[7]*x[15]-0.4322*x[1]*x[8]*x[9]+0.3955*x[1]*x[8]*x[10]-0.613*x[1]*x[8]*x[14]+0.198*x[1]*x[8]*x[15]-0.869*x[1]*x[9]*x[12]-0.1757*x[1]*x[9]*x[14]+0.2856*x[1]*x[10]*x[14]-0.5243*x[1]*x[10]*x[15]+0.1993*x[1]*x[11]*x[13]+0.2057*x[1]*x[11]*x[14]+0.6595*x[1]*x[12]*x[13]+0.2847*x[1]*x[12]*x[14]-0.1756*x[1]*x[13]*x[14]-0.987*x[2]*x[3]*x[5]-0.2938*x[2]*x[3]*x[8]-0.7622*x[2]*x[3]*x[9]-0.3837*x[2]*x[3]*x[11]-0.4658*x[2]*x[3]*x[12]+0.0244*x[2]*x[3]*x[13]-0.7156*x[2]*x[3]*x[14]+0.167*x[2]*x[3]*x[15]+0.2536*x[2]*x[4]*x[5]+0.7893*x[2]*x[4]*x[11]+0.8778*x[2]*x[4]*x[13]-0.6073*x[2]*x[4]*x[14]+0.8696*x[2]*x[4]*x[15]-0.2377*x[2]*x[5]*x[8]-0.4859*x[2]*x[5]*x[9]+0.5208*x[2]*x[5]*x[11]+0.6232*x[2]*x[5]*x[12]-0.902*x[2]*x[5]*x[13]-0.7256*x[2]*x[5]*x[14]-0.786*x[2]*x[6]*x[7]-0.1308*x[2]*x[6]*x[10]-0.2901*x[2]*x[6]*x[11]-0.3092*x[2]*x[6]*x[14]-0.2119*x[2]*x[6]*x[15]+0.9585*x[2]*x[7]*x[8]+0.0615*x[2]*x[7]*x[10]+0.7909*x[2]*x[7]*x[12]+0.731*x[2]*x[7]*x[13]+0.8638*x[2]*x[7]*x[14]+0.8895*x[2]*x[7]*x[15]-0.3288*x[2]*x[8]*x[10]+0.5649*x[2]*x[8]*x[13]+0.0698*x[2]*x[8]*x[14]-0.1059*x[2]*x[9]*x[10]+0.3636*x[2]*x[9]*x[13]-0.4566*x[2]*x[9]*x[14]-0.8521*x[2]*x[9]*x[15]-0.3124*x[2]*x[10]*x[11]-0.5787*x[2]*x[10]*x[12]+0.0578*x[2]*x[10]*x[14]+0.2543*x[2]*x[11]*x[12]-0.6676*x[2]*x[12]*x[13]+0.3711*x[2]*x[13]*x[15]+0.3624*x[2]*x[14]*x[15]-0.3957*x[3]*x[4]*x[8]-0.3571*x[3]*x[4]*x[9]-0.0876*x[3]*x[4]*x[11]-0.8286*x[3]*x[4]*x[13]-0.3369*x[3]*x[4]*x[14]+0.4866*x[3]*x[4]*x[15]-0.7173*x[3]*x[5]*x[6]-0.133*x[3]*x[5]*x[7]-0.1808*x[3]*x[5]*x[9]+0.2559*x[3]*x[5]*x[12]+0.3243*x[3]*x[5]*x[13]-0.6333*x[3]*x[5]*x[15]-0.8105*x[3]*x[6]*x[8]-0.7277*x[3]*x[6]*x[10]-0.9495*x[3]*x[6]*x[11]+0.9394*x[3]*x[6]*x[12]-0.1003*x[3]*x[6]*x[13]-0.3618*x[3]*x[7]*x[8]+0.663*x[3]*x[7]*x[11]-0.3141*x[3]*x[7]*x[14]-0.9485*x[3]*x[8]*x[11]+0.2813*x[3]*x[8]*x[12]-0.2511*x[3]*x[9]*x[14]+0.2216*x[3]*x[10]*x[12]+0.2259*x[3]*x[10]*x[13]-0.7953*x[3]*x[10]*x[14]+0.3572*x[3]*x[11]*x[13]+0.2633*x[3]*x[12]*x[13]-0.0628*x[4]*x[5]*x[6]-0.7144*x[4]*x[5]*x[8]+0.5325*x[4]*x[5]*x[10]-0.2489*x[4]*x[5]*x[13]+0.331*x[4]*x[5]*x[14]-0.8435*x[4]*x[6]*x[7]+0.1007*x[4]*x[6]*x[8]-0.103*x[4]*x[6]*x[11]+0.1713*x[4]*x[6]*x[12]+0.523*x[4]*x[6]*x[13]-0.4822*x[4]*x[6]*x[15]+0.796*x[4]*x[7]*x[8]-0.8117*x[4]*x[7]*x[10]+0.4395*x[4]*x[7]*x[12]-0.5392*x[4]*x[8]*x[11]-0.3351*x[4]*x[8]*x[12]-0.3698*x[4]*x[8]*x[14]+0.2235*x[4]*x[9]*x[10]+0.4752*x[4]*x[9]*x[11]-0.1177*x[4]*x[9]*x[12]-0.6571*x[4]*x[9]*x[14]+0.4577*x[4]*x[9]*x[15]-0.4623*x[4]*x[10]*x[11]-0.7599*x[4]*x[10]*x[13]+0.6553*x[4]*x[10]*x[14]+0.1745*x[4]*x[11]*x[12]+0.411*x[4]*x[11]*x[13]-0.8579*x[4]*x[11]*x[14]-0.3178*x[4]*x[11]*x[15]-0.7452*x[4]*x[12]*x[14]+0.3852*x[4]*x[13]*x[14]-0.4007*x[5]*x[6]*x[7]-0.7527*x[5]*x[6]*x[10]+0.8094*x[5]*x[6]*x[12]-0.4712*x[5]*x[6]*x[13]+0.379*x[5]*x[6]*x[14]+0.1651*x[5]*x[7]*x[8]+0.4505*x[5]*x[7]*x[9]+0.7121*x[5]*x[7]*x[10]-0.5093*x[5]*x[7]*x[11]+0.1551*x[5]*x[7]*x[12]-0.0957*x[5]*x[7]*x[13]-0.4039*x[5]*x[7]*x[14]+0.8227*x[5]*x[7]*x[15]-0.2037*x[5]*x[8]*x[9]+0.7682*x[5]*x[8]*x[10]+0.9555*x[5]*x[8]*x[11]-0.0139*x[5]*x[8]*x[12]+0.6297*x[5]*x[8]*x[13]+0.5755*x[5]*x[8]*x[15]-0.524*x[5]*x[9]*x[11]+0.4714*x[5]*x[10]*x[12]-0.3473*x[5]*x[10]*x[14]+0.1912*x[5]*x[10]*x[15]+0.0488*x[5]*x[11]*x[13]-0.3988*x[5]*x[12]*x[13]+0.8108*x[5]*x[12]*x[14]-0.3986*x[5]*x[12]*x[15]+0.9868*x[5]*x[13]*x[14]+0.8844*x[5]*x[14]*x[15]-0.9809*x[6]*x[7]*x[10]+0.6993*x[6]*x[7]*x[12]-0.6063*x[6]*x[7]*x[14]-0.4519*x[6]*x[7]*x[15]+0.9111*x[6]*x[8]*x[12]-0.8674*x[6]*x[8]*x[13]+0.743*x[6]*x[8]*x[14]+0.4324*x[6]*x[8]*x[15]-0.8948*x[6]*x[9]*x[10]+0.8983*x[6]*x[9]*x[11]+0.2048*x[6]*x[9]*x[12]-0.1096*x[6]*x[9]*x[13]-0.6622*x[6]*x[9]*x[14]-0.4834*x[6]*x[9]*x[15]-0.5838*x[6]*x[10]*x[11]+0.2742*x[6]*x[10]*x[13]+0.0529*x[6]*x[10]*x[14]-0.7241*x[6]*x[11]*x[12]-0.8131*x[6]*x[11]*x[14]-0.0931*x[6]*x[12]*x[14]+0.1111*x[6]*x[12]*x[15]-0.8755*x[6]*x[13]*x[14]-0.1689*x[6]*x[13]*x[15]+0.8329*x[6]*x[14]*x[15]-0.5892*x[7]*x[8]*x[9]-0.0227*x[7]*x[8]*x[10]-0.1222*x[7]*x[8]*x[12]+0.8349*x[7]*x[9]*x[10]+0.9943*x[7]*x[9]*x[11]-0.6811*x[7]*x[9]*x[13]+0.2507*x[7]*x[10]*x[11]-0.6754*x[7]*x[10]*x[13]+0.4015*x[7]*x[10]*x[14]-0.6116*x[7]*x[11]*x[12]+0.9738*x[7]*x[11]*x[13]-0.1882*x[7]*x[13]*x[15]+0.2966*x[8]*x[9]*x[11]+0.8856*x[8]*x[9]*x[14]+0.4989*x[8]*x[9]*x[15]+0.0964*x[8]*x[10]*x[12]+0.4674*x[8]*x[10]*x[15]-0.528*x[8]*x[11]*x[13]+0.761*x[8]*x[11]*x[14]-0.2857*x[8]*x[11]*x[15]-0.0896*x[8]*x[12]*x[13]+0.4055*x[8]*x[12]*x[14]+0.8957*x[8]*x[14]*x[15]+0.123*x[9]*x[10]*x[12]-0.5358*x[9]*x[10]*x[15]-0.5933*x[9]*x[11]*x[12]+0.3096*x[9]*x[11]*x[14]-0.0737*x[9]*x[12]*x[13]+0.5068*x[9]*x[12]*x[14]+0.581*x[9]*x[12]*x[15]-0.9402*x[10]*x[11]*x[14]-0.8869*x[10]*x[11]*x[15]+0.0901*x[10]*x[12]*x[13]-0.8214*x[10]*x[14]*x[15]+0.8954*x[11]*x[12]*x[13]+0.5043*x[11]*x[13]*x[14] <= 8.426)
@NLconstraint(m, e4, 0.5406*x[1]*x[4]-0.3634*x[1]*x[3]-0.2216*x[1]*x[11]-0.4275*x[1]*x[13]-0.5493*x[2]*x[3]+0.2375*x[2]*x[4]-0.1491*x[2]*x[8]+0.9118*x[2]*x[9]+0.4432*x[2]*x[10]-0.5604*x[2]*x[12]-0.3871*x[2]*x[13]+0.0372*x[2]*x[14]-0.1526*x[3]*x[5]-0.1331*x[3]*x[6]-0.5525*x[3]*x[7]+0.5349*x[3]*x[8]+0.4965*x[3]*x[10]+0.7629*x[3]*x[13]-0.463*x[3]*x[14]-0.44*x[3]*x[15]-0.0689*x[4]*x[7]+0.1172*x[4]*x[8]-0.3721*x[4]*x[10]-0.3712*x[4]*x[13]-0.8373*x[4]*x[14]+0.8215*x[4]*x[15]-0.7276*x[5]*x[6]-0.263*x[5]*x[8]-0.3638*x[5]*x[9]-0.7923*x[5]*x[12]+0.5029*x[5]*x[13]+0.5119*x[6]*x[9]+0.9142*x[6]*x[10]-0.7196*x[6]*x[11]+0.0981*x[6]*x[13]-0.1926*x[6]*x[14]+0.8022*x[7]*x[8]-0.0749*x[7]*x[9]-0.306*x[7]*x[10]+0.5916*x[7]*x[11]-0.3358*x[7]*x[13]-0.8092*x[8]*x[10]+0.4329*x[8]*x[11]-0.3358*x[8]*x[12]+0.7877*x[8]*x[13]+0.3853*x[9]*x[10]-0.1578*x[9]*x[13]-0.493*x[9]*x[14]-0.1555*x[10]*x[11]+0.534*x[10]*x[12]+0.3781*x[10]*x[13]+0.0114*x[11]*x[14]-0.5328*x[12]*x[14]-0.7843*x[14]*x[15]-0.915*x[1]-0.3539*x[2]-0.6846*x[3]-0.269*x[4]-0.7085*x[5]-0.5775*x[6]-0.3851*x[7]-0.6242*x[8]+0.8855*x[9]-0.7976*x[10]-0.2809*x[11]-0.5927*x[12]+0.5026*x[13]+0.1484*x[14]+0.987*x[15]+0.2282*x[1]*x[2]*x[4]-0.7562*x[1]*x[2]*x[3]+0.6465*x[1]*x[2]*x[9]-0.7033*x[1]*x[2]*x[10]+0.6622*x[1]*x[2]*x[12]-0.1977*x[1]*x[2]*x[13]-0.1657*x[1]*x[3]*x[4]+0.8627*x[1]*x[3]*x[5]+0.6321*x[1]*x[3]*x[11]+0.1742*x[1]*x[3]*x[14]+0.2154*x[1]*x[3]*x[15]+0.7005*x[1]*x[4]*x[5]+0.3997*x[1]*x[4]*x[13]+0.1931*x[1]*x[5]*x[6]-0.2135*x[1]*x[5]*x[9]+0.5881*x[1]*x[5]*x[11]-0.2314*x[1]*x[5]*x[13]+0.7087*x[1]*x[5]*x[14]+0.0466*x[1]*x[6]*x[8]+0.4644*x[1]*x[6]*x[9]-0.1823*x[1]*x[6]*x[10]-0.8627*x[1]*x[6]*x[12]+0.0203*x[1]*x[6]*x[15]-0.0215*x[1]*x[7]*x[8]-0.1031*x[1]*x[7]*x[9]+0.6492*x[1]*x[7]*x[10]+0.8862*x[1]*x[7]*x[14]-0.7717*x[1]*x[8]*x[10]+0.8275*x[1]*x[8]*x[13]+0.0239*x[1]*x[9]*x[15]-0.4034*x[1]*x[10]*x[11]+0.7477*x[1]*x[10]*x[12]+0.1176*x[1]*x[10]*x[13]-0.6521*x[1]*x[11]*x[12]+0.4266*x[1]*x[11]*x[14]+0.8312*x[2]*x[3]*x[6]-0.2049*x[2]*x[3]*x[7]+0.017*x[2]*x[3]*x[8]-0.7283*x[2]*x[3]*x[10]-0.1333*x[2]*x[3]*x[11]-0.5315*x[2]*x[3]*x[13]-0.3312*x[2]*x[3]*x[14]-0.0133*x[2]*x[4]*x[5]+0.1339*x[2]*x[4]*x[7]+0.6854*x[2]*x[4]*x[8]-0.7462*x[2]*x[4]*x[9]-0.1434*x[2]*x[4]*x[10]-0.1199*x[2]*x[5]*x[6]-0.8052*x[2]*x[5]*x[8]-0.3594*x[2]*x[5]*x[11]+0.0613*x[2]*x[5]*x[14]+0.0406*x[2]*x[5]*x[15]-0.7794*x[2]*x[6]*x[9]+0.6796*x[2]*x[6]*x[10]-0.2258*x[2]*x[6]*x[11]-0.5478*x[2]*x[6]*x[13]+0.0869*x[2]*x[6]*x[14]-0.3992*x[2]*x[6]*x[15]-0.4682*x[2]*x[7]*x[8]-0.6822*x[2]*x[7]*x[10]+0.095*x[2]*x[7]*x[14]-0.1434*x[2]*x[8]*x[9]-0.9975*x[2]*x[8]*x[13]-0.1259*x[2]*x[8]*x[14]-0.1335*x[2]*x[9]*x[10]-0.1936*x[2]*x[9]*x[11]+0.0306*x[2]*x[9]*x[14]-0.9504*x[2]*x[10]*x[11]+0.3708*x[2]*x[10]*x[12]+0.5713*x[2]*x[11]*x[12]-0.4314*x[2]*x[11]*x[13]+0.4282*x[2]*x[11]*x[15]+0.73*x[2]*x[12]*x[13]-0.4754*x[2]*x[12]*x[14]-0.3094*x[3]*x[4]*x[7]-0.6356*x[3]*x[4]*x[8]-0.9556*x[3]*x[4]*x[9]-0.933*x[3]*x[4]*x[10]-0.2004*x[3]*x[4]*x[11]+0.5981*x[3]*x[4]*x[12]-0.3122*x[3]*x[4]*x[14]+0.1276*x[3]*x[5]*x[7]+0.082*x[3]*x[5]*x[8]+0.2758*x[3]*x[5]*x[11]+0.9155*x[3]*x[5]*x[12]+0.1924*x[3]*x[5]*x[13]+0.3767*x[3]*x[6]*x[10]-0.4807*x[3]*x[6]*x[11]+0.2518*x[3]*x[6]*x[12]-0.4983*x[3]*x[6]*x[13]+0.7746*x[3]*x[6]*x[15]+0.0808*x[3]*x[7]*x[8]-0.1877*x[3]*x[7]*x[9]-0.4172*x[3]*x[7]*x[10]+0.1985*x[3]*x[7]*x[11]+0.9959*x[3]*x[7]*x[12]+0.4146*x[3]*x[7]*x[13]-0.1748*x[3]*x[8]*x[13]+0.25*x[3]*x[8]*x[14]+0.696*x[3]*x[9]*x[10]+0.0168*x[3]*x[9]*x[12]-0.7588*x[3]*x[10]*x[12]+0.5904*x[3]*x[10]*x[13]-0.0245*x[3]*x[10]*x[14]-0.9329*x[3]*x[11]*x[12]+0.2701*x[3]*x[11]*x[14]+0.0281*x[3]*x[12]*x[13]+0.3384*x[3]*x[12]*x[14]-0.9284*x[3]*x[13]*x[14]+0.5712*x[3]*x[14]*x[15]-0.8262*x[4]*x[5]*x[7]-0.2395*x[4]*x[5]*x[9]-0.7612*x[4]*x[5]*x[11]-0.6676*x[4]*x[5]*x[15]-0.8373*x[4]*x[6]*x[7]-0.194*x[4]*x[6]*x[9]+0.9097*x[4]*x[6]*x[10]-0.4518*x[4]*x[6]*x[12]-0.5544*x[4]*x[7]*x[8]-0.3589*x[4]*x[7]*x[9]+0.8983*x[4]*x[7]*x[13]+0.7197*x[4]*x[7]*x[15]+0.7867*x[4]*x[8]*x[9]+0.7522*x[4]*x[8]*x[12]+0.3459*x[4]*x[9]*x[12]-0.0777*x[4]*x[9]*x[13]+0.5773*x[4]*x[9]*x[14]-0.6435*x[4]*x[9]*x[15]+0.9476*x[4]*x[10]*x[12]-0.7687*x[4]*x[10]*x[14]-0.0463*x[4]*x[11]*x[12]+0.2671*x[4]*x[11]*x[14]-0.4786*x[4]*x[12]*x[13]-0.3629*x[4]*x[12]*x[14]+0.2672*x[4]*x[13]*x[14]+0.0737*x[4]*x[13]*x[15]-0.522*x[5]*x[6]*x[8]+0.8269*x[5]*x[6]*x[9]+0.8863*x[5]*x[6]*x[10]-0.336*x[5]*x[6]*x[12]-0.8332*x[5]*x[6]*x[13]+0.2968*x[5]*x[7]*x[9]+0.5851*x[5]*x[7]*x[10]-0.8453*x[5]*x[7]*x[11]+0.6431*x[5]*x[7]*x[12]-0.3442*x[5]*x[7]*x[13]-0.576*x[5]*x[7]*x[14]-0.7771*x[5]*x[8]*x[10]-0.5831*x[5]*x[8]*x[12]+0.6243*x[5]*x[8]*x[14]+0.2781*x[5]*x[9]*x[10]+0.0869*x[5]*x[9]*x[11]+0.3076*x[5]*x[9]*x[13]+0.0081*x[5]*x[9]*x[15]+0.815*x[5]*x[10]*x[12]+0.7216*x[5]*x[10]*x[13]+0.637*x[5]*x[11]*x[12]+0.4245*x[5]*x[11]*x[13]-0.8848*x[5]*x[11]*x[15]+0.8218*x[5]*x[12]*x[14]+0.7087*x[5]*x[12]*x[15]-0.5188*x[5]*x[13]*x[14]-0.136*x[5]*x[13]*x[15]-0.1199*x[6]*x[7]*x[8]-0.5826*x[6]*x[7]*x[9]-0.9321*x[6]*x[7]*x[11]-0.356*x[6]*x[7]*x[12]+0.7898*x[6]*x[7]*x[15]+0.1319*x[6]*x[8]*x[9]+0.312*x[6]*x[8]*x[10]+0.4892*x[6]*x[8]*x[13]-0.1758*x[6]*x[8]*x[14]+0.5111*x[6]*x[8]*x[15]-0.2941*x[6]*x[9]*x[10]+0.7201*x[6]*x[9]*x[11]-0.8172*x[6]*x[10]*x[11]-0.5843*x[6]*x[10]*x[12]-0.6766*x[6]*x[10]*x[14]+0.7884*x[6]*x[10]*x[15]-0.3908*x[6]*x[11]*x[12]-0.1414*x[6]*x[11]*x[13]+0.7174*x[6]*x[11]*x[14]-0.5306*x[6]*x[12]*x[14]-0.3353*x[6]*x[13]*x[15]+0.0763*x[7]*x[8]*x[11]+0.5347*x[7]*x[8]*x[14]-0.3452*x[7]*x[9]*x[10]-0.0114*x[7]*x[9]*x[11]-0.5509*x[7]*x[9]*x[12]-0.1614*x[7]*x[9]*x[13]-0.4822*x[7]*x[9]*x[14]+0.8777*x[7]*x[9]*x[15]+0.0994*x[7]*x[10]*x[11]+0.999*x[7]*x[11]*x[12]+0.3405*x[7]*x[12]*x[13]+0.9677*x[7]*x[12]*x[14]-0.855*x[7]*x[13]*x[14]+0.4002*x[8]*x[9]*x[10]+0.712*x[8]*x[9]*x[11]+0.9053*x[8]*x[9]*x[12]-0.216*x[8]*x[9]*x[13]+0.1477*x[8]*x[9]*x[14]+0.0849*x[8]*x[9]*x[15]-0.4136*x[8]*x[10]*x[12]+0.0927*x[8]*x[10]*x[14]+0.1914*x[8]*x[11]*x[13]-0.7327*x[8]*x[12]*x[13]+0.7223*x[8]*x[13]*x[14]-0.5079*x[9]*x[10]*x[11]-0.23*x[9]*x[10]*x[13]+0.2566*x[9]*x[11]*x[12]-0.2393*x[9]*x[11]*x[13]+0.9933*x[9]*x[11]*x[14]-0.3814*x[9]*x[12]*x[13]-0.295*x[9]*x[12]*x[15]+0.3729*x[9]*x[13]*x[15]-0.9258*x[10]*x[11]*x[13]-0.7117*x[10]*x[11]*x[15]-0.3192*x[10]*x[12]*x[13]-0.8348*x[10]*x[13]*x[14]+0.6049*x[11]*x[12]*x[14]-0.1555*x[12]*x[13]*x[14]+0.6805*x[12]*x[13]*x[15]-0.3183*x[12]*x[14]*x[15] <= 19.19)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 
