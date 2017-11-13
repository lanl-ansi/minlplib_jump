using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
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
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.6193*x[5]*x[7]+0.8139*x[10]*x[16]+0.5051*x[11]*x[14]-0.7786*x[12]*x[14]-0.6809*x[5]-0.674*x[7]-0.6912*x[10]+0.15*x[11]-0.7118*x[12]+0.3822*x[14]-0.7372*x[16]+(-0.2043*x[1]*x[9]*x[12])-0.7607*x[1]*x[13]*x[17]-0.9697*x[3]*x[8]*x[11]+0.2399*x[3]*x[9]*x[13]-0.2265*x[4]*x[5]*x[18]+0.4467*x[4]*x[7]*x[11]+0.4704*x[4]*x[7]*x[14]+0.1748*x[4]*x[10]*x[12]+0.5528*x[5]*x[6]*x[19]+0.108*x[6]*x[11]*x[14]-0.3513*x[6]*x[13]*x[16]-0.6792*x[6]*x[13]*x[17]-0.8449*x[6]*x[17]*x[18]+0.7918*x[7]*x[13]*x[14]-0.7684*x[7]*x[14]*x[16]+0.6511*x[8]*x[11]*x[14]+0.5489*x[9]*x[17]*x[19]+0.0735*x[10]*x[11]*x[16]-0.3675*x[10]*x[13]*x[14]-0.1674*x[11]*x[17]*x[20]+0.5506*x[12]*x[14]*x[16]-0.5504*x[13]*x[19]*x[20]-0.9093*x[1]+0.5603*x[3]+0.5412*x[4]-0.0621*x[6]+0.0977*x[8]-0.3899*x[9]-0.6134*x[13]+0.42*x[17]-0.2405*x[18]-0.204*x[19]-0.998*x[20]+0.6796*x[1]*x[2]*x[3]*x[14]+0.2284*x[1]*x[3]*x[4]*x[12]-0.4303*x[1]*x[3]*x[5]*x[7]+0.8874*x[1]*x[4]*x[5]*x[20]-0.4609*x[1]*x[5]*x[6]*x[18]-0.0957*x[1]*x[5]*x[11]*x[19]-0.3218*x[1]*x[7]*x[10]*x[17]+0.7114*x[1]*x[7]*x[13]*x[14]+0.9377*x[1]*x[9]*x[19]*x[20]+0.9245*x[1]*x[12]*x[13]*x[20]-0.4285*x[1]*x[12]*x[14]*x[18]-0.1132*x[2]*x[3]*x[5]*x[6]+0.3616*x[2]*x[3]*x[9]*x[16]+0.5175*x[2]*x[4]*x[13]*x[14]-0.5914*x[2]*x[5]*x[7]*x[18]-0.9096*x[2]*x[5]*x[8]*x[16]-0.7254*x[2]*x[5]*x[9]*x[17]-0.1518*x[2]*x[6]*x[7]*x[9]+0.4133*x[2]*x[6]*x[15]*x[20]-0.5022*x[2]*x[8]*x[14]*x[18]+0.7887*x[2]*x[11]*x[15]*x[16]-0.9062*x[2]*x[12]*x[18]*x[19]-0.0021*x[2]*x[14]*x[15]*x[19]+0.9687*x[3]*x[4]*x[10]*x[13]-0.4982*x[3]*x[5]*x[19]*x[20]+0.4463*x[3]*x[6]*x[8]*x[10]+0.9569*x[3]*x[6]*x[8]*x[12]+0.5074*x[3]*x[6]*x[8]*x[16]+0.847*x[3]*x[6]*x[15]*x[18]+0.416*x[3]*x[7]*x[13]*x[14]-0.7368*x[3]*x[7]*x[13]*x[18]+0.7355*x[3]*x[8]*x[11]*x[17]+0.2441*x[3]*x[8]*x[15]*x[17]+0.474*x[3]*x[9]*x[10]*x[13]+0.67*x[3]*x[12]*x[15]*x[17]+0.3165*x[3]*x[13]*x[15]*x[18]-0.3631*x[3]*x[13]*x[16]*x[19]-0.3148*x[4]*x[5]*x[7]*x[11]-0.4683*x[4]*x[6]*x[7]*x[17]-0.2095*x[4]*x[6]*x[9]*x[10]+0.4626*x[4]*x[6]*x[15]*x[17]-0.0382*x[4]*x[7]*x[9]*x[10]+0.2372*x[4]*x[7]*x[13]*x[17]-0.9499*x[4]*x[7]*x[14]*x[17]-0.357*x[4]*x[8]*x[18]*x[19]-0.5684*x[4]*x[11]*x[15]*x[16]-0.5121*x[4]*x[14]*x[18]*x[20]+0.6976*x[5]*x[6]*x[9]*x[13]+0.2431*x[5]*x[6]*x[11]*x[17]+0.7971*x[5]*x[6]*x[14]*x[16]-0.7189*x[5]*x[7]*x[9]*x[14]-0.5216*x[5]*x[8]*x[9]*x[14]-0.539*x[5]*x[8]*x[11]*x[17]-0.741*x[5]*x[9]*x[11]*x[20]-0.1097*x[5]*x[10]*x[11]*x[16]+0.5998*x[5]*x[10]*x[11]*x[18]+0.1184*x[5]*x[10]*x[13]*x[20]-0.0862*x[5]*x[12]*x[14]*x[19]+0.7708*x[5]*x[12]*x[15]*x[16]+0.7099*x[5]*x[14]*x[16]*x[18]-0.615*x[5]*x[15]*x[17]*x[20]+0.159*x[5]*x[17]*x[18]*x[19]-0.7262*x[6]*x[8]*x[13]*x[19]-0.6094*x[6]*x[9]*x[15]*x[19]+0.1005*x[6]*x[10]*x[11]*x[19]+0.8754*x[6]*x[10]*x[14]*x[15]-0.4368*x[6]*x[10]*x[14]*x[17]-0.4374*x[6]*x[10]*x[19]*x[20]-0.2352*x[7]*x[8]*x[9]*x[10]+0.4507*x[7]*x[8]*x[12]*x[16]-0.4102*x[7]*x[9]*x[11]*x[12]+0.73*x[7]*x[9]*x[17]*x[18]+0.2964*x[7]*x[10]*x[12]*x[15]-0.9209*x[7]*x[10]*x[13]*x[15]-0.4768*x[7]*x[11]*x[14]*x[18]-0.069*x[7]*x[11]*x[18]*x[19]+0.1189*x[7]*x[12]*x[14]*x[17]+0.9805*x[7]*x[13]*x[14]*x[19]+0.5809*x[7]*x[14]*x[19]*x[20]+0.4968*x[8]*x[9]*x[15]*x[19]-0.7084*x[8]*x[11]*x[13]*x[20]+0.3016*x[8]*x[11]*x[15]*x[17]+0.9194*x[8]*x[11]*x[15]*x[18]+0.3629*x[8]*x[11]*x[18]*x[20]-0.0387*x[8]*x[12]*x[15]*x[19]-0.3832*x[8]*x[15]*x[17]*x[19]-0.1075*x[9]*x[10]*x[14]*x[19]-0.5614*x[9]*x[10]*x[16]*x[20]-0.5016*x[9]*x[12]*x[14]*x[17]+0.5713*x[9]*x[12]*x[16]*x[20]+0.8573*x[9]*x[14]*x[15]*x[18]-0.2504*x[10]*x[15]*x[17]*x[19]-0.1788*x[11]*x[14]*x[15]*x[17]+0.8823*x[11]*x[14]*x[17]*x[18]-0.9474*x[12]*x[13]*x[15]*x[17]-0.8135*x[12]*x[15]*x[19]*x[20]+0.1172*x[14]*x[15]*x[16]*x[19]-0.7123*x[2]+0.9004*x[15])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])
m = m 		 # model get returned when including this script. 
