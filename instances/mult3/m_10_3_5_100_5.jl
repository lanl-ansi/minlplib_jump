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
@NLconstraint(m, e1, -(0.0559*x[1]*x[3]-0.7567*x[1]*x[2]-0.5979*x[1]*x[4]-0.5328*x[1]*x[5]+0.4108*x[1]*x[6]-0.9746*x[1]*x[7]-0.8816*x[1]*x[8]-0.6054*x[1]*x[9]+0.8048*x[1]*x[10]-0.4608*x[2]*x[3]-0.5202*x[2]*x[4]-0.0126*x[2]*x[5]+0.4756*x[2]*x[6]-0.1092*x[2]*x[7]+0.3646*x[2]*x[8]-0.604*x[2]*x[9]+0.8765*x[2]*x[10]+0.5905*x[3]*x[4]-0.5705*x[3]*x[5]-0.5678*x[3]*x[6]-0.9959*x[3]*x[7]-0.0773*x[3]*x[8]-0.4033*x[3]*x[9]+0.5307*x[3]*x[10]+0.8639*x[4]*x[5]+0.9249*x[4]*x[6]+0.5844*x[4]*x[7]-0.3302*x[4]*x[8]-0.8971*x[4]*x[9]+0.9343*x[4]*x[10]-0.4812*x[5]*x[6]-0.0224*x[5]*x[7]-0.0381*x[5]*x[8]-0.6702*x[5]*x[9]+0.0765*x[5]*x[10]-0.5192*x[6]*x[7]+0.15*x[6]*x[8]+0.7511*x[6]*x[9]+0.2959*x[6]*x[10]+0.6925*x[7]*x[8]-0.7939*x[7]*x[9]-0.4419*x[7]*x[10]-0.4714*x[8]*x[9]+0.0146*x[8]*x[10]+0.9626*x[9]*x[10]+0.0541*x[1]-0.7318*x[2]-0.6666*x[3]+0.6844*x[4]+0.2667*x[5]+0.9428*x[6]-0.8373*x[7]+0.1923*x[8]+0.9925*x[9]-0.9806*x[10]+0.1198*x[1]*x[2]*x[3]+0.217*x[1]*x[2]*x[4]+0.0079*x[1]*x[2]*x[5]-0.3018*x[1]*x[2]*x[6]+0.9843*x[1]*x[2]*x[7]-0.9696*x[1]*x[2]*x[8]+0.8791*x[1]*x[2]*x[9]-0.9214*x[1]*x[2]*x[10]-0.6654*x[1]*x[3]*x[4]+0.8961*x[1]*x[3]*x[5]+0.7488*x[1]*x[3]*x[6]-0.816*x[1]*x[3]*x[7]+0.7283*x[1]*x[3]*x[8]+0.7735*x[1]*x[3]*x[9]+0.4313*x[1]*x[3]*x[10]-0.8995*x[1]*x[4]*x[5]-0.0242*x[1]*x[4]*x[6]+0.1137*x[1]*x[4]*x[7]-0.0807*x[1]*x[4]*x[8]+0.3716*x[1]*x[4]*x[9]-0.9041*x[1]*x[4]*x[10]-0.0494*x[1]*x[5]*x[6]+0.8577*x[1]*x[5]*x[7]+0.4838*x[1]*x[5]*x[8]+0.9976*x[1]*x[5]*x[9]+0.7792*x[1]*x[5]*x[10]-0.3619*x[1]*x[6]*x[7]+0.9372*x[1]*x[6]*x[8]-0.3207*x[1]*x[6]*x[9]+0.8329*x[1]*x[6]*x[10]-0.746*x[1]*x[7]*x[8]+0.5825*x[1]*x[7]*x[9]+0.9976*x[1]*x[7]*x[10]-0.1785*x[1]*x[8]*x[9]-0.0403*x[1]*x[8]*x[10]-0.5285*x[1]*x[9]*x[10]-0.3191*x[2]*x[3]*x[4]+0.4136*x[2]*x[3]*x[5]-0.4137*x[2]*x[3]*x[6]+0.3309*x[2]*x[3]*x[7]+0.8559*x[2]*x[3]*x[8]+0.9334*x[2]*x[3]*x[9]+0.1038*x[2]*x[3]*x[10]-0.6685*x[2]*x[4]*x[5]-0.2205*x[2]*x[4]*x[6]+0.8979*x[2]*x[4]*x[7]+0.9253*x[2]*x[4]*x[8]-0.7958*x[2]*x[4]*x[9]-0.2908*x[2]*x[4]*x[10]-0.3804*x[2]*x[5]*x[6]-0.2418*x[2]*x[5]*x[7]+0.3039*x[2]*x[5]*x[8]-0.0473*x[2]*x[5]*x[9]-0.2491*x[2]*x[5]*x[10]+0.9586*x[2]*x[6]*x[7]-0.6003*x[2]*x[6]*x[8]+0.5236*x[2]*x[6]*x[9]-0.6153*x[2]*x[6]*x[10]-0.4986*x[2]*x[7]*x[8]-0.8059*x[2]*x[7]*x[9]-0.5445*x[2]*x[7]*x[10]+0.5581*x[2]*x[8]*x[9]+0.821*x[2]*x[8]*x[10]+0.9429*x[2]*x[9]*x[10]-0.5765*x[3]*x[4]*x[5]-0.3061*x[3]*x[4]*x[6]+0.7112*x[3]*x[4]*x[7]-0.9048*x[3]*x[4]*x[8]+0.6349*x[3]*x[4]*x[9]+0.5005*x[3]*x[4]*x[10]-0.3052*x[3]*x[5]*x[6]-0.7796*x[3]*x[5]*x[7]-0.2323*x[3]*x[5]*x[8]-0.1328*x[3]*x[5]*x[9]+0.6701*x[3]*x[5]*x[10]+0.6946*x[3]*x[6]*x[7]+0.4003*x[3]*x[6]*x[8]-0.6794*x[3]*x[6]*x[9]+0.695*x[3]*x[6]*x[10]-0.6787*x[3]*x[7]*x[8]-0.7436*x[3]*x[7]*x[9]+0.4042*x[3]*x[7]*x[10]+0.3019*x[3]*x[8]*x[9]-0.3193*x[3]*x[8]*x[10]-0.4433*x[3]*x[9]*x[10]-0.5216*x[4]*x[5]*x[6]+0.8652*x[4]*x[5]*x[7]+0.6401*x[4]*x[5]*x[8]+0.0653*x[4]*x[5]*x[9]-0.1219*x[4]*x[5]*x[10]+0.8175*x[4]*x[6]*x[7]+0.7173*x[4]*x[6]*x[8]+0.0579*x[4]*x[6]*x[9]+0.2197*x[4]*x[6]*x[10]-0.1751*x[4]*x[7]*x[8]-0.4539*x[4]*x[7]*x[9]+0.6875*x[4]*x[7]*x[10]+0.3553*x[4]*x[8]*x[9]+0.3546*x[4]*x[8]*x[10]+0.2915*x[4]*x[9]*x[10]-0.1419*x[5]*x[6]*x[7]+0.8974*x[5]*x[6]*x[8]-0.7709*x[5]*x[6]*x[9]+0.7025*x[5]*x[6]*x[10]+0.2871*x[5]*x[7]*x[8]-0.8686*x[5]*x[7]*x[9]+0.2948*x[5]*x[7]*x[10]-0.5289*x[5]*x[8]*x[9]-0.7476*x[5]*x[8]*x[10]+0.3785*x[5]*x[9]*x[10]-0.8182*x[6]*x[7]*x[8]+0.145*x[6]*x[7]*x[9]+0.7848*x[6]*x[7]*x[10]+0.329*x[6]*x[8]*x[9]+0.4575*x[6]*x[8]*x[10]+0.2925*x[6]*x[9]*x[10]+0.6509*x[7]*x[8]*x[9]-0.5194*x[7]*x[8]*x[10]-0.5375*x[7]*x[9]*x[10]-0.8567*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.7216*x[1]*x[3]-0.6086*x[1]*x[2]-0.8522*x[1]*x[4]+0.0107*x[1]*x[5]-0.3292*x[1]*x[6]-0.1952*x[1]*x[7]+0.0335*x[1]*x[8]-0.8434*x[1]*x[9]-0.2529*x[1]*x[10]+0.9093*x[2]*x[3]+0.0643*x[2]*x[4]+0.2242*x[2]*x[5]+0.6056*x[2]*x[6]-0.3409*x[2]*x[7]+0.1815*x[2]*x[8]+0.6494*x[2]*x[9]-0.7341*x[2]*x[10]+0.8969*x[3]*x[4]-0.098*x[3]*x[5]-0.7681*x[3]*x[6]+0.4581*x[3]*x[7]-0.7326*x[3]*x[8]-0.3787*x[3]*x[9]+0.7903*x[3]*x[10]-0.5436*x[4]*x[5]-0.288*x[4]*x[6]-0.7333*x[4]*x[7]+0.8451*x[4]*x[8]+0.2767*x[4]*x[9]+0.4912*x[4]*x[10]-0.8079*x[5]*x[6]-0.7274*x[5]*x[7]+0.579*x[5]*x[8]+0.0744*x[5]*x[9]-0.4485*x[5]*x[10]+0.8597*x[6]*x[7]+0.7511*x[6]*x[8]-0.4916*x[6]*x[9]-0.7424*x[6]*x[10]+0.3622*x[7]*x[8]+0.3053*x[7]*x[9]+0.1912*x[7]*x[10]-0.066*x[8]*x[9]+0.095*x[8]*x[10]+0.3368*x[9]*x[10]+0.0471*x[1]+0.4675*x[2]+0.7806*x[3]+0.6144*x[4]-0.2238*x[5]+0.935*x[6]-0.0262*x[7]-0.0278*x[8]+0.0401*x[9]+0.5186*x[10]+(-0.9013*x[1]*x[2]*x[3])-0.7989*x[1]*x[2]*x[4]+0.959*x[1]*x[2]*x[5]+0.6824*x[1]*x[2]*x[6]-0.0939*x[1]*x[2]*x[7]+0.9649*x[1]*x[2]*x[8]+0.887*x[1]*x[2]*x[9]+0.1799*x[1]*x[2]*x[10]-0.3306*x[1]*x[3]*x[4]+0.3269*x[1]*x[3]*x[5]+0.5563*x[1]*x[3]*x[6]+0.0427*x[1]*x[3]*x[7]-0.5169*x[1]*x[3]*x[8]-0.1694*x[1]*x[3]*x[9]-0.8772*x[1]*x[3]*x[10]-0.6835*x[1]*x[4]*x[5]+0.0361*x[1]*x[4]*x[6]-0.4938*x[1]*x[4]*x[7]-0.0824*x[1]*x[4]*x[8]-0.803*x[1]*x[4]*x[9]-0.1227*x[1]*x[4]*x[10]+0.3447*x[1]*x[5]*x[6]-0.5165*x[1]*x[5]*x[7]+0.8204*x[1]*x[5]*x[8]-0.0419*x[1]*x[5]*x[9]+0.7291*x[1]*x[5]*x[10]+0.1793*x[1]*x[6]*x[7]-0.2906*x[1]*x[6]*x[8]-0.4859*x[1]*x[6]*x[9]+0.7745*x[1]*x[6]*x[10]+0.5955*x[1]*x[7]*x[8]-0.5433*x[1]*x[7]*x[9]+0.0963*x[1]*x[7]*x[10]+0.9131*x[1]*x[8]*x[9]-0.9212*x[1]*x[8]*x[10]-0.5989*x[1]*x[9]*x[10]+0.3632*x[2]*x[3]*x[4]+0.7655*x[2]*x[3]*x[5]-0.2558*x[2]*x[3]*x[6]-0.3053*x[2]*x[3]*x[7]+0.1917*x[2]*x[3]*x[8]+0.0578*x[2]*x[3]*x[9]+0.5697*x[2]*x[3]*x[10]+0.8762*x[2]*x[4]*x[5]-0.1523*x[2]*x[4]*x[6]-0.8181*x[2]*x[4]*x[7]+0.0412*x[2]*x[4]*x[8]-0.3223*x[2]*x[4]*x[9]+0.8437*x[2]*x[4]*x[10]-0.4429*x[2]*x[5]*x[6]+0.4707*x[2]*x[5]*x[7]-0.3139*x[2]*x[5]*x[8]-0.9997*x[2]*x[5]*x[9]-0.6852*x[2]*x[5]*x[10]-0.4383*x[2]*x[6]*x[7]+0.8332*x[2]*x[6]*x[8]-0.9454*x[2]*x[6]*x[9]-0.7802*x[2]*x[6]*x[10]+0.1448*x[2]*x[7]*x[8]-0.3755*x[2]*x[7]*x[9]+0.4462*x[2]*x[7]*x[10]+0.2352*x[2]*x[8]*x[9]+0.1629*x[2]*x[8]*x[10]+0.2847*x[2]*x[9]*x[10]+0.6619*x[3]*x[4]*x[5]-0.872*x[3]*x[4]*x[6]+0.7458*x[3]*x[4]*x[7]+0.7365*x[3]*x[4]*x[8]+0.5659*x[3]*x[4]*x[9]-0.0683*x[3]*x[4]*x[10]-0.0005*x[3]*x[5]*x[6]+0.1501*x[3]*x[5]*x[7]+0.0566*x[3]*x[5]*x[8]+0.5755*x[3]*x[5]*x[9]-0.9551*x[3]*x[5]*x[10]+0.9344*x[3]*x[6]*x[7]+0.8458*x[3]*x[6]*x[8]+0.4242*x[3]*x[6]*x[9]+0.9027*x[3]*x[6]*x[10]+0.2991*x[3]*x[7]*x[8]-0.6408*x[3]*x[7]*x[9]+0.2476*x[3]*x[7]*x[10]-0.9189*x[3]*x[8]*x[9]-0.9427*x[3]*x[8]*x[10]-0.8452*x[3]*x[9]*x[10]-0.6695*x[4]*x[5]*x[6]+0.0036*x[4]*x[5]*x[7]+0.289*x[4]*x[5]*x[8]-0.8866*x[4]*x[5]*x[9]-0.7705*x[4]*x[5]*x[10]+0.0254*x[4]*x[6]*x[7]+0.9054*x[4]*x[6]*x[8]-0.6551*x[4]*x[6]*x[9]+0.9365*x[4]*x[6]*x[10]-0.4841*x[4]*x[7]*x[8]+0.0731*x[4]*x[7]*x[9]+0.4111*x[4]*x[7]*x[10]+0.3022*x[4]*x[8]*x[9]+0.3822*x[4]*x[8]*x[10]+0.6491*x[4]*x[9]*x[10]-0.5066*x[5]*x[6]*x[7]-0.9413*x[5]*x[6]*x[8]-0.365*x[5]*x[6]*x[9]-0.7983*x[5]*x[6]*x[10]+0.5997*x[5]*x[7]*x[8]+0.3562*x[5]*x[7]*x[9]-0.4208*x[5]*x[7]*x[10]+0.8607*x[5]*x[8]*x[9]-0.2785*x[5]*x[8]*x[10]+0.0423*x[5]*x[9]*x[10]-0.7908*x[6]*x[7]*x[8]+0.5368*x[6]*x[7]*x[9]-0.5704*x[6]*x[7]*x[10]+0.3404*x[6]*x[8]*x[9]-0.5106*x[6]*x[8]*x[10]-0.7448*x[6]*x[9]*x[10]+0.8469*x[7]*x[8]*x[9]+0.3948*x[7]*x[8]*x[10]-0.5077*x[7]*x[9]*x[10]-0.5102*x[8]*x[9]*x[10] <= 78.092)
@NLconstraint(m, e3, 0.2979*x[1]*x[3]-0.9364*x[1]*x[2]-0.9268*x[1]*x[4]+0.9874*x[1]*x[5]+0.7388*x[1]*x[6]-0.8378*x[1]*x[7]-0.0282*x[1]*x[8]+0.0836*x[1]*x[9]-0.2515*x[1]*x[10]-0.0813*x[2]*x[3]+0.4116*x[2]*x[4]-0.2989*x[2]*x[5]+0.9294*x[2]*x[6]+0.8361*x[2]*x[7]-0.5397*x[2]*x[8]-0.5446*x[2]*x[9]-0.3315*x[2]*x[10]+0.9279*x[3]*x[4]+0.0875*x[3]*x[5]-0.6838*x[3]*x[6]+0.5755*x[3]*x[7]-0.2985*x[3]*x[8]+0.7666*x[3]*x[9]-0.9363*x[3]*x[10]-0.1764*x[4]*x[5]+0.6139*x[4]*x[6]-0.8264*x[4]*x[7]+0.372*x[4]*x[8]-0.2674*x[4]*x[9]-0.2559*x[4]*x[10]+0.7807*x[5]*x[6]-0.7351*x[5]*x[7]-0.7983*x[5]*x[8]-0.8325*x[5]*x[9]+0.3431*x[5]*x[10]-0.6811*x[6]*x[7]+0.0826*x[6]*x[8]-0.6364*x[6]*x[9]+0.737*x[6]*x[10]+0.0265*x[7]*x[8]+0.3772*x[7]*x[9]-0.199*x[7]*x[10]+0.2168*x[8]*x[9]+0.5755*x[8]*x[10]+0.4204*x[9]*x[10]+0.2847*x[1]+0.1227*x[2]+0.8318*x[3]-0.0133*x[4]+0.4677*x[5]+0.9818*x[6]-0.884*x[7]+0.7955*x[8]+0.8508*x[9]-0.219*x[10]+0.988*x[1]*x[2]*x[3]-0.1372*x[1]*x[2]*x[4]-0.224*x[1]*x[2]*x[5]+0.87*x[1]*x[2]*x[6]+0.0584*x[1]*x[2]*x[7]+0.5312*x[1]*x[2]*x[8]+0.4155*x[1]*x[2]*x[9]+0.0551*x[1]*x[2]*x[10]-0.717*x[1]*x[3]*x[4]-0.6191*x[1]*x[3]*x[5]-0.2601*x[1]*x[3]*x[6]+0.4891*x[1]*x[3]*x[7]+0.68*x[1]*x[3]*x[8]+0.7469*x[1]*x[3]*x[9]+0.7366*x[1]*x[3]*x[10]+0.703*x[1]*x[4]*x[5]+0.2404*x[1]*x[4]*x[6]-0.279*x[1]*x[4]*x[7]-0.5194*x[1]*x[4]*x[8]+0.9109*x[1]*x[4]*x[9]-0.6612*x[1]*x[4]*x[10]+0.1988*x[1]*x[5]*x[6]-0.9723*x[1]*x[5]*x[7]+0.3193*x[1]*x[5]*x[8]+0.1272*x[1]*x[5]*x[9]+0.0778*x[1]*x[5]*x[10]-0.4785*x[1]*x[6]*x[7]+0.1841*x[1]*x[6]*x[8]-0.4067*x[1]*x[6]*x[9]+0.1632*x[1]*x[6]*x[10]+0.8656*x[1]*x[7]*x[8]+0.1611*x[1]*x[7]*x[9]+0.3543*x[1]*x[7]*x[10]+0.9647*x[1]*x[8]*x[9]+0.9587*x[1]*x[8]*x[10]-0.0666*x[1]*x[9]*x[10]+0.4269*x[2]*x[3]*x[4]-0.9024*x[2]*x[3]*x[5]+0.6766*x[2]*x[3]*x[6]+0.5873*x[2]*x[3]*x[7]+0.0772*x[2]*x[3]*x[8]-0.0731*x[2]*x[3]*x[9]-0.2137*x[2]*x[3]*x[10]-0.7503*x[2]*x[4]*x[5]-0.3695*x[2]*x[4]*x[6]+0.8727*x[2]*x[4]*x[7]-0.2959*x[2]*x[4]*x[8]-0.7141*x[2]*x[4]*x[9]-0.7346*x[2]*x[4]*x[10]-0.9422*x[2]*x[5]*x[6]+0.7824*x[2]*x[5]*x[7]+0.4184*x[2]*x[5]*x[8]+0.649*x[2]*x[5]*x[9]+0.0384*x[2]*x[5]*x[10]+0.9789*x[2]*x[6]*x[7]-0.8868*x[2]*x[6]*x[8]-0.7421*x[2]*x[6]*x[9]-0.3318*x[2]*x[6]*x[10]+0.3174*x[2]*x[7]*x[8]+0.4195*x[2]*x[7]*x[9]+0.005*x[2]*x[7]*x[10]+0.0262*x[2]*x[8]*x[9]+0.3385*x[2]*x[8]*x[10]-0.4241*x[2]*x[9]*x[10]-0.8364*x[3]*x[4]*x[5]-0.5239*x[3]*x[4]*x[6]-0.7887*x[3]*x[4]*x[7]-0.1545*x[3]*x[4]*x[8]+0.7725*x[3]*x[4]*x[9]-0.3651*x[3]*x[4]*x[10]-0.1779*x[3]*x[5]*x[6]+0.2559*x[3]*x[5]*x[7]-0.535*x[3]*x[5]*x[8]+0.1278*x[3]*x[5]*x[9]+0.5194*x[3]*x[5]*x[10]+0.648*x[3]*x[6]*x[7]+0.9947*x[3]*x[6]*x[8]+0.1175*x[3]*x[6]*x[9]-0.1423*x[3]*x[6]*x[10]+0.6628*x[3]*x[7]*x[8]+0.13*x[3]*x[7]*x[9]-0.4071*x[3]*x[7]*x[10]+0.6814*x[3]*x[8]*x[9]-0.7882*x[3]*x[8]*x[10]+0.3766*x[3]*x[9]*x[10]+0.8334*x[4]*x[5]*x[6]+0.5986*x[4]*x[5]*x[7]+0.0747*x[4]*x[5]*x[8]-0.8366*x[4]*x[5]*x[9]+0.9998*x[4]*x[5]*x[10]-0.6049*x[4]*x[6]*x[7]+0.5164*x[4]*x[6]*x[8]-0.4278*x[4]*x[6]*x[9]+0.1725*x[4]*x[6]*x[10]-0.1331*x[4]*x[7]*x[8]+0.909*x[4]*x[7]*x[9]+0.1085*x[4]*x[7]*x[10]+0.8271*x[4]*x[8]*x[9]+0.9195*x[4]*x[8]*x[10]-0.1959*x[4]*x[9]*x[10]-0.5706*x[5]*x[6]*x[7]+0.6792*x[5]*x[6]*x[8]+0.0743*x[5]*x[6]*x[9]+0.9861*x[5]*x[6]*x[10]-0.2362*x[5]*x[7]*x[8]+0.6625*x[5]*x[7]*x[9]+0.5037*x[5]*x[7]*x[10]+0.5795*x[5]*x[8]*x[9]-0.0203*x[5]*x[8]*x[10]+0.8518*x[5]*x[9]*x[10]-0.5176*x[6]*x[7]*x[8]-0.3992*x[6]*x[7]*x[9]+0.9736*x[6]*x[7]*x[10]-0.6318*x[6]*x[8]*x[9]-0.7577*x[6]*x[8]*x[10]+0.5937*x[6]*x[9]*x[10]+0.1*x[7]*x[8]*x[9]-0.9659*x[7]*x[8]*x[10]-0.9886*x[7]*x[9]*x[10]-0.6746*x[8]*x[9]*x[10] <= 44.226)
@NLconstraint(m, e4, 0.7802*x[1]*x[2]-0.9761*x[1]*x[3]+0.5948*x[1]*x[4]-0.6119*x[1]*x[5]+0.3109*x[1]*x[6]+0.9424*x[1]*x[7]-0.6722*x[1]*x[8]-0.6334*x[1]*x[9]+0.8146*x[1]*x[10]-0.5433*x[2]*x[3]+0.504*x[2]*x[4]-0.2001*x[2]*x[5]-0.4751*x[2]*x[6]-0.0336*x[2]*x[7]+0.0878*x[2]*x[8]+0.2829*x[2]*x[9]-0.0083*x[2]*x[10]+0.2969*x[3]*x[4]+0.5089*x[3]*x[5]+0.4122*x[3]*x[6]+0.9213*x[3]*x[7]+0.0134*x[3]*x[8]-0.3941*x[3]*x[9]+0.3974*x[3]*x[10]+0.9566*x[4]*x[5]-0.6902*x[4]*x[6]+0.863*x[4]*x[7]+0.1033*x[4]*x[8]+0.0337*x[4]*x[9]-0.2807*x[4]*x[10]-0.9105*x[5]*x[6]+0.9483*x[5]*x[7]-0.9439*x[5]*x[8]-0.2194*x[5]*x[9]+0.7061*x[5]*x[10]-0.9406*x[6]*x[7]-0.628*x[6]*x[8]-0.8495*x[6]*x[9]-0.7901*x[6]*x[10]+0.852*x[7]*x[8]-0.1366*x[7]*x[9]+0.4938*x[7]*x[10]+0.9668*x[8]*x[9]-0.0051*x[8]*x[10]-0.1645*x[9]*x[10]-0.4354*x[1]+0.6882*x[2]-0.2731*x[3]-0.3722*x[4]-0.3987*x[5]-0.3982*x[6]+0.15*x[7]+0.6625*x[8]+0.4707*x[9]+0.0694*x[10]+0.6978*x[1]*x[2]*x[3]+0.4425*x[1]*x[2]*x[4]+0.9231*x[1]*x[2]*x[5]+0.6453*x[1]*x[2]*x[6]+0.9226*x[1]*x[2]*x[7]-0.9742*x[1]*x[2]*x[8]-0.1023*x[1]*x[2]*x[9]-0.506*x[1]*x[2]*x[10]-0.2771*x[1]*x[3]*x[4]-0.5851*x[1]*x[3]*x[5]+0.4033*x[1]*x[3]*x[6]-0.969*x[1]*x[3]*x[7]+0.4623*x[1]*x[3]*x[8]+0.8593*x[1]*x[3]*x[9]+0.8792*x[1]*x[3]*x[10]+0.7004*x[1]*x[4]*x[5]-0.1326*x[1]*x[4]*x[6]+0.2992*x[1]*x[4]*x[7]-0.107*x[1]*x[4]*x[8]-0.0243*x[1]*x[4]*x[9]-0.3026*x[1]*x[4]*x[10]+0.4911*x[1]*x[5]*x[6]+0.0888*x[1]*x[5]*x[7]-0.2336*x[1]*x[5]*x[8]-0.5938*x[1]*x[5]*x[9]+0.957*x[1]*x[5]*x[10]-0.0037*x[1]*x[6]*x[7]-0.4063*x[1]*x[6]*x[8]+0.6278*x[1]*x[6]*x[9]+0.196*x[1]*x[6]*x[10]+0.5782*x[1]*x[7]*x[8]-0.7207*x[1]*x[7]*x[9]+0.2847*x[1]*x[7]*x[10]-0.1592*x[1]*x[8]*x[9]-0.2277*x[1]*x[8]*x[10]+0.0512*x[1]*x[9]*x[10]+0.6212*x[2]*x[3]*x[4]-0.9616*x[2]*x[3]*x[5]-0.8938*x[2]*x[3]*x[6]-0.2326*x[2]*x[3]*x[7]+0.102*x[2]*x[3]*x[8]+0.9971*x[2]*x[3]*x[9]+0.7663*x[2]*x[3]*x[10]-0.5352*x[2]*x[4]*x[5]+0.5066*x[2]*x[4]*x[6]-0.387*x[2]*x[4]*x[7]-0.2135*x[2]*x[4]*x[8]+0.0129*x[2]*x[4]*x[9]-0.4558*x[2]*x[4]*x[10]-0.6481*x[2]*x[5]*x[6]-0.7218*x[2]*x[5]*x[7]-0.7735*x[2]*x[5]*x[8]+0.5381*x[2]*x[5]*x[9]+0.9237*x[2]*x[5]*x[10]+0.088*x[2]*x[6]*x[7]-0.1725*x[2]*x[6]*x[8]-0.7814*x[2]*x[6]*x[9]-0.2254*x[2]*x[6]*x[10]+0.3023*x[2]*x[7]*x[8]-0.9957*x[2]*x[7]*x[9]+0.8797*x[2]*x[7]*x[10]+0.3441*x[2]*x[8]*x[9]-0.6929*x[2]*x[8]*x[10]-0.6938*x[2]*x[9]*x[10]+0.5092*x[3]*x[4]*x[5]+0.5327*x[3]*x[4]*x[6]+0.9047*x[3]*x[4]*x[7]+0.5129*x[3]*x[4]*x[8]-0.2257*x[3]*x[4]*x[9]+0.683*x[3]*x[4]*x[10]+0.9313*x[3]*x[5]*x[6]+0.7966*x[3]*x[5]*x[7]-0.0138*x[3]*x[5]*x[8]-0.5195*x[3]*x[5]*x[9]-0.4867*x[3]*x[5]*x[10]+0.2583*x[3]*x[6]*x[7]-0.3795*x[3]*x[6]*x[8]+0.7816*x[3]*x[6]*x[9]+0.5152*x[3]*x[6]*x[10]-0.1462*x[3]*x[7]*x[8]+0.936*x[3]*x[7]*x[9]+0.7522*x[3]*x[7]*x[10]+0.6735*x[3]*x[8]*x[9]+0.3848*x[3]*x[8]*x[10]-0.7218*x[3]*x[9]*x[10]-0.0423*x[4]*x[5]*x[6]-0.0761*x[4]*x[5]*x[7]+0.2217*x[4]*x[5]*x[8]-0.9153*x[4]*x[5]*x[9]-0.6715*x[4]*x[5]*x[10]-0.3961*x[4]*x[6]*x[7]-0.8626*x[4]*x[6]*x[8]-0.0404*x[4]*x[6]*x[9]-0.3617*x[4]*x[6]*x[10]-0.1537*x[4]*x[7]*x[8]+0.8246*x[4]*x[7]*x[9]-0.1935*x[4]*x[7]*x[10]-0.2477*x[4]*x[8]*x[9]-0.7696*x[4]*x[8]*x[10]+0.9909*x[4]*x[9]*x[10]+0.0748*x[5]*x[6]*x[7]-0.8779*x[5]*x[6]*x[8]-0.8327*x[5]*x[6]*x[9]+0.7868*x[5]*x[6]*x[10]+0.1163*x[5]*x[7]*x[8]-0.942*x[5]*x[7]*x[9]-0.6458*x[5]*x[7]*x[10]-0.8999*x[5]*x[8]*x[9]+0.4182*x[5]*x[8]*x[10]+0.2392*x[5]*x[9]*x[10]+0.5241*x[6]*x[7]*x[8]-0.2673*x[6]*x[7]*x[9]+0.5598*x[6]*x[7]*x[10]+0.0393*x[6]*x[8]*x[9]-0.4651*x[6]*x[8]*x[10]-0.4112*x[6]*x[9]*x[10]+0.554*x[7]*x[8]*x[9]-0.669*x[7]*x[8]*x[10]-0.6671*x[7]*x[9]*x[10]-0.0306*x[8]*x[9]*x[10] <= 37.457)
@NLconstraint(m, e5, 0.6512*x[1]*x[3]-0.5657*x[1]*x[2]-0.3987*x[1]*x[4]-0.4005*x[1]*x[5]+0.6944*x[1]*x[6]+0.3478*x[1]*x[7]+0.0849*x[1]*x[8]-0.176*x[1]*x[9]+0.6687*x[1]*x[10]-0.3992*x[2]*x[3]-0.058*x[2]*x[4]-0.9027*x[2]*x[5]+0.4944*x[2]*x[6]-0.6414*x[2]*x[7]+0.4047*x[2]*x[8]-0.9853*x[2]*x[9]+0.2794*x[2]*x[10]-0.8018*x[3]*x[4]+0.8592*x[3]*x[5]+0.9296*x[3]*x[6]+0.856*x[3]*x[7]-0.9458*x[3]*x[8]-0.2323*x[3]*x[9]-0.6635*x[3]*x[10]-0.5774*x[4]*x[5]+0.8092*x[4]*x[6]+0.4942*x[4]*x[7]-0.8332*x[4]*x[8]-0.7174*x[4]*x[9]+0.656*x[4]*x[10]-0.7688*x[5]*x[6]+0.8464*x[5]*x[7]-0.2542*x[5]*x[8]+0.366*x[5]*x[9]+0.8138*x[5]*x[10]+0.9509*x[6]*x[7]-0.8221*x[6]*x[8]+0.3543*x[6]*x[9]+0.9828*x[6]*x[10]+0.4506*x[7]*x[8]+0.9935*x[7]*x[9]+0.7256*x[7]*x[10]-0.9364*x[8]*x[9]-0.2058*x[8]*x[10]-0.614*x[9]*x[10]+0.7967*x[1]+0.7394*x[2]-0.6747*x[3]+0.0894*x[4]+0.5584*x[5]+0.0991*x[6]-0.4804*x[7]-0.0242*x[8]-0.7873*x[9]+0.8412*x[10]+(-0.4938*x[1]*x[2]*x[3])-0.1628*x[1]*x[2]*x[4]+0.9853*x[1]*x[2]*x[5]+0.9489*x[1]*x[2]*x[6]-0.8969*x[1]*x[2]*x[7]+0.922*x[1]*x[2]*x[8]-0.732*x[1]*x[2]*x[9]-0.1461*x[1]*x[2]*x[10]-0.7353*x[1]*x[3]*x[4]+0.9094*x[1]*x[3]*x[5]-0.3529*x[1]*x[3]*x[6]+0.8817*x[1]*x[3]*x[7]-0.8949*x[1]*x[3]*x[8]+0.087*x[1]*x[3]*x[9]+0.6581*x[1]*x[3]*x[10]-0.2619*x[1]*x[4]*x[5]-0.7369*x[1]*x[4]*x[6]+0.5566*x[1]*x[4]*x[7]-0.0352*x[1]*x[4]*x[8]-0.019*x[1]*x[4]*x[9]+0.4251*x[1]*x[4]*x[10]-0.5842*x[1]*x[5]*x[6]-0.369*x[1]*x[5]*x[7]+0.6078*x[1]*x[5]*x[8]-0.6787*x[1]*x[5]*x[9]+0.8941*x[1]*x[5]*x[10]+0.838*x[1]*x[6]*x[7]-0.1334*x[1]*x[6]*x[8]-0.4354*x[1]*x[6]*x[9]+0.7738*x[1]*x[6]*x[10]+0.9265*x[1]*x[7]*x[8]+0.0021*x[1]*x[7]*x[9]-0.1424*x[1]*x[7]*x[10]+0.029*x[1]*x[8]*x[9]+0.4908*x[1]*x[8]*x[10]-0.9012*x[1]*x[9]*x[10]+0.9202*x[2]*x[3]*x[4]+0.1117*x[2]*x[3]*x[5]+0.8405*x[2]*x[3]*x[6]-0.6392*x[2]*x[3]*x[7]+0.3465*x[2]*x[3]*x[8]-0.2707*x[2]*x[3]*x[9]-0.1297*x[2]*x[3]*x[10]+0.0517*x[2]*x[4]*x[5]-0.9476*x[2]*x[4]*x[6]+0.3201*x[2]*x[4]*x[7]-0.1354*x[2]*x[4]*x[8]-0.5631*x[2]*x[4]*x[9]+0.5518*x[2]*x[4]*x[10]-0.26*x[2]*x[5]*x[6]+0.8151*x[2]*x[5]*x[7]-0.9843*x[2]*x[5]*x[8]+0.2846*x[2]*x[5]*x[9]+0.4025*x[2]*x[5]*x[10]-0.9355*x[2]*x[6]*x[7]+0.9253*x[2]*x[6]*x[8]-0.4085*x[2]*x[6]*x[9]+0.8788*x[2]*x[6]*x[10]-0.3754*x[2]*x[7]*x[8]-0.9325*x[2]*x[7]*x[9]+0.339*x[2]*x[7]*x[10]-0.999*x[2]*x[8]*x[9]-0.8062*x[2]*x[8]*x[10]-0.2439*x[2]*x[9]*x[10]-0.7512*x[3]*x[4]*x[5]-0.2493*x[3]*x[4]*x[6]+0.5373*x[3]*x[4]*x[7]+0.7918*x[3]*x[4]*x[8]+0.8969*x[3]*x[4]*x[9]-0.8554*x[3]*x[4]*x[10]+0.4564*x[3]*x[5]*x[6]-0.6794*x[3]*x[5]*x[7]-0.2583*x[3]*x[5]*x[8]+0.0657*x[3]*x[5]*x[9]+0.5094*x[3]*x[5]*x[10]-0.1373*x[3]*x[6]*x[7]+0.1699*x[3]*x[6]*x[8]+0.006*x[3]*x[6]*x[9]-0.3309*x[3]*x[6]*x[10]+0.653*x[3]*x[7]*x[8]-0.2004*x[3]*x[7]*x[9]+0.5956*x[3]*x[7]*x[10]-0.3572*x[3]*x[8]*x[9]-0.0727*x[3]*x[8]*x[10]+0.3593*x[3]*x[9]*x[10]+0.256*x[4]*x[5]*x[6]-0.9685*x[4]*x[5]*x[7]-0.8723*x[4]*x[5]*x[8]+0.0834*x[4]*x[5]*x[9]-0.5313*x[4]*x[5]*x[10]+0.5325*x[4]*x[6]*x[7]+0.2584*x[4]*x[6]*x[8]+0.0279*x[4]*x[6]*x[9]-0.6832*x[4]*x[6]*x[10]+0.8784*x[4]*x[7]*x[8]-0.471*x[4]*x[7]*x[9]+0.5628*x[4]*x[7]*x[10]+0.789*x[4]*x[8]*x[9]+0.493*x[4]*x[8]*x[10]-0.2459*x[4]*x[9]*x[10]-0.2754*x[5]*x[6]*x[7]-0.9558*x[5]*x[6]*x[8]+0.4206*x[5]*x[6]*x[9]-0.453*x[5]*x[6]*x[10]-0.1921*x[5]*x[7]*x[8]+0.8635*x[5]*x[7]*x[9]+0.1509*x[5]*x[7]*x[10]+0.1774*x[5]*x[8]*x[9]-0.394*x[5]*x[8]*x[10]+0.7015*x[5]*x[9]*x[10]-0.3913*x[6]*x[7]*x[8]+0.2043*x[6]*x[7]*x[9]-0.0989*x[6]*x[7]*x[10]-0.2251*x[6]*x[8]*x[9]-0.4868*x[6]*x[8]*x[10]-0.4957*x[6]*x[9]*x[10]+0.4184*x[7]*x[8]*x[9]-0.7236*x[7]*x[8]*x[10]+0.3151*x[7]*x[9]*x[10]+0.2697*x[8]*x[9]*x[10] <= 25.25)
@NLconstraint(m, e6, 0.4112*x[1]*x[2]-0.549*x[1]*x[3]+0.714*x[1]*x[4]+0.3726*x[1]*x[5]+0.2059*x[1]*x[6]+0.3263*x[1]*x[7]+0.0664*x[1]*x[8]-0.3905*x[1]*x[9]-0.396*x[1]*x[10]+0.2489*x[2]*x[3]-0.3591*x[2]*x[4]+0.8875*x[2]*x[5]-0.1074*x[2]*x[6]+0.3386*x[2]*x[7]+0.1374*x[2]*x[8]+0.0261*x[2]*x[9]-0.6731*x[2]*x[10]+0.2712*x[3]*x[4]+0.8375*x[3]*x[5]+0.7226*x[3]*x[6]-0.6796*x[3]*x[7]+0.0595*x[3]*x[8]-0.26*x[3]*x[9]-0.3089*x[3]*x[10]+0.9926*x[4]*x[5]-0.2871*x[4]*x[6]-0.9585*x[4]*x[7]+0.1679*x[4]*x[8]+0.3712*x[4]*x[9]-0.6788*x[4]*x[10]-0.5049*x[5]*x[6]+0.6338*x[5]*x[7]-0.6546*x[5]*x[8]+0.7588*x[5]*x[9]-0.9789*x[5]*x[10]-0.1334*x[6]*x[7]-0.1394*x[6]*x[8]+0.2722*x[6]*x[9]-0.615*x[6]*x[10]+0.3584*x[7]*x[8]+0.4657*x[7]*x[9]+0.6566*x[7]*x[10]-0.6826*x[8]*x[9]+0.1999*x[8]*x[10]-0.0253*x[9]*x[10]-0.1107*x[1]-0.8714*x[2]-0.0102*x[3]+0.4648*x[4]-0.0905*x[5]+0.5086*x[6]-0.2488*x[7]+0.4272*x[8]+0.5776*x[9]+0.2769*x[10]+0.2405*x[1]*x[2]*x[3]-0.1204*x[1]*x[2]*x[4]-0.3264*x[1]*x[2]*x[5]-0.4306*x[1]*x[2]*x[6]-0.2724*x[1]*x[2]*x[7]-0.4368*x[1]*x[2]*x[8]+0.6508*x[1]*x[2]*x[9]-0.7863*x[1]*x[2]*x[10]+0.267*x[1]*x[3]*x[4]-0.1086*x[1]*x[3]*x[5]-0.9236*x[1]*x[3]*x[6]-0.9839*x[1]*x[3]*x[7]-0.6711*x[1]*x[3]*x[8]+0.6487*x[1]*x[3]*x[9]-0.255*x[1]*x[3]*x[10]-0.3431*x[1]*x[4]*x[5]+0.6568*x[1]*x[4]*x[6]+0.9668*x[1]*x[4]*x[7]+0.0781*x[1]*x[4]*x[8]-0.0251*x[1]*x[4]*x[9]-0.3213*x[1]*x[4]*x[10]+0.8957*x[1]*x[5]*x[6]+0.8012*x[1]*x[5]*x[7]+0.3741*x[1]*x[5]*x[8]+0.7507*x[1]*x[5]*x[9]+0.6214*x[1]*x[5]*x[10]-0.9874*x[1]*x[6]*x[7]-0.824*x[1]*x[6]*x[8]-0.7364*x[1]*x[6]*x[9]+0.5632*x[1]*x[6]*x[10]+0.0277*x[1]*x[7]*x[8]+0.6984*x[1]*x[7]*x[9]-0.8929*x[1]*x[7]*x[10]+0.9844*x[1]*x[8]*x[9]+0.0604*x[1]*x[8]*x[10]-0.8473*x[1]*x[9]*x[10]-0.6641*x[2]*x[3]*x[4]-0.5341*x[2]*x[3]*x[5]-0.7171*x[2]*x[3]*x[6]-0.9632*x[2]*x[3]*x[7]-0.3165*x[2]*x[3]*x[8]-0.4889*x[2]*x[3]*x[9]-0.8841*x[2]*x[3]*x[10]+0.1736*x[2]*x[4]*x[5]+0.9399*x[2]*x[4]*x[6]-0.491*x[2]*x[4]*x[7]+0.2638*x[2]*x[4]*x[8]-0.2165*x[2]*x[4]*x[9]+0.1249*x[2]*x[4]*x[10]-0.917*x[2]*x[5]*x[6]-0.5353*x[2]*x[5]*x[7]+0.6693*x[2]*x[5]*x[8]-0.1613*x[2]*x[5]*x[9]+0.014*x[2]*x[5]*x[10]-0.8024*x[2]*x[6]*x[7]+0.2702*x[2]*x[6]*x[8]-0.5259*x[2]*x[6]*x[9]-0.3402*x[2]*x[6]*x[10]-0.1302*x[2]*x[7]*x[8]+0.0525*x[2]*x[7]*x[9]+0.0527*x[2]*x[7]*x[10]+0.6322*x[2]*x[8]*x[9]+0.1137*x[2]*x[8]*x[10]+0.5705*x[2]*x[9]*x[10]-0.9104*x[3]*x[4]*x[5]+0.258*x[3]*x[4]*x[6]+0.9474*x[3]*x[4]*x[7]+0.074*x[3]*x[4]*x[8]+0.3502*x[3]*x[4]*x[9]+0.8905*x[3]*x[4]*x[10]-0.3495*x[3]*x[5]*x[6]+0.6298*x[3]*x[5]*x[7]+0.6175*x[3]*x[5]*x[8]+0.7286*x[3]*x[5]*x[9]-0.0633*x[3]*x[5]*x[10]+0.011*x[3]*x[6]*x[7]+0.9293*x[3]*x[6]*x[8]-0.6776*x[3]*x[6]*x[9]-0.8715*x[3]*x[6]*x[10]-0.2535*x[3]*x[7]*x[8]+0.2768*x[3]*x[7]*x[9]-0.2311*x[3]*x[7]*x[10]+0.3271*x[3]*x[8]*x[9]-0.4892*x[3]*x[8]*x[10]+0.4076*x[3]*x[9]*x[10]+0.5567*x[4]*x[5]*x[6]+0.4763*x[4]*x[5]*x[7]-0.4468*x[4]*x[5]*x[8]-0.8031*x[4]*x[5]*x[9]-0.6015*x[4]*x[5]*x[10]-0.512*x[4]*x[6]*x[7]-0.3397*x[4]*x[6]*x[8]+0.0676*x[4]*x[6]*x[9]+0.0997*x[4]*x[6]*x[10]-0.6051*x[4]*x[7]*x[8]+0.4815*x[4]*x[7]*x[9]+0.3643*x[4]*x[7]*x[10]+0.963*x[4]*x[8]*x[9]-0.0217*x[4]*x[8]*x[10]+0.3736*x[4]*x[9]*x[10]-0.1637*x[5]*x[6]*x[7]+0.3246*x[5]*x[6]*x[8]+0.8406*x[5]*x[6]*x[9]-0.4054*x[5]*x[6]*x[10]-0.1194*x[5]*x[7]*x[8]-0.6792*x[5]*x[7]*x[9]-0.0179*x[5]*x[7]*x[10]+0.5678*x[5]*x[8]*x[9]-0.6136*x[5]*x[8]*x[10]-0.0113*x[5]*x[9]*x[10]-0.7408*x[6]*x[7]*x[8]+0.4983*x[6]*x[7]*x[9]+0.7166*x[6]*x[7]*x[10]+0.7196*x[6]*x[8]*x[9]+0.8041*x[6]*x[8]*x[10]-0.417*x[6]*x[9]*x[10]-0.4665*x[7]*x[8]*x[9]-0.9472*x[7]*x[8]*x[10]+0.3186*x[7]*x[9]*x[10]+0.0008*x[8]*x[9]*x[10] <= 46.851)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
