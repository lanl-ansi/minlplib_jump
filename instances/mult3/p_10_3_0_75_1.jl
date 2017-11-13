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
@NLconstraint(m, e1, -(0.6905*x[2]^2-0.9415*x[2]+0.8116*x[3]^3-0.6084*x[3]^2-0.4551*x[3]+0.4972*x[4]-0.1766*x[4]^3+0.3767*x[5]^3-0.9505*x[5]^2-0.429*x[5]+(-0.2288*x[6]^3)-0.5465*x[6]+0.7712*x[7]^3+0.7918*x[7]^2-0.1411*x[7]+0.1204*x[8]^3+0.8937*x[8]^2+0.5444*x[8]+0.2233*x[10]^2+0.0402*x[10]+(-0.3975*x[1]*x[3])-0.8836*x[1]*x[6]+0.3616*x[1]*x[8]+0.357*x[1]*x[9]-0.8533*x[2]*x[3]+0.0692*x[2]*x[4]+0.0977*x[2]*x[5]-0.2488*x[2]*x[6]+0.1514*x[2]*x[7]+0.312*x[2]*x[8]-0.0166*x[2]*x[9]-0.6978*x[2]*x[10]+0.9307*x[3]*x[4]+0.3706*x[3]*x[5]+0.5423*x[3]*x[9]-0.625*x[4]*x[5]+0.5432*x[4]*x[6]+0.0995*x[4]*x[7]+0.1474*x[4]*x[8]-0.5914*x[4]*x[9]+0.3253*x[5]*x[7]+0.7456*x[5]*x[8]+0.9229*x[5]*x[10]-0.5344*x[6]*x[7]-0.5684*x[6]*x[8]+0.5472*x[7]*x[8]+0.6554*x[7]*x[10]-0.6518*x[8]*x[9]-0.7053*x[8]*x[10]-0.9513*x[1]+0.1779*x[9]+0.5532*x[1]^2*x[5]+0.7942*x[1]^2*x[9]+0.62*x[2]^2*x[3]+0.6984*x[2]^2*x[4]-0.5698*x[2]^2*x[5]-0.6134*x[2]^2*x[6]-0.0902*x[2]^2*x[7]+0.1039*x[2]^2*x[8]+0.6624*x[2]^2*x[10]+0.6372*x[3]^2*x[1]+0.3949*x[3]^2*x[2]-0.1691*x[3]^2*x[4]+0.3813*x[3]^2*x[5]-0.8211*x[3]^2*x[6]-0.8758*x[3]^2*x[7]+0.3536*x[3]^2*x[8]-0.7672*x[3]^2*x[9]+0.9871*x[3]^2*x[10]+0.6908*x[4]^2*x[1]-0.4683*x[4]^2*x[2]-0.1342*x[4]^2*x[3]-0.5229*x[4]^2*x[5]+0.4909*x[4]^2*x[6]+0.3528*x[4]^2*x[7]-0.457*x[4]^2*x[8]+0.6574*x[4]^2*x[9]-0.5954*x[5]^2*x[1]-0.2623*x[5]^2*x[2]-0.8906*x[5]^2*x[3]+0.3795*x[5]^2*x[4]+0.889*x[5]^2*x[6]+0.729*x[5]^2*x[8]-0.3485*x[5]^2*x[9]+0.7718*x[6]^2*x[2]+0.4614*x[6]^2*x[4]+0.1753*x[6]^2*x[5]-0.6388*x[6]^2*x[7]-0.354*x[7]^2*x[1]-0.6769*x[7]^2*x[2]-0.6592*x[7]^2*x[5]-0.4768*x[7]^2*x[6]+0.7586*x[7]^2*x[8]-0.6986*x[7]^2*x[9]+0.9418*x[7]^2*x[10]+0.4489*x[8]^2*x[2]+0.1168*x[8]^2*x[3]-0.2086*x[8]^2*x[4]+0.9767*x[8]^2*x[5]+0.1782*x[8]^2*x[7]-0.8016*x[8]^2*x[9]-0.6953*x[9]^2*x[4]-0.6868*x[9]^2*x[5]+0.5528*x[9]^2*x[6]-0.7712*x[9]^2*x[7]-0.5705*x[9]^2*x[8]+0.3681*x[9]^2*x[10]+0.1017*x[10]^2*x[3]+0.8415*x[10]^2*x[4]+0.9075*x[10]^2*x[8]+0.2869*x[1]*x[2]*x[3]-0.3155*x[1]*x[2]*x[4]-0.6563*x[1]*x[2]*x[5]-0.7902*x[1]*x[2]*x[6]+0.5412*x[1]*x[2]*x[8]-0.1454*x[1]*x[2]*x[9]-0.0998*x[1]*x[3]*x[4]+0.8051*x[1]*x[3]*x[5]+0.1642*x[1]*x[3]*x[7]-0.1718*x[1]*x[3]*x[8]-0.0161*x[1]*x[3]*x[9]+0.9819*x[1]*x[4]*x[5]+0.9836*x[1]*x[4]*x[8]-0.6373*x[1]*x[4]*x[9]+0.9103*x[1]*x[4]*x[10]-0.1534*x[1]*x[5]*x[6]+0.7557*x[1]*x[5]*x[8]+0.4957*x[1]*x[5]*x[9]+0.9722*x[1]*x[5]*x[10]+0.5051*x[1]*x[6]*x[7]+0.5353*x[1]*x[6]*x[8]+0.935*x[1]*x[6]*x[9]-0.5615*x[1]*x[7]*x[8]+0.5135*x[1]*x[7]*x[9]+0.5181*x[1]*x[7]*x[10]+0.5083*x[1]*x[8]*x[9]+0.942*x[1]*x[9]*x[10]+0.6789*x[2]*x[3]*x[4]+0.6266*x[2]*x[3]*x[5]-0.6921*x[2]*x[3]*x[6]-0.9575*x[2]*x[3]*x[7]-0.9469*x[2]*x[3]*x[8]-0.5174*x[2]*x[3]*x[9]+0.0168*x[2]*x[3]*x[10]+0.5109*x[2]*x[4]*x[5]-0.9037*x[2]*x[4]*x[6]+0.6412*x[2]*x[4]*x[7]+0.1814*x[2]*x[4]*x[8]-0.109*x[2]*x[4]*x[9]+0.4563*x[2]*x[4]*x[10]-0.7895*x[2]*x[5]*x[6]+0.2399*x[2]*x[5]*x[7]+0.9757*x[2]*x[5]*x[8]+0.3491*x[2]*x[5]*x[9]-0.2797*x[2]*x[5]*x[10]+0.7097*x[2]*x[6]*x[7]-0.0392*x[2]*x[6]*x[8]-0.8308*x[2]*x[6]*x[9]-0.2336*x[2]*x[6]*x[10]+0.0837*x[2]*x[7]*x[8]+0.4626*x[2]*x[7]*x[9]-0.2405*x[2]*x[7]*x[10]+0.67*x[2]*x[8]*x[9]+0.4384*x[2]*x[9]*x[10]+0.3028*x[3]*x[4]*x[5]+0.6888*x[3]*x[4]*x[6]+0.2371*x[3]*x[4]*x[7]-0.8712*x[3]*x[4]*x[8]-0.8113*x[3]*x[4]*x[9]-0.0217*x[3]*x[4]*x[10]-0.9514*x[3]*x[5]*x[6]+0.23*x[3]*x[5]*x[7]-0.7801*x[3]*x[5]*x[8]-0.7085*x[3]*x[5]*x[9]+0.1968*x[3]*x[5]*x[10]+0.6366*x[3]*x[6]*x[7]-0.2728*x[3]*x[6]*x[8]-0.2385*x[3]*x[6]*x[9]-0.5978*x[3]*x[6]*x[10]+0.8201*x[3]*x[7]*x[8]+0.9262*x[3]*x[7]*x[9]+0.1793*x[3]*x[8]*x[9]-0.0061*x[3]*x[8]*x[10]+0.4191*x[3]*x[9]*x[10]+0.4507*x[4]*x[5]*x[6]-0.0954*x[4]*x[5]*x[7]-0.157*x[4]*x[5]*x[8]-0.8365*x[4]*x[5]*x[10]-0.7084*x[4]*x[6]*x[7]-0.8164*x[4]*x[6]*x[8]+0.9194*x[4]*x[6]*x[9]-0.5343*x[4]*x[6]*x[10]+0.6579*x[4]*x[7]*x[8]+0.2838*x[4]*x[7]*x[9]+0.5809*x[4]*x[7]*x[10]+0.3439*x[4]*x[8]*x[9]-0.9346*x[4]*x[8]*x[10]-0.1747*x[5]*x[6]*x[8]-0.6462*x[5]*x[6]*x[9]+0.6164*x[5]*x[6]*x[10]-0.4841*x[5]*x[7]*x[8]-0.4824*x[5]*x[7]*x[9]-0.9901*x[5]*x[7]*x[10]+0.3898*x[5]*x[8]*x[9]-0.4474*x[5]*x[8]*x[10]-0.9474*x[6]*x[7]*x[8]+0.4615*x[6]*x[7]*x[9]-0.877*x[6]*x[8]*x[9]-0.2652*x[6]*x[8]*x[10]+0.3158*x[6]*x[9]*x[10]+0.0785*x[7]*x[8]*x[9]-0.5504*x[7]*x[9]*x[10]-0.5555*x[8]*x[9]*x[10])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])
m = m 		 # model get returned when including this script. 
