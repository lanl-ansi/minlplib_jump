using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 8]
@variable(m, x[x_Idx])
b_Idx = Any[9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, b[b_Idx],  Bin)
i_Idx = Any[7]
@variable(m, i[i_Idx], Int)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_lower_bound(i[7], 3.0)
set_upper_bound(i[7], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -i[7]+x[8] == 0.0)
@NLconstraint(m, e2, i[7]*b[9]+x[1]-x[2] <= -1.0)
@NLconstraint(m, e3, i[7]*b[9]-i[7]-x[1]+x[2] <= -1.0)
@NLconstraint(m, e4, i[7]*b[10]+x[2]-x[3] <= -1.0)
@NLconstraint(m, e5, i[7]*b[10]-i[7]-x[2]+x[3] <= -1.0)
@NLconstraint(m, e6, i[7]*b[11]-x[1]+x[3] <= -1.0)
@NLconstraint(m, e7, i[7]*b[11]-i[7]+x[1]-x[3] <= -1.0)
@NLconstraint(m, e8, i[7]*b[12]+x[4]-x[5] <= -1.0)
@NLconstraint(m, e9, i[7]*b[12]-i[7]-x[4]+x[5] <= -1.0)
@NLconstraint(m, e10, i[7]*b[13]+x[5]-x[6] <= -1.0)
@NLconstraint(m, e11, i[7]*b[13]-i[7]-x[5]+x[6] <= -1.0)
@NLconstraint(m, e12, i[7]*b[14]-x[4]+x[6] <= -1.0)
@NLconstraint(m, e13, i[7]*b[14]-i[7]+x[4]-x[6] <= -1.0)
@NLconstraint(m, e14, i[7]*b[15]-x[1]+x[4] <= -1.0)
@NLconstraint(m, e15, i[7]*b[9]+i[7]*b[15]-i[7]+x[2]-x[4] <= -1.0)
@NLconstraint(m, e16, i[7]*b[16]-x[1]+x[4] <= -1.0)
@NLconstraint(m, e17, i[7]*b[16]-i[7]+x[1]-x[6] <= -1.0)
@NLconstraint(m, e18, i[7]*b[17]-x[1]+x[6] <= -1.0)
@NLconstraint(m, e19, i[7]*b[9]+i[7]*b[13]+i[7]*b[17]-i[7]+x[2]-x[5] <= -1.0)
@NLconstraint(m, e20, i[7]*b[18]-x[3]+x[5] <= -1.0)
@NLconstraint(m, e21, i[7]*b[18]-i[7]+x[1]-x[5] <= -1.0)
@NLconstraint(m, e22, i[7]*b[19]-x[3]+x[6] <= -1.0)
@NLconstraint(m, e23, i[7]*b[13]+i[7]*b[19]-i[7]+x[3]-x[5] <= -1.0)
@constraint(m, e24, b[9]+b[10]+b[11] <= 1.0)
@constraint(m, e25, b[12]+b[13]+b[14] <= 1.0)
@constraint(m, e26, -x[1] <= 0.0)
@constraint(m, e27, -x[2] <= 0.0)
@constraint(m, e28, -x[3] <= 0.0)
@constraint(m, e29, -x[4] <= 0.0)
@constraint(m, e30, -x[5] <= 0.0)
@constraint(m, e31, -x[6] <= 0.0)
@constraint(m, e32, x[1]-i[7] <= -1.0)
@constraint(m, e33, x[2]-i[7] <= -1.0)
@constraint(m, e34, x[3]-i[7] <= -1.0)
@constraint(m, e35, x[4]-i[7] <= -1.0)
@constraint(m, e36, x[5]-i[7] <= -1.0)
@constraint(m, e37, x[6]-i[7] <= -1.0)
@constraint(m, e38, -b[9] <= 0.0)
@constraint(m, e39, -b[10] <= 0.0)
@constraint(m, e40, -b[11] <= 0.0)
@constraint(m, e41, -b[12] <= 0.0)
@constraint(m, e42, -b[13] <= 0.0)
@constraint(m, e43, -b[14] <= 0.0)
@constraint(m, e44, -b[15] <= 0.0)
@constraint(m, e45, -b[16] <= 0.0)
@constraint(m, e46, -b[17] <= 0.0)
@constraint(m, e47, -b[18] <= 0.0)
@constraint(m, e48, -b[19] <= 0.0)
@constraint(m, e49, b[9] <= 1.0)
@constraint(m, e50, b[10] <= 1.0)
@constraint(m, e51, b[11] <= 1.0)
@constraint(m, e52, b[12] <= 1.0)
@constraint(m, e53, b[13] <= 1.0)
@constraint(m, e54, b[14] <= 1.0)
@constraint(m, e55, b[15] <= 1.0)
@constraint(m, e56, b[16] <= 1.0)
@constraint(m, e57, b[17] <= 1.0)
@constraint(m, e58, b[18] <= 1.0)
@constraint(m, e59, b[19] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, x[8])

m = m 		 # model get returned when including this script. 
