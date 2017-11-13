using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
b_Idx = Any[22, 23, 24]
@variable(m, b[b_Idx])
i_Idx = Any[16, 17, 18, 19, 20, 21]
@variable(m, i[i_Idx])
setcategory(i[21], :Int)
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setcategory(i[19], :Int)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setcategory(b[24], :Bin)
setcategory(i[16], :Int)
setcategory(b[23], :Bin)
setcategory(i[17], :Int)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setcategory(i[20], :Int)
setlowerbound(x[10], 0.0)
setcategory(i[18], :Int)
setcategory(b[22], :Bin)
setupperbound(x[1], 80.0)
setupperbound(x[2], 25.0)
setupperbound(x[3], 45.0)
setupperbound(x[4], 2950.0)
setupperbound(x[5], 2950.0)
setupperbound(x[6], 2950.0)
setupperbound(x[7], 400.0)
setupperbound(x[8], 400.0)
setupperbound(x[9], 400.0)
setupperbound(x[10], 350.0)
setupperbound(x[11], 350.0)
setupperbound(x[12], 350.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(i[16], 3.0)
setupperbound(i[17], 3.0)
setupperbound(i[18], 3.0)
setupperbound(i[19], 3.0)
setupperbound(i[20], 3.0)
setupperbound(i[21], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((6329.03+1800*x[1])*i[16]*i[19]*b[22]+(2489.31+1800*x[2])*i[17]*i[20]*b[23]+(3270.27+1800*x[3])*i[18]*i[21]*b[24])+objvar == 0.0)
@NLconstraint(m, e2, -(19.9* (0.000338983050847458*x[4])^3+0.161* (0.000338983050847458*x[4])^2*x[10]-1.90169491525424e-7*x[4]* (x[10])^2)+x[1] == 0.0)
@NLconstraint(m, e3, -(1.21* (0.000338983050847458*x[5])^3+0.0644* (0.000338983050847458*x[5])^2*x[11]-1.91186440677966e-7*x[5]* (x[11])^2)+x[2] == 0.0)
@NLconstraint(m, e4, -(6.52* (0.000338983050847458*x[6])^3+0.102* (0.000338983050847458*x[6])^2*x[12]-7.86440677966102e-8*x[6]* (x[12])^2)+x[3] == 0.0)
@constraint(m, e5, -(0.00023593220338983*x[4]*x[10]+629* (0.000338983050847458*x[4])^2-0.0116* (x[10])^2)+x[7] == 0.0)
@constraint(m, e6, -(0.001*x[5]*x[11]+215* (0.000338983050847458*x[5])^2-0.115* (x[11])^2)+x[8] == 0.0)
@constraint(m, e7, -(0.000179661016949153*x[6]*x[12]+361* (0.000338983050847458*x[6])^2-0.00946* (x[12])^2)+x[9] == 0.0)
@constraint(m, e8, x[13]+x[14]+x[15] == 1.0)
@constraint(m, e9, -0.00285714285714286*x[10]*i[16]+x[13] == 0.0)
@constraint(m, e10, -0.00285714285714286*x[11]*i[17]+x[14] == 0.0)
@constraint(m, e11, -0.00285714285714286*x[12]*i[18]+x[15] == 0.0)
@constraint(m, e12, -0.0025*x[7]*i[19]+b[22] == 0.0)
@constraint(m, e13, -0.0025*x[8]*i[20]+b[23] == 0.0)
@constraint(m, e14, -0.0025*x[9]*i[21]+b[24] == 0.0)
@constraint(m, e15, 0.000338983050847458*x[4]-b[22] <= 0.0)
@constraint(m, e16, 0.000338983050847458*x[5]-b[23] <= 0.0)
@constraint(m, e17, 0.000338983050847458*x[6]-b[24] <= 0.0)
@constraint(m, e18, 0.0125*x[1]-b[22] <= 0.0)
@constraint(m, e19, 0.04*x[2]-b[23] <= 0.0)
@constraint(m, e20, 0.0222222222222222*x[3]-b[24] <= 0.0)
@constraint(m, e21, 0.0025*x[7]-b[22] <= 0.0)
@constraint(m, e22, 0.0025*x[8]-b[23] <= 0.0)
@constraint(m, e23, 0.0025*x[9]-b[24] <= 0.0)
@constraint(m, e24, 0.00285714285714286*x[10]-b[22] <= 0.0)
@constraint(m, e25, 0.00285714285714286*x[11]-b[23] <= 0.0)
@constraint(m, e26, 0.00285714285714286*x[12]-b[24] <= 0.0)
@constraint(m, e27, x[13]-b[22] <= 0.0)
@constraint(m, e28, x[14]-b[23] <= 0.0)
@constraint(m, e29, x[15]-b[24] <= 0.0)
@constraint(m, e30, i[16]-3*b[22] <= 0.0)
@constraint(m, e31, i[17]-3*b[23] <= 0.0)
@constraint(m, e32, i[18]-3*b[24] <= 0.0)
@constraint(m, e33, i[19]-3*b[22] <= 0.0)
@constraint(m, e34, i[20]-3*b[23] <= 0.0)
@constraint(m, e35, i[21]-3*b[24] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
