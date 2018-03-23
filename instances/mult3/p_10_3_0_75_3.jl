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
@NLconstraint(m, e1, -(0.3431*x[2]^3-0.3438*x[2]^2+0.4204*x[2]+0.0007*x[3]^3-0.9959*x[3]^2+0.2847*x[3]+0.3039*x[4]^3+0.0003*x[4]^2+0.1227*x[4]+0.8318*x[5]-0.0832*x[5]^2+0.0372*x[6]^2-0.9798*x[6]^3-0.0133*x[6]+0.8707*x[7]^3+0.1912*x[7]^2+0.4677*x[7]+(-0.9858*x[8]^3)-0.4571*x[8]^2+0.9818*x[8]+0.2404*x[9]^3-0.884*x[9]+0.7955*x[10]-0.0666*x[10]^2+0.3769*x[1]*x[3]-0.5395*x[1]*x[2]+0.7893*x[1]*x[5]-0.8201*x[1]*x[9]+0.422*x[1]*x[10]+0.6628*x[2]*x[3]+0.7903*x[2]*x[4]+0.2768*x[2]*x[5]+0.3118*x[2]*x[6]+0.467*x[2]*x[7]-0.82*x[2]*x[8]+0.5834*x[2]*x[9]-0.7918*x[2]*x[10]+0.5075*x[3]*x[4]-0.8802*x[3]*x[5]+0.9131*x[3]*x[6]-0.3447*x[3]*x[7]-0.0679*x[3]*x[8]-0.6852*x[3]*x[9]-0.2008*x[3]*x[10]+0.6701*x[4]*x[5]-0.4795*x[4]*x[6]-0.674*x[4]*x[7]+0.2682*x[4]*x[8]+0.4707*x[4]*x[9]-0.865*x[4]*x[10]+0.2168*x[5]*x[7]-0.0515*x[5]*x[8]-0.8217*x[5]*x[9]+0.0318*x[5]*x[10]-0.8866*x[6]*x[7]-0.2227*x[6]*x[8]+0.1747*x[6]*x[9]-0.6551*x[6]*x[10]+0.2971*x[8]*x[9]-0.816*x[9]*x[10]+0.5755*x[1]+0.959*x[1]^2*x[2]-0.3553*x[1]^2*x[5]-0.8452*x[1]^2*x[7]-0.4876*x[1]^2*x[8]-0.8543*x[2]^2*x[4]-0.9484*x[2]^2*x[5]-0.4247*x[2]^2*x[7]-0.4392*x[2]^2*x[8]-0.851*x[2]^2*x[9]-0.3318*x[2]^2*x[10]-0.815*x[3]^2*x[2]+0.8229*x[3]^2*x[4]+0.7548*x[3]^2*x[5]+0.9595*x[3]^2*x[6]-0.0194*x[3]^2*x[7]-0.8059*x[3]^2*x[8]+0.1988*x[3]^2*x[10]+0.3825*x[4]^2*x[5]+0.7638*x[4]^2*x[6]-0.1564*x[4]^2*x[7]+0.4467*x[4]^2*x[8]+0.3372*x[4]^2*x[9]+0.4047*x[5]^2*x[2]-0.6702*x[5]^2*x[3]-0.5286*x[5]^2*x[6]+0.1911*x[5]^2*x[7]-0.5285*x[5]^2*x[10]-0.0897*x[6]^2*x[1]+0.7162*x[6]^2*x[2]+0.4298*x[6]^2*x[3]+0.3496*x[6]^2*x[4]+0.9099*x[6]^2*x[5]+0.7412*x[6]^2*x[7]-0.5321*x[6]^2*x[9]+0.1374*x[6]^2*x[10]+0.618*x[7]^2*x[2]+0.8559*x[7]^2*x[4]-0.0018*x[7]^2*x[5]-0.502*x[7]^2*x[6]-0.5066*x[7]^2*x[8]+0.8533*x[7]^2*x[10]-0.3052*x[8]^2*x[1]-0.7528*x[8]^2*x[3]+0.5795*x[8]^2*x[4]-0.685*x[8]^2*x[6]+0.3144*x[8]^2*x[7]-0.2238*x[8]^2*x[9]+0.1879*x[8]^2*x[10]+0.9739*x[9]^2*x[1]+0.5659*x[9]^2*x[2]-0.4916*x[9]^2*x[3]+0.7955*x[9]^2*x[4]+0.2197*x[9]^2*x[6]+0.7626*x[9]^2*x[8]-0.007*x[10]^2*x[1]+0.0803*x[10]^2*x[2]+0.8332*x[1]*x[2]*x[4]-0.9394*x[1]*x[2]*x[5]-0.0799*x[1]*x[2]*x[6]+0.8048*x[1]*x[2]*x[9]-0.5467*x[1]*x[2]*x[10]-0.8816*x[1]*x[3]*x[7]+0.4162*x[1]*x[3]*x[10]-0.6183*x[1]*x[4]*x[5]-0.7735*x[1]*x[4]*x[7]+0.8508*x[1]*x[4]*x[9]+0.9356*x[1]*x[4]*x[10]-0.9097*x[1]*x[5]*x[7]-0.8264*x[1]*x[5]*x[8]+0.4025*x[1]*x[5]*x[9]-0.2946*x[1]*x[5]*x[10]+0.3641*x[1]*x[6]*x[7]-0.0242*x[1]*x[7]*x[9]-0.528*x[1]*x[7]*x[10]+0.0772*x[1]*x[8]*x[9]+0.8458*x[1]*x[8]*x[10]-0.9214*x[1]*x[9]*x[10]+0.7725*x[2]*x[3]*x[5]-0.5661*x[2]*x[3]*x[6]-0.416*x[2]*x[3]*x[7]+0.5007*x[2]*x[3]*x[8]+0.834*x[2]*x[3]*x[9]+0.5937*x[2]*x[3]*x[10]+0.0163*x[2]*x[4]*x[5]-0.4754*x[2]*x[4]*x[6]+0.7428*x[2]*x[4]*x[7]+0.2535*x[2]*x[4]*x[8]-0.505*x[2]*x[4]*x[9]+0.0643*x[2]*x[4]*x[10]-0.397*x[2]*x[5]*x[6]+0.9593*x[2]*x[5]*x[7]+0.6686*x[2]*x[5]*x[8]-0.6154*x[2]*x[5]*x[9]+0.7025*x[2]*x[5]*x[10]+0.6852*x[2]*x[6]*x[7]+0.8772*x[2]*x[6]*x[8]-0.3003*x[2]*x[6]*x[9]-0.6666*x[2]*x[6]*x[10]+0.1937*x[2]*x[7]*x[8]-0.0405*x[2]*x[7]*x[9]+0.1923*x[2]*x[7]*x[10]+0.7574*x[2]*x[8]*x[9]-0.9093*x[2]*x[8]*x[10]-0.0282*x[2]*x[9]*x[10]+0.3621*x[3]*x[4]*x[5]-0.3449*x[3]*x[4]*x[6]+0.4155*x[3]*x[4]*x[7]-0.5155*x[3]*x[4]*x[8]-0.1989*x[3]*x[4]*x[9]+0.9193*x[3]*x[4]*x[10]+0.1204*x[3]*x[5]*x[6]+0.1278*x[3]*x[5]*x[7]+0.1937*x[3]*x[5]*x[8]+0.227*x[3]*x[5]*x[10]-0.0839*x[3]*x[6]*x[7]-0.1694*x[3]*x[6]*x[8]-0.5187*x[3]*x[6]*x[9]+0.3546*x[3]*x[7]*x[9]-0.9126*x[3]*x[7]*x[10]+0.0653*x[3]*x[8]*x[9]-0.5666*x[3]*x[8]*x[10]+0.9036*x[4]*x[5]*x[6]-0.5659*x[4]*x[5]*x[7]+0.5373*x[4]*x[5]*x[9]+0.2933*x[4]*x[5]*x[10]+0.1018*x[4]*x[6]*x[7]+0.6494*x[4]*x[6]*x[8]-0.4765*x[4]*x[6]*x[9]+0.7137*x[4]*x[6]*x[10]-0.2551*x[4]*x[7]*x[8]+0.0664*x[4]*x[7]*x[9]-0.4188*x[4]*x[8]*x[9]-0.8971*x[4]*x[8]*x[10]+0.9372*x[4]*x[9]*x[10]+0.5367*x[5]*x[6]*x[7]-0.4071*x[5]*x[6]*x[8]-0.7493*x[5]*x[6]*x[9]+0.7508*x[5]*x[7]*x[8]-0.6545*x[5]*x[7]*x[9]-0.3754*x[5]*x[8]*x[9]+0.6859*x[5]*x[8]*x[10]+0.9096*x[5]*x[9]*x[10]+0.7069*x[6]*x[7]*x[8]-0.6853*x[6]*x[7]*x[9]+0.0691*x[6]*x[7]*x[10]-0.1523*x[6]*x[8]*x[9]+0.8452*x[6]*x[8]*x[10]+0.695*x[6]*x[9]*x[10]+0.288*x[7]*x[8]*x[9]+0.4656*x[7]*x[8]*x[10]+0.3116*x[8]*x[9]*x[10])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
