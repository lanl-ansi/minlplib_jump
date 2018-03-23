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
@NLconstraint(m, e1, -(0.6694*x[6]^2-0.4047*x[6]+0.0402*x[14]^3+0.4384*x[14]^2+0.0728*x[14]+(-0.4612*x[1]*x[4])-0.3171*x[1]*x[8]-0.59*x[2]*x[4]+0.4934*x[2]*x[5]-0.1352*x[2]*x[9]-0.3092*x[2]*x[12]+0.7875*x[3]*x[7]+0.034*x[3]*x[9]+0.3746*x[4]*x[5]-0.2916*x[4]*x[8]+0.2576*x[4]*x[10]-0.3803*x[4]*x[11]+0.3848*x[5]*x[11]+0.5469*x[5]*x[13]+0.1814*x[6]*x[11]+0.4389*x[6]*x[12]+0.8172*x[6]*x[13]+0.3241*x[7]*x[13]+0.8089*x[8]*x[10]-0.9132*x[8]*x[12]-0.2308*x[8]*x[14]-0.068*x[8]*x[15]+0.8514*x[11]*x[13]-0.7053*x[12]*x[14]-0.4484*x[1]+0.0002*x[2]+0.9242*x[3]-0.3877*x[4]-0.776*x[5]-0.8727*x[7]-0.014*x[8]-0.9627*x[9]-0.15*x[10]-0.7809*x[11]-0.4473*x[12]+0.4151*x[13]-0.2027*x[15]+0.3986*x[1]^2*x[15]+0.7179*x[2]^2*x[5]+0.146*x[2]^2*x[7]+0.6978*x[2]^2*x[11]-0.1984*x[3]^2*x[10]-0.0869*x[3]^2*x[11]+0.497*x[3]^2*x[13]+0.3302*x[4]^2*x[3]-0.1993*x[4]^2*x[8]+0.5378*x[5]^2*x[1]+0.7862*x[5]^2*x[2]+0.498*x[5]^2*x[6]+0.2359*x[5]^2*x[11]+0.332*x[6]^2*x[4]+0.7865*x[6]^2*x[8]-0.4053*x[7]^2*x[2]-0.1423*x[7]^2*x[12]+0.6138*x[8]^2*x[3]-0.4974*x[8]^2*x[9]+0.3056*x[8]^2*x[13]+0.477*x[8]^2*x[15]-0.4837*x[9]^2*x[2]+0.6678*x[9]^2*x[10]-0.3166*x[9]^2*x[14]-0.328*x[10]^2*x[1]-0.7244*x[11]^2*x[6]-0.269*x[12]^2*x[4]-0.009*x[13]^2*x[8]+0.5193*x[14]^2*x[3]+0.9356*x[14]^2*x[11]+0.3681*x[14]^2*x[15]+0.8523*x[15]^2*x[11]+0.2604*x[1]*x[2]*x[6]-0.164*x[1]*x[2]*x[4]-0.0975*x[1]*x[2]*x[11]-0.9915*x[1]*x[3]*x[4]-0.6331*x[1]*x[3]*x[6]-0.1357*x[1]*x[3]*x[9]-0.0868*x[1]*x[3]*x[13]+0.7985*x[1]*x[4]*x[11]+0.7715*x[1]*x[4]*x[14]+0.5096*x[1]*x[5]*x[8]-0.429*x[1]*x[5]*x[11]+0.8177*x[1]*x[5]*x[13]-0.9313*x[1]*x[7]*x[14]-0.1556*x[1]*x[8]*x[9]+0.6369*x[1]*x[8]*x[12]-0.322*x[1]*x[8]*x[14]+0.6505*x[1]*x[9]*x[10]+0.935*x[1]*x[9]*x[13]+0.4683*x[1]*x[10]*x[12]-0.6663*x[1]*x[11]*x[12]-0.6518*x[1]*x[11]*x[13]-0.2179*x[2]*x[3]*x[5]+0.4833*x[2]*x[3]*x[9]-0.2571*x[2]*x[3]*x[10]+0.3347*x[2]*x[3]*x[14]+0.802*x[2]*x[4]*x[6]-0.902*x[2]*x[4]*x[7]-0.0462*x[2]*x[4]*x[12]+0.8075*x[2]*x[5]*x[6]-0.247*x[2]*x[5]*x[11]-0.9637*x[2]*x[5]*x[12]+0.706*x[2]*x[5]*x[14]+0.9703*x[2]*x[6]*x[7]+0.8093*x[2]*x[6]*x[10]+0.4808*x[2]*x[6]*x[11]+0.8521*x[2]*x[6]*x[12]-0.9411*x[2]*x[6]*x[13]+0.0583*x[2]*x[6]*x[14]-0.9694*x[2]*x[6]*x[15]-0.2402*x[2]*x[8]*x[14]+0.169*x[2]*x[8]*x[15]+0.4776*x[2]*x[9]*x[10]+0.2013*x[2]*x[9]*x[13]-0.3177*x[2]*x[10]*x[11]-0.8667*x[2]*x[10]*x[15]+0.8728*x[2]*x[11]*x[12]-0.7219*x[2]*x[11]*x[13]-0.0383*x[2]*x[11]*x[14]+0.8603*x[3]*x[4]*x[7]+0.8573*x[3]*x[4]*x[9]-0.1863*x[3]*x[4]*x[10]-0.1433*x[3]*x[4]*x[11]+0.5209*x[3]*x[4]*x[12]+0.9985*x[3]*x[5]*x[6]+0.194*x[3]*x[5]*x[8]-0.3273*x[3]*x[5]*x[14]-0.9699*x[3]*x[6]*x[9]+0.2078*x[3]*x[6]*x[10]-0.9741*x[3]*x[6]*x[11]+0.6472*x[3]*x[6]*x[13]+0.7822*x[3]*x[7]*x[13]-0.7506*x[3]*x[7]*x[15]-0.2386*x[3]*x[8]*x[9]-0.4917*x[3]*x[8]*x[12]-0.8001*x[3]*x[9]*x[11]+0.8133*x[3]*x[9]*x[14]-0.6599*x[3]*x[10]*x[13]+0.5881*x[3]*x[10]*x[14]+0.9675*x[3]*x[11]*x[12]+0.1609*x[3]*x[11]*x[13]+0.8412*x[3]*x[12]*x[13]-0.5131*x[4]*x[5]*x[9]+0.8517*x[4]*x[5]*x[10]-0.113*x[4]*x[6]*x[15]-0.1778*x[4]*x[7]*x[10]+0.1593*x[4]*x[7]*x[12]+0.2423*x[4]*x[7]*x[13]+0.3535*x[4]*x[7]*x[15]+0.0755*x[4]*x[8]*x[10]+0.9515*x[4]*x[8]*x[14]-0.1357*x[4]*x[9]*x[12]-0.2385*x[4]*x[9]*x[13]-0.0285*x[4]*x[10]*x[12]+0.8324*x[4]*x[10]*x[15]+0.1703*x[4]*x[11]*x[13]-0.8732*x[4]*x[11]*x[14]+0.1078*x[4]*x[12]*x[14]+0.9832*x[5]*x[6]*x[9]+0.3103*x[5]*x[6]*x[11]-0.9741*x[5]*x[6]*x[15]-0.0586*x[5]*x[7]*x[11]-0.2567*x[5]*x[7]*x[13]-0.5806*x[5]*x[8]*x[10]+0.2762*x[5]*x[8]*x[11]+0.5633*x[5]*x[8]*x[14]+0.2499*x[5]*x[10]*x[14]-0.1853*x[5]*x[10]*x[15]+0.459*x[5]*x[13]*x[14]+0.3098*x[5]*x[14]*x[15]+0.2522*x[6]*x[7]*x[9]-0.1797*x[6]*x[7]*x[13]-0.2805*x[6]*x[7]*x[14]-0.3937*x[6]*x[8]*x[9]-0.0124*x[6]*x[8]*x[10]+0.828*x[6]*x[8]*x[13]-0.871*x[6]*x[8]*x[15]+0.3218*x[6]*x[9]*x[11]-0.165*x[6]*x[9]*x[12]-0.5261*x[6]*x[10]*x[12]+0.8288*x[6]*x[10]*x[14]-0.7367*x[6]*x[11]*x[12]-0.4061*x[6]*x[12]*x[13]+0.8319*x[7]*x[8]*x[15]+0.3731*x[7]*x[9]*x[11]+0.0402*x[7]*x[9]*x[12]-0.5697*x[7]*x[9]*x[15]-0.5689*x[7]*x[10]*x[11]+0.4154*x[7]*x[10]*x[15]-0.0134*x[7]*x[11]*x[12]-0.9392*x[7]*x[11]*x[15]-0.0369*x[7]*x[12]*x[13]-0.6388*x[8]*x[9]*x[10]-0.6013*x[8]*x[9]*x[13]-0.1987*x[8]*x[10]*x[11]+0.152*x[8]*x[10]*x[14]+0.3352*x[8]*x[11]*x[13]-0.4103*x[8]*x[11]*x[14]+0.1998*x[8]*x[12]*x[15]+0.8337*x[8]*x[13]*x[14]+0.5119*x[9]*x[10]*x[12]-0.3941*x[9]*x[10]*x[15]-0.3099*x[9]*x[11]*x[15]+0.63*x[9]*x[12]*x[13]+0.0351*x[9]*x[12]*x[14]+0.3182*x[10]*x[11]*x[13]+0.7255*x[11]*x[12]*x[13]-0.8687*x[11]*x[12]*x[15]+0.296*x[11]*x[13]*x[14]+0.4417*x[11]*x[14]*x[15]+0.3959*x[12]*x[13]*x[15]+0.8133*x[12]*x[14]*x[15])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 
