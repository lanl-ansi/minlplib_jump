using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 26]
@variable(m, x[x_Idx])
b_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 1000*x[1]+1000*x[2]+1000*x[3]+1000*x[4]+1000*x[5]-20*x[6]-40*b[16]+x[26] == 0.0)
@constraint(m, e2, x[2] >= 4000.0)
@constraint(m, e3, x[3] >= 4000.0)
@constraint(m, e4, x[4] >= 4000.0)
@constraint(m, e5, x[5] >= 0.0)
@constraint(m, e6, x[2] <= 7500.0)
@constraint(m, e7, x[3] <= 7500.0)
@constraint(m, e8, x[4] <= 7500.0)
@constraint(m, e9, x[5] <= 0.0)
@constraint(m, e10, x[1] == 7500.0)
@constraint(m, e11, b[16]+b[17] <= 1.0)
@constraint(m, e12, b[16]+b[17] <= 1.0)
@constraint(m, e13, b[18]+b[20] <= 1.0)
@constraint(m, e14, b[19]+b[22] <= 1.0)
@constraint(m, e15, b[18]+b[20] <= 1.0)
@constraint(m, e16, b[21]+b[24] <= 1.0)
@constraint(m, e17, b[19]+b[22] <= 1.0)
@constraint(m, e18, b[23]+b[25] <= 1.0)
@constraint(m, e19, b[21]+b[24] <= 1.0)
@constraint(m, e20, b[23]+b[25] <= 1.0)
@constraint(m, e21, x[6]-1000*b[16] <= 0.0)
@constraint(m, e22, x[7]-1000*b[17] <= 0.0)
@constraint(m, e23, x[8]-1000*b[18] <= 0.0)
@constraint(m, e24, x[9]-1000*b[19] <= 0.0)
@constraint(m, e25, x[10]-1000*b[20] <= 0.0)
@constraint(m, e26, x[11]-1000*b[21] <= 0.0)
@constraint(m, e27, x[12]-1000*b[22] <= 0.0)
@constraint(m, e28, x[13]-1000*b[23] <= 0.0)
@constraint(m, e29, x[14]-1000*b[24] <= 0.0)
@constraint(m, e30, x[15]-1000*b[25] <= 0.0)
@constraint(m, e31, -1000*x[6]+b[16] <= 0.0)
@constraint(m, e32, -1000*x[7]+b[17] <= 0.0)
@constraint(m, e33, -1000*x[8]+b[18] <= 0.0)
@constraint(m, e34, -1000*x[9]+b[19] <= 0.0)
@constraint(m, e35, -1000*x[10]+b[20] <= 0.0)
@constraint(m, e36, -1000*x[11]+b[21] <= 0.0)
@constraint(m, e37, -1000*x[12]+b[22] <= 0.0)
@constraint(m, e38, -1000*x[13]+b[23] <= 0.0)
@constraint(m, e39, -1000*x[14]+b[24] <= 0.0)
@constraint(m, e40, -1000*x[15]+b[25] <= 0.0)
@constraint(m, e41, x[1]-x[2]-1000*b[16] <= 0.0)
@constraint(m, e42, -x[1]+x[2]-1000*b[17] <= 0.0)
@constraint(m, e43, x[2]-x[3]-1000*b[18] <= 0.0)
@constraint(m, e44, x[2]-x[4]-1000*b[19] <= 0.0)
@constraint(m, e45, -x[2]+x[3]-1000*b[20] <= 0.0)
@constraint(m, e46, x[3]-x[5]-1000*b[21] <= 0.0)
@constraint(m, e47, -x[2]+x[4]-1000*b[22] <= 0.0)
@constraint(m, e48, x[4]-x[5]-1000*b[23] <= 0.0)
@constraint(m, e49, -x[3]+x[5]-1000*b[24] <= 0.0)
@constraint(m, e50, -x[4]+x[5]-1000*b[25] <= 0.0)
@constraint(m, e51, -x[1]+x[2]+1000*b[16] <= 1000.0)
@constraint(m, e52, x[1]-x[2]+1000*b[17] <= 1000.0)
@constraint(m, e53, -x[2]+x[3]+1000*b[18] <= 1000.0)
@constraint(m, e54, -x[2]+x[4]+1000*b[19] <= 1000.0)
@constraint(m, e55, x[2]-x[3]+1000*b[20] <= 1000.0)
@constraint(m, e56, -x[3]+x[5]+1000*b[21] <= 1000.0)
@constraint(m, e57, x[2]-x[4]+1000*b[22] <= 1000.0)
@constraint(m, e58, -x[4]+x[5]+1000*b[23] <= 1000.0)
@constraint(m, e59, x[3]-x[5]+1000*b[24] <= 1000.0)
@constraint(m, e60, x[4]-x[5]+1000*b[25] <= 1000.0)
@constraint(m, e61, x[11]+x[13]-x[14]-x[15] == 20.0)
@constraint(m, e62, x[6]-x[7]-x[8]-x[9]+x[10]+x[12] == 0.0)
@constraint(m, e63, x[8]-x[10]-x[11]+x[14] == 0.0)
@constraint(m, e64, x[9]-x[12]-x[13]+x[15] == 0.0)
@constraint(m, e65, x[6] >= 0.0)
@constraint(m, e66, x[6] <= 50.0)
@NLconstraint(m, e67, -0.249149*x[6]*x[6]+x[1]-x[2]-1000*b[16] >= -1000.0)
@NLconstraint(m, e68, -0.249149*x[7]*x[7]-x[1]+x[2]-1000*b[17] >= -1000.0)
@NLconstraint(m, e69, -0.249149*x[8]*x[8]+x[2]-x[3]-1000*b[18] >= -1000.0)
@NLconstraint(m, e70, -0.249149*x[9]*x[9]+x[2]-x[4]-1000*b[19] >= -1000.0)
@NLconstraint(m, e71, -0.249149*x[10]*x[10]-x[2]+x[3]-1000*b[20] >= -1000.0)
@NLconstraint(m, e72, -0.249149*x[11]*x[11]+x[3]-x[5]-1000*b[21] >= -1000.0)
@NLconstraint(m, e73, -0.249149*x[12]*x[12]-x[2]+x[4]-1000*b[22] >= -1000.0)
@NLconstraint(m, e74, -0.249149*x[13]*x[13]+x[4]-x[5]-1000*b[23] >= -1000.0)
@NLconstraint(m, e75, -0.249149*x[14]*x[14]-x[3]+x[5]-1000*b[24] >= -1000.0)
@NLconstraint(m, e76, -0.249149*x[15]*x[15]-x[4]+x[5]-1000*b[25] >= -1000.0)


# ----- Objective ----- #
@objective(m, Min, x[26])

m = m 		 # model get returned when including this script. 
