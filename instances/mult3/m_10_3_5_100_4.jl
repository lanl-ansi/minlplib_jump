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
@NLconstraint(m, e1, -(-0.789*x[1]*x[2]-0.9015*x[1]*x[3]+0.8536*x[1]*x[4]-0.6222*x[1]*x[5]+0.531*x[1]*x[6]-0.7534*x[1]*x[7]+0.1807*x[1]*x[8]+0.8496*x[1]*x[9]+0.0791*x[1]*x[10]+0.8057*x[2]*x[3]-0.81*x[2]*x[4]+0.7906*x[2]*x[5]-0.4133*x[2]*x[6]+0.6907*x[2]*x[7]+0.0963*x[2]*x[8]-0.2825*x[2]*x[9]+0.0354*x[2]*x[10]+0.5125*x[3]*x[4]+0.9351*x[3]*x[5]+0.7973*x[3]*x[6]-0.8916*x[3]*x[7]-0.7597*x[3]*x[8]+0.2381*x[3]*x[9]+0.0077*x[3]*x[10]+0.3442*x[4]*x[5]+0.1405*x[4]*x[6]+0.8568*x[4]*x[7]-0.261*x[4]*x[8]-0.8792*x[4]*x[9]-0.0695*x[4]*x[10]-0.827*x[5]*x[6]+0.5092*x[5]*x[7]+0.4796*x[5]*x[8]-0.7576*x[5]*x[9]-0.2986*x[5]*x[10]-0.6192*x[6]*x[7]-0.8556*x[6]*x[8]-0.0737*x[6]*x[9]-0.0614*x[6]*x[10]-0.0832*x[7]*x[8]-0.6275*x[7]*x[9]-0.4122*x[7]*x[10]+0.1479*x[8]*x[9]-0.4795*x[8]*x[10]+0.4531*x[9]*x[10]-0.564*x[1]-0.7735*x[2]+0.5994*x[3]+0.5007*x[4]+0.5843*x[5]-0.436*x[6]-0.2484*x[7]+0.5402*x[8]+0.4467*x[9]-0.7388*x[10]+0.147*x[1]*x[2]*x[4]-0.1296*x[1]*x[2]*x[3]-0.8773*x[1]*x[2]*x[5]+0.3256*x[1]*x[2]*x[6]+0.1917*x[1]*x[2]*x[7]-0.7454*x[1]*x[2]*x[8]+0.953*x[1]*x[2]*x[9]-0.2524*x[1]*x[2]*x[10]+0.6998*x[1]*x[3]*x[4]+0.9019*x[1]*x[3]*x[5]+0.0886*x[1]*x[3]*x[6]-0.745*x[1]*x[3]*x[7]+0.7499*x[1]*x[3]*x[8]+0.064*x[1]*x[3]*x[9]-0.919*x[1]*x[3]*x[10]-0.9064*x[1]*x[4]*x[5]+0.2797*x[1]*x[4]*x[6]-0.6761*x[1]*x[4]*x[7]-0.9433*x[1]*x[4]*x[8]+0.4738*x[1]*x[4]*x[9]-0.469*x[1]*x[4]*x[10]-0.6195*x[1]*x[5]*x[6]+0.4109*x[1]*x[5]*x[7]+0.774*x[1]*x[5]*x[8]-0.6599*x[1]*x[5]*x[9]+0.5277*x[1]*x[5]*x[10]-0.207*x[1]*x[6]*x[7]+0.7556*x[1]*x[6]*x[8]-0.0444*x[1]*x[6]*x[9]-0.6359*x[1]*x[6]*x[10]+0.5783*x[1]*x[7]*x[8]+0.4262*x[1]*x[7]*x[9]-0.5666*x[1]*x[7]*x[10]+0.4188*x[1]*x[8]*x[9]+0.3495*x[1]*x[8]*x[10]-0.6488*x[1]*x[9]*x[10]-0.9492*x[2]*x[3]*x[4]-0.2321*x[2]*x[3]*x[5]-0.0055*x[2]*x[3]*x[6]-0.556*x[2]*x[3]*x[7]+0.3175*x[2]*x[3]*x[8]+0.392*x[2]*x[3]*x[9]+0.7571*x[2]*x[3]*x[10]-0.123*x[2]*x[4]*x[5]-0.9402*x[2]*x[4]*x[6]+0.9707*x[2]*x[4]*x[7]-0.9632*x[2]*x[4]*x[8]+0.5879*x[2]*x[4]*x[9]+0.7006*x[2]*x[4]*x[10]+0.3368*x[2]*x[5]*x[6]+0.7005*x[2]*x[5]*x[7]-0.9946*x[2]*x[5]*x[8]-0.5453*x[2]*x[5]*x[9]-0.6007*x[2]*x[5]*x[10]+0.1658*x[2]*x[6]*x[7]+0.5857*x[2]*x[6]*x[8]-0.6648*x[2]*x[6]*x[9]-0.3842*x[2]*x[6]*x[10]-0.8785*x[2]*x[7]*x[8]-0.3002*x[2]*x[7]*x[9]-0.1467*x[2]*x[7]*x[10]+0.5581*x[2]*x[8]*x[9]+0.255*x[2]*x[8]*x[10]-0.3062*x[2]*x[9]*x[10]-0.1995*x[3]*x[4]*x[5]+0.7855*x[3]*x[4]*x[6]+0.076*x[3]*x[4]*x[7]+0.9889*x[3]*x[4]*x[8]+0.6766*x[3]*x[4]*x[9]+0.3158*x[3]*x[4]*x[10]-0.8643*x[3]*x[5]*x[6]-0.8024*x[3]*x[5]*x[7]-0.6817*x[3]*x[5]*x[8]-0.9275*x[3]*x[5]*x[9]+0.5669*x[3]*x[5]*x[10]-0.8213*x[3]*x[6]*x[7]+0.3068*x[3]*x[6]*x[8]+0.9216*x[3]*x[6]*x[9]+0.8245*x[3]*x[6]*x[10]-0.387*x[3]*x[7]*x[8]+0.2332*x[3]*x[7]*x[9]-0.2114*x[3]*x[7]*x[10]-0.5222*x[3]*x[8]*x[9]-0.1285*x[3]*x[8]*x[10]+0.2733*x[3]*x[9]*x[10]-0.5025*x[4]*x[5]*x[6]-0.3684*x[4]*x[5]*x[7]-0.1281*x[4]*x[5]*x[8]+0.7043*x[4]*x[5]*x[9]+0.4752*x[4]*x[5]*x[10]+0.4398*x[4]*x[6]*x[7]-0.2425*x[4]*x[6]*x[8]+0.0265*x[4]*x[6]*x[9]+0.1761*x[4]*x[6]*x[10]+0.6789*x[4]*x[7]*x[8]-0.2652*x[4]*x[7]*x[9]-0.7416*x[4]*x[7]*x[10]+0.3104*x[4]*x[8]*x[9]+0.5838*x[4]*x[8]*x[10]-0.2481*x[4]*x[9]*x[10]-0.5737*x[5]*x[6]*x[7]+0.1995*x[5]*x[6]*x[8]+0.7254*x[5]*x[6]*x[9]-0.6076*x[5]*x[6]*x[10]+0.2583*x[5]*x[7]*x[8]+0.3748*x[5]*x[7]*x[9]-0.821*x[5]*x[7]*x[10]-0.7231*x[5]*x[8]*x[9]+0.792*x[5]*x[8]*x[10]+0.1935*x[5]*x[9]*x[10]+0.3677*x[6]*x[7]*x[8]-0.3893*x[6]*x[7]*x[9]-0.5531*x[6]*x[7]*x[10]+0.3063*x[6]*x[8]*x[9]-0.3756*x[6]*x[8]*x[10]+0.9983*x[6]*x[9]*x[10]-0.4544*x[7]*x[8]*x[9]+0.8651*x[7]*x[8]*x[10]+0.8738*x[7]*x[9]*x[10]+0.7123*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.2165*x[1]*x[2]+0.3018*x[1]*x[3]-0.6853*x[1]*x[4]+0.4834*x[1]*x[5]-0.9677*x[1]*x[6]+0.9793*x[1]*x[7]-0.3145*x[1]*x[8]+0.9356*x[1]*x[9]-0.651*x[1]*x[10]-0.7873*x[2]*x[3]+0.5914*x[2]*x[4]-0.82*x[2]*x[5]-0.8009*x[2]*x[6]-0.4826*x[2]*x[7]-0.2493*x[2]*x[8]+0.5075*x[2]*x[9]-0.6548*x[2]*x[10]-0.7159*x[3]*x[4]-0.7049*x[3]*x[5]-0.3438*x[3]*x[6]-0.1976*x[3]*x[7]+0.0079*x[3]*x[8]-0.8311*x[3]*x[9]+0.3371*x[3]*x[10]+0.6852*x[4]*x[5]+0.2669*x[4]*x[6]+0.3508*x[4]*x[7]-0.281*x[4]*x[8]-0.1383*x[4]*x[9]-0.5659*x[4]*x[10]+0.008*x[5]*x[6]-0.2438*x[5]*x[7]+0.8352*x[5]*x[8]-0.6792*x[5]*x[9]-0.505*x[5]*x[10]-0.117*x[6]*x[7]-0.3067*x[6]*x[8]-0.3803*x[6]*x[9]+0.7882*x[6]*x[10]+0.3372*x[7]*x[8]-0.919*x[7]*x[9]-0.7383*x[7]*x[10]+0.7541*x[8]*x[9]+0.5834*x[8]*x[10]+0.1474*x[9]*x[10]+0.0948*x[1]-0.3359*x[2]+0.165*x[3]+0.3496*x[4]+0.6279*x[5]-0.6031*x[6]+0.1115*x[7]-0.7796*x[8]-0.5661*x[9]+0.1693*x[10]+0.449*x[1]*x[2]*x[3]+0.2*x[1]*x[2]*x[4]-0.2227*x[1]*x[2]*x[5]+0.1216*x[1]*x[2]*x[6]-0.1403*x[1]*x[2]*x[7]+0.2873*x[1]*x[2]*x[8]-0.9251*x[1]*x[2]*x[9]-0.9097*x[1]*x[2]*x[10]-0.299*x[1]*x[3]*x[4]-0.037*x[1]*x[3]*x[5]+0.1356*x[1]*x[3]*x[6]+0.1424*x[1]*x[3]*x[7]+0.9099*x[1]*x[3]*x[8]-0.8295*x[1]*x[3]*x[9]-0.9163*x[1]*x[3]*x[10]-0.886*x[1]*x[4]*x[5]-0.5395*x[1]*x[4]*x[6]+0.4885*x[1]*x[4]*x[7]+0.0733*x[1]*x[4]*x[8]+0.6171*x[1]*x[4]*x[9]+0.9443*x[1]*x[4]*x[10]+0.8452*x[1]*x[5]*x[6]+0.2589*x[1]*x[5]*x[7]-0.3954*x[1]*x[5]*x[8]+0.2099*x[1]*x[5]*x[9]-0.4274*x[1]*x[5]*x[10]+0.7638*x[1]*x[6]*x[7]+0.0518*x[1]*x[6]*x[8]-0.7951*x[1]*x[6]*x[9]-0.0508*x[1]*x[6]*x[10]-0.2861*x[1]*x[7]*x[8]+0.0163*x[1]*x[7]*x[9]+0.3989*x[1]*x[7]*x[10]-0.3631*x[1]*x[8]*x[9]-0.1875*x[1]*x[8]*x[10]+0.6995*x[1]*x[9]*x[10]+0.5373*x[2]*x[3]*x[4]+0.7748*x[2]*x[3]*x[5]+0.0892*x[2]*x[3]*x[6]+0.093*x[2]*x[3]*x[7]-0.4689*x[2]*x[3]*x[8]+0.4298*x[2]*x[3]*x[9]-0.4441*x[2]*x[3]*x[10]-0.9731*x[2]*x[4]*x[5]-0.0911*x[2]*x[4]*x[6]-0.8933*x[2]*x[4]*x[7]-0.3553*x[2]*x[4]*x[8]-0.1372*x[2]*x[4]*x[9]+0.239*x[2]*x[4]*x[10]+0.9347*x[2]*x[5]*x[6]-0.8911*x[2]*x[5]*x[7]-0.528*x[2]*x[5]*x[8]-0.13*x[2]*x[5]*x[9]-0.2034*x[2]*x[5]*x[10]-0.69*x[2]*x[6]*x[7]+0.2966*x[2]*x[6]*x[8]+0.9593*x[2]*x[6]*x[9]-0.9582*x[2]*x[6]*x[10]+0.4532*x[2]*x[7]*x[8]+0.5574*x[2]*x[7]*x[9]-0.4571*x[2]*x[7]*x[10]-0.9344*x[2]*x[8]*x[9]-0.1114*x[2]*x[8]*x[10]+0.477*x[2]*x[9]*x[10]-0.0515*x[3]*x[4]*x[5]-0.456*x[3]*x[4]*x[6]+0.1071*x[3]*x[4]*x[7]+0.3639*x[3]*x[4]*x[8]+0.1604*x[3]*x[4]*x[9]+0.7412*x[3]*x[4]*x[10]-0.842*x[3]*x[5]*x[6]+0.2298*x[3]*x[5]*x[7]-0.7632*x[3]*x[5]*x[8]+0.467*x[3]*x[5]*x[9]-0.3678*x[3]*x[5]*x[10]-0.0498*x[3]*x[6]*x[7]+0.2148*x[3]*x[6]*x[8]-0.6331*x[3]*x[6]*x[9]+0.1204*x[3]*x[6]*x[10]+0.2074*x[3]*x[7]*x[8]-0.0007*x[3]*x[7]*x[9]+0.1524*x[3]*x[7]*x[10]-0.1373*x[3]*x[8]*x[9]-0.5286*x[3]*x[8]*x[10]+0.0533*x[3]*x[9]*x[10]-0.0113*x[4]*x[5]*x[6]+0.039*x[4]*x[5]*x[7]+0.746*x[4]*x[5]*x[8]-0.7493*x[4]*x[5]*x[9]-0.3501*x[4]*x[5]*x[10]-0.7046*x[4]*x[6]*x[7]+0.623*x[4]*x[6]*x[8]-0.3282*x[4]*x[6]*x[9]+0.2535*x[4]*x[6]*x[10]+0.7369*x[4]*x[7]*x[8]-0.3179*x[4]*x[7]*x[9]-0.7554*x[4]*x[7]*x[10]+0.3384*x[4]*x[8]*x[9]+0.7428*x[4]*x[8]*x[10]+0.6871*x[4]*x[9]*x[10]-0.2774*x[5]*x[6]*x[7]+0.1942*x[5]*x[6]*x[8]-0.0372*x[5]*x[6]*x[9]+0.9036*x[5]*x[6]*x[10]+0.9891*x[5]*x[7]*x[8]+0.2623*x[5]*x[7]*x[9]+0.4058*x[5]*x[7]*x[10]+0.2905*x[5]*x[8]*x[9]+0.8707*x[5]*x[8]*x[10]-0.6906*x[5]*x[9]*x[10]+0.0175*x[6]*x[7]*x[8]+0.7644*x[6]*x[7]*x[9]+0.1747*x[6]*x[7]*x[10]-0.3217*x[6]*x[8]*x[9]-0.3756*x[6]*x[8]*x[10]-0.4446*x[6]*x[9]*x[10]-0.5191*x[7]*x[8]*x[9]+0.8229*x[7]*x[8]*x[10]-0.0585*x[7]*x[9]*x[10]+0.7931*x[8]*x[9]*x[10] <= 97.848)
@NLconstraint(m, e3, 0.5099*x[1]*x[2]-0.1606*x[1]*x[3]-0.8887*x[1]*x[4]+0.499*x[1]*x[5]+0.6686*x[1]*x[6]+0.4415*x[1]*x[7]-0.2126*x[1]*x[8]-0.8338*x[1]*x[9]-0.8861*x[1]*x[10]-0.9484*x[2]*x[3]-0.2048*x[2]*x[4]-0.1835*x[2]*x[5]-0.2758*x[2]*x[6]-0.5844*x[2]*x[7]+0.3621*x[2]*x[8]+0.6829*x[2]*x[9]-0.5893*x[2]*x[10]+0.5491*x[3]*x[4]-0.8351*x[3]*x[5]+0.5027*x[3]*x[6]+0.7318*x[3]*x[7]-0.8597*x[3]*x[8]+0.7574*x[3]*x[9]-0.9517*x[3]*x[10]-0.6703*x[4]*x[5]+0.1705*x[4]*x[6]+0.3118*x[4]*x[7]-0.299*x[4]*x[8]+0.1919*x[4]*x[9]+0.2*x[4]*x[10]+0.0314*x[5]*x[6]-0.9798*x[5]*x[7]-0.4391*x[5]*x[8]+0.4177*x[5]*x[9]-0.3681*x[5]*x[10]-0.7607*x[6]*x[7]+0.6108*x[6]*x[8]+0.9076*x[6]*x[9]+0.3781*x[6]*x[10]+0.4656*x[7]*x[8]-0.965*x[7]*x[9]-0.7647*x[7]*x[10]-0.7166*x[8]*x[9]-0.7744*x[8]*x[10]-0.1137*x[9]*x[10]+0.2768*x[1]-0.1211*x[2]-0.1007*x[3]-0.5326*x[4]+0.6566*x[5]+0.1937*x[6]-0.9996*x[7]-0.5367*x[8]-0.1918*x[9]-0.8802*x[10]+0.7301*x[1]*x[2]*x[3]-0.1917*x[1]*x[2]*x[4]+0.9096*x[1]*x[2]*x[5]-0.2321*x[1]*x[2]*x[6]-0.1408*x[1]*x[2]*x[7]+0.9235*x[1]*x[2]*x[8]-0.5794*x[1]*x[2]*x[9]+0.227*x[1]*x[2]*x[10]-0.3337*x[1]*x[3]*x[4]-0.3646*x[1]*x[3]*x[5]-0.4327*x[1]*x[3]*x[6]-0.1094*x[1]*x[3]*x[7]+0.3825*x[1]*x[3]*x[8]+0.5071*x[1]*x[3]*x[9]+0.8944*x[1]*x[3]*x[10]-0.3627*x[1]*x[4]*x[5]+0.065*x[1]*x[4]*x[6]+0.7137*x[1]*x[4]*x[7]+0.5367*x[1]*x[4]*x[8]+0.1169*x[1]*x[4]*x[9]+0.1142*x[1]*x[4]*x[10]-0.814*x[1]*x[5]*x[6]+0.7162*x[1]*x[5]*x[7]+0.4038*x[1]*x[5]*x[8]+0.3275*x[1]*x[5]*x[9]-0.7578*x[1]*x[5]*x[10]+0.2681*x[1]*x[6]*x[7]+0.618*x[1]*x[6]*x[8]+0.8112*x[1]*x[6]*x[9]+0.652*x[1]*x[6]*x[10]+0.5574*x[1]*x[7]*x[8]+0.1105*x[1]*x[7]*x[9]-0.685*x[1]*x[7]*x[10]+0.2517*x[1]*x[8]*x[9]-0.2113*x[1]*x[8]*x[10]-0.9952*x[1]*x[9]*x[10]-0.9702*x[2]*x[3]*x[4]-0.3537*x[2]*x[3]*x[5]+0.326*x[2]*x[3]*x[6]-0.2615*x[2]*x[3]*x[7]-0.1564*x[2]*x[3]*x[8]+0.9175*x[2]*x[3]*x[9]-0.5903*x[2]*x[3]*x[10]+0.9029*x[2]*x[4]*x[5]+0.3648*x[2]*x[4]*x[6]-0.9126*x[2]*x[4]*x[7]-0.644*x[2]*x[4]*x[8]+0.7789*x[2]*x[4]*x[9]+0.0203*x[2]*x[4]*x[10]+0.8897*x[2]*x[5]*x[6]-0.5469*x[2]*x[5]*x[7]-0.2008*x[2]*x[5]*x[8]+0.6762*x[2]*x[5]*x[9]+0.3243*x[2]*x[5]*x[10]-0.6903*x[2]*x[6]*x[7]+0.2058*x[2]*x[6]*x[8]+0.3876*x[2]*x[6]*x[9]+0.3695*x[2]*x[6]*x[10]+0.0322*x[2]*x[7]*x[8]-0.502*x[2]*x[7]*x[9]-0.9679*x[2]*x[7]*x[10]+0.6939*x[2]*x[8]*x[9]-0.7335*x[2]*x[8]*x[10]-0.0071*x[2]*x[9]*x[10]+0.7911*x[3]*x[4]*x[5]-0.8217*x[3]*x[4]*x[6]-0.6734*x[3]*x[4]*x[7]+0.5343*x[3]*x[4]*x[8]-0.6164*x[3]*x[4]*x[9]-0.0679*x[3]*x[4]*x[10]-0.3156*x[3]*x[5]*x[6]-0.9986*x[3]*x[5]*x[7]-0.0287*x[3]*x[5]*x[8]+0.3193*x[3]*x[5]*x[9]-0.92*x[3]*x[5]*x[10]-0.147*x[3]*x[6]*x[7]-0.9656*x[3]*x[6]*x[8]-0.9044*x[3]*x[6]*x[9]+0.9256*x[3]*x[6]*x[10]-0.0849*x[3]*x[7]*x[8]-0.2946*x[3]*x[7]*x[9]+0.4543*x[3]*x[7]*x[10]-0.6516*x[3]*x[8]*x[9]-0.2951*x[3]*x[8]*x[10]-0.5713*x[3]*x[9]*x[10]+0.9107*x[4]*x[5]*x[6]+0.5607*x[4]*x[5]*x[7]+0.5813*x[4]*x[5]*x[8]+0.1879*x[4]*x[5]*x[9]+0.0879*x[4]*x[5]*x[10]-0.1947*x[4]*x[6]*x[7]-0.5199*x[4]*x[6]*x[8]-0.661*x[4]*x[6]*x[9]+0.7548*x[4]*x[6]*x[10]-0.8094*x[4]*x[7]*x[8]-0.8729*x[4]*x[7]*x[9]+0.703*x[4]*x[7]*x[10]-0.6193*x[4]*x[8]*x[9]+0.863*x[4]*x[8]*x[10]+0.3731*x[4]*x[9]*x[10]+0.975*x[5]*x[6]*x[7]-0.9151*x[5]*x[6]*x[8]-0.1013*x[5]*x[6]*x[9]-0.7563*x[5]*x[6]*x[10]-0.9394*x[5]*x[7]*x[8]-0.1056*x[5]*x[7]*x[9]+0.5528*x[5]*x[7]*x[10]-0.4469*x[5]*x[8]*x[9]-0.6919*x[5]*x[8]*x[10]+0.6454*x[5]*x[9]*x[10]-0.7436*x[6]*x[7]*x[8]-0.4406*x[6]*x[7]*x[9]-0.6553*x[6]*x[7]*x[10]+0.0815*x[6]*x[8]*x[9]-0.2592*x[6]*x[8]*x[10]-0.3449*x[6]*x[9]*x[10]-0.723*x[7]*x[8]*x[9]+0.7367*x[7]*x[8]*x[10]-0.5166*x[7]*x[9]*x[10]-0.6852*x[8]*x[9]*x[10] <= 17.515)
@NLconstraint(m, e4, (-0.8157*x[1]*x[2])-0.9023*x[1]*x[3]-0.5467*x[1]*x[4]-0.3177*x[1]*x[5]-0.9398*x[1]*x[6]+0.2349*x[1]*x[7]+0.001*x[1]*x[8]+0.3641*x[1]*x[9]-0.9461*x[1]*x[10]+0.1124*x[2]*x[3]+0.0992*x[2]*x[4]+0.0372*x[2]*x[5]-0.6933*x[2]*x[6]+0.9793*x[2]*x[7]-0.2495*x[2]*x[8]-0.865*x[2]*x[9]-0.5344*x[2]*x[10]+0.3443*x[3]*x[4]+0.0946*x[3]*x[5]+0.99*x[3]*x[6]+0.1293*x[3]*x[7]-0.1439*x[3]*x[8]-0.1023*x[3]*x[9]+0.4527*x[3]*x[10]-0.9526*x[4]*x[5]-0.9404*x[4]*x[6]-0.4876*x[4]*x[7]-0.4892*x[4]*x[8]-0.8809*x[4]*x[9]+0.5844*x[4]*x[10]-0.5909*x[5]*x[6]+0.8432*x[5]*x[7]+0.4261*x[5]*x[8]-0.7159*x[5]*x[9]+0.6584*x[5]*x[10]+0.0654*x[6]*x[7]+0.9716*x[6]*x[8]+0.3374*x[6]*x[9]-0.6073*x[6]*x[10]-0.4237*x[7]*x[8]+0.4155*x[7]*x[9]+0.8152*x[7]*x[10]-0.6799*x[8]*x[9]-0.7925*x[8]*x[10]-0.3313*x[9]*x[10]-0.8543*x[1]+0.6806*x[2]-0.7313*x[3]+0.7493*x[4]-0.1795*x[5]-0.6154*x[6]+0.4774*x[7]+0.2237*x[8]+0.819*x[9]-0.2799*x[10]+0.0515*x[1]*x[2]*x[4]-0.3399*x[1]*x[2]*x[3]+0.8846*x[1]*x[2]*x[5]+0.022*x[1]*x[2]*x[6]+0.9133*x[1]*x[2]*x[7]-0.7262*x[1]*x[2]*x[8]-0.7918*x[1]*x[2]*x[9]-0.6313*x[1]*x[2]*x[10]+0.9966*x[1]*x[3]*x[4]-0.6426*x[1]*x[3]*x[5]-0.3197*x[1]*x[3]*x[6]-0.2285*x[1]*x[3]*x[7]+0.0003*x[1]*x[3]*x[8]+0.8027*x[1]*x[3]*x[9]+0.8966*x[1]*x[3]*x[10]+0.6134*x[1]*x[4]*x[5]+0.0598*x[1]*x[4]*x[6]-0.9651*x[1]*x[4]*x[7]+0.9353*x[1]*x[4]*x[8]+0.8902*x[1]*x[4]*x[9]-0.007*x[1]*x[4]*x[10]+0.5675*x[1]*x[5]*x[6]+0.8712*x[1]*x[5]*x[7]+0.2321*x[1]*x[5]*x[8]-0.3199*x[1]*x[5]*x[9]+0.0664*x[1]*x[5]*x[10]-0.3827*x[1]*x[6]*x[7]+0.4324*x[1]*x[6]*x[8]+0.9173*x[1]*x[6]*x[9]+0.0144*x[1]*x[6]*x[10]+0.0691*x[1]*x[7]*x[8]-0.2872*x[1]*x[7]*x[9]-0.8985*x[1]*x[7]*x[10]+0.0914*x[1]*x[8]*x[9]+0.1849*x[1]*x[8]*x[10]-0.0897*x[1]*x[9]*x[10]-0.7576*x[2]*x[3]*x[4]-0.1726*x[2]*x[3]*x[5]+0.9337*x[2]*x[3]*x[6]+0.0318*x[2]*x[3]*x[7]-0.2369*x[2]*x[3]*x[8]+0.9287*x[2]*x[3]*x[9]-0.9551*x[2]*x[3]*x[10]-0.6268*x[2]*x[4]*x[5]+0.4162*x[2]*x[4]*x[6]+0.7695*x[2]*x[4]*x[7]+0.615*x[2]*x[4]*x[8]+0.4118*x[2]*x[4]*x[9]-0.8214*x[2]*x[4]*x[10]+0.1937*x[2]*x[5]*x[6]+0.2846*x[2]*x[5]*x[7]-0.1472*x[2]*x[5]*x[8]+0.307*x[2]*x[5]*x[9]+0.7698*x[2]*x[5]*x[10]-0.6545*x[2]*x[6]*x[7]-0.5534*x[2]*x[6]*x[8]+0.0359*x[2]*x[6]*x[9]+0.7667*x[2]*x[6]*x[10]+0.0927*x[2]*x[7]*x[8]-0.5321*x[2]*x[7]*x[9]-0.4937*x[2]*x[7]*x[10]+0.7388*x[2]*x[8]*x[9]+0.9809*x[2]*x[8]*x[10]+0.0004*x[2]*x[9]*x[10]+0.695*x[3]*x[4]*x[5]+0.5494*x[3]*x[4]*x[6]+0.6195*x[3]*x[4]*x[7]+0.2356*x[3]*x[4]*x[8]-0.1412*x[3]*x[4]*x[9]+0.7508*x[3]*x[4]*x[10]-0.769*x[3]*x[5]*x[6]-0.1995*x[3]*x[5]*x[7]+0.7897*x[3]*x[5]*x[8]-0.9464*x[3]*x[5]*x[9]-0.0035*x[3]*x[5]*x[10]+0.7893*x[3]*x[6]*x[7]+0.2009*x[3]*x[6]*x[8]+0.573*x[3]*x[6]*x[9]+0.0687*x[3]*x[6]*x[10]+0.3609*x[3]*x[7]*x[8]+0.7069*x[3]*x[7]*x[9]+0.3176*x[3]*x[7]*x[10]-0.2025*x[3]*x[8]*x[9]+0.9283*x[3]*x[8]*x[10]+0.6098*x[3]*x[9]*x[10]+0.6859*x[4]*x[5]*x[6]-0.3653*x[4]*x[5]*x[7]-0.406*x[4]*x[5]*x[8]+0.6706*x[4]*x[5]*x[9]-0.4475*x[4]*x[5]*x[10]-0.1989*x[4]*x[6]*x[7]-0.5974*x[4]*x[6]*x[8]+0.4318*x[4]*x[6]*x[9]+0.3654*x[4]*x[6]*x[10]-0.2119*x[4]*x[7]*x[8]-0.0018*x[4]*x[7]*x[9]-0.9865*x[4]*x[7]*x[10]-0.8902*x[4]*x[8]*x[9]-0.6653*x[4]*x[8]*x[10]+0.3769*x[4]*x[9]*x[10]-0.2194*x[5]*x[6]*x[7]+0.8789*x[5]*x[6]*x[8]-0.7093*x[5]*x[6]*x[9]+0.3827*x[5]*x[6]*x[10]-0.0405*x[5]*x[7]*x[8]+0.7626*x[5]*x[7]*x[9]+0.4358*x[5]*x[7]*x[10]+0.7368*x[5]*x[8]*x[9]-0.0174*x[5]*x[8]*x[10]-0.4531*x[5]*x[9]*x[10]+0.3375*x[6]*x[7]*x[8]-0.6891*x[6]*x[7]*x[9]-0.416*x[6]*x[7]*x[10]-0.4715*x[6]*x[8]*x[9]+0.6858*x[6]*x[8]*x[10]-0.4223*x[6]*x[9]*x[10]+0.7652*x[7]*x[8]*x[9]+0.7955*x[7]*x[8]*x[10]+0.5377*x[7]*x[9]*x[10]+0.9667*x[8]*x[9]*x[10] <= 28.166)
@NLconstraint(m, e5, 0.5089*x[1]*x[2]-0.9858*x[1]*x[3]+0.7245*x[1]*x[4]-0.7463*x[1]*x[5]-0.5182*x[1]*x[6]-0.6181*x[1]*x[7]-0.815*x[1]*x[8]-0.1105*x[1]*x[9]-0.6992*x[1]*x[10]+0.2491*x[2]*x[3]+0.6866*x[2]*x[4]-0.7184*x[2]*x[5]+0.7077*x[2]*x[6]-0.8608*x[2]*x[7]-0.851*x[2]*x[8]+0.6374*x[2]*x[9]-0.0365*x[2]*x[10]+0.7884*x[3]*x[4]+0.6555*x[3]*x[5]-0.3754*x[3]*x[6]-0.0738*x[3]*x[7]+0.9879*x[3]*x[8]+0.0135*x[3]*x[9]-0.3498*x[3]*x[10]-0.0971*x[4]*x[5]+0.904*x[4]*x[6]-0.2376*x[4]*x[7]+0.2933*x[4]*x[8]-0.9793*x[4]*x[9]-0.2463*x[4]*x[10]+0.4602*x[5]*x[6]+0.2682*x[5]*x[7]-0.5987*x[5]*x[8]+0.5991*x[5]*x[9]-0.2997*x[5]*x[10]+0.4424*x[6]*x[7]-0.2551*x[6]*x[8]-0.4591*x[6]*x[9]+0.191*x[6]*x[10]+0.7592*x[7]*x[8]-0.4934*x[7]*x[9]-0.5187*x[7]*x[10]-0.1522*x[8]*x[9]-0.7995*x[8]*x[10]+0.2015*x[9]*x[10]+0.7515*x[1]-0.3003*x[2]-0.0052*x[3]-0.2116*x[4]-0.069*x[5]+0.4125*x[6]+0.1911*x[7]+0.141*x[8]-0.4838*x[9]+0.0428*x[10]+0.7141*x[1]*x[2]*x[4]-0.7202*x[1]*x[2]*x[3]+0.2112*x[1]*x[2]*x[5]+0.7705*x[1]*x[2]*x[6]+0.0843*x[1]*x[2]*x[7]+0.3562*x[1]*x[2]*x[8]+0.7516*x[1]*x[2]*x[9]+0.6577*x[1]*x[2]*x[10]+0.288*x[1]*x[3]*x[4]+0.179*x[1]*x[3]*x[5]+0.1567*x[1]*x[3]*x[6]-0.3688*x[1]*x[3]*x[7]+0.7408*x[1]*x[3]*x[8]-0.4765*x[1]*x[3]*x[9]+0.6741*x[1]*x[3]*x[10]+0.112*x[1]*x[4]*x[5]-0.8509*x[1]*x[4]*x[6]+0.4165*x[1]*x[4]*x[7]-0.9974*x[1]*x[4]*x[8]-0.3871*x[1]*x[4]*x[9]+0.6783*x[1]*x[4]*x[10]+0.8508*x[1]*x[5]*x[6]-0.7738*x[1]*x[5]*x[7]+0.6638*x[1]*x[5]*x[8]+0.5599*x[1]*x[5]*x[9]+0.7158*x[1]*x[5]*x[10]+0.1086*x[1]*x[6]*x[7]-0.69*x[1]*x[6]*x[8]-0.4714*x[1]*x[6]*x[9]+0.6628*x[1]*x[6]*x[10]+0.1565*x[1]*x[7]*x[8]+0.2639*x[1]*x[7]*x[9]-0.0214*x[1]*x[7]*x[10]-0.6831*x[1]*x[8]*x[9]-0.7759*x[1]*x[8]*x[10]+0.3236*x[1]*x[9]*x[10]-0.768*x[2]*x[3]*x[4]-0.4247*x[2]*x[3]*x[5]+0.4122*x[2]*x[3]*x[6]+0.4506*x[2]*x[3]*x[7]+0.3552*x[2]*x[3]*x[8]+0.446*x[2]*x[3]*x[9]+0.3144*x[2]*x[3]*x[10]+0.4965*x[2]*x[4]*x[5]-0.8063*x[2]*x[4]*x[6]-0.612*x[2]*x[4]*x[7]+0.7794*x[2]*x[4]*x[8]+0.834*x[2]*x[4]*x[9]+0.6108*x[2]*x[4]*x[10]+0.8644*x[2]*x[5]*x[6]-0.8542*x[2]*x[5]*x[7]-0.2302*x[2]*x[5]*x[8]-0.1178*x[2]*x[5]*x[9]-0.9046*x[2]*x[5]*x[10]-0.262*x[2]*x[6]*x[7]-0.6183*x[2]*x[6]*x[8]+0.6188*x[2]*x[6]*x[9]-0.0381*x[2]*x[6]*x[10]-0.7188*x[2]*x[7]*x[8]-0.1034*x[2]*x[7]*x[9]+0.4047*x[2]*x[7]*x[10]+0.0084*x[2]*x[8]*x[9]-0.4031*x[2]*x[8]*x[10]+0.702*x[2]*x[9]*x[10]-0.8478*x[3]*x[4]*x[5]+0.7782*x[3]*x[4]*x[6]+0.7223*x[3]*x[4]*x[7]+0.5405*x[3]*x[4]*x[8]+0.7626*x[3]*x[4]*x[9]-0.2324*x[3]*x[4]*x[10]-0.6926*x[3]*x[5]*x[6]-0.4473*x[3]*x[5]*x[7]+0.5227*x[3]*x[5]*x[8]-0.1544*x[3]*x[5]*x[9]+0.1788*x[3]*x[5]*x[10]-0.8851*x[3]*x[6]*x[7]-0.397*x[3]*x[6]*x[8]-0.8556*x[3]*x[6]*x[9]+0.5239*x[3]*x[6]*x[10]+0.0308*x[3]*x[7]*x[8]-0.7734*x[3]*x[7]*x[9]+0.3039*x[3]*x[7]*x[10]-0.7162*x[3]*x[8]*x[9]+0.3885*x[3]*x[8]*x[10]-0.999*x[3]*x[9]*x[10]-0.1183*x[4]*x[5]*x[6]-0.1821*x[4]*x[5]*x[7]+0.6174*x[4]*x[5]*x[8]-0.854*x[4]*x[5]*x[9]+0.5544*x[4]*x[5]*x[10]+0.232*x[4]*x[6]*x[7]-0.6641*x[4]*x[6]*x[8]-0.3447*x[4]*x[6]*x[9]+0.6963*x[4]*x[6]*x[10]+0.1228*x[4]*x[7]*x[8]+0.1779*x[4]*x[7]*x[9]+0.973*x[4]*x[7]*x[10]+0.1374*x[4]*x[8]*x[9]-0.5653*x[4]*x[8]*x[10]+0.3235*x[4]*x[9]*x[10]-0.7351*x[5]*x[6]*x[7]+0.1866*x[5]*x[6]*x[8]-0.1166*x[5]*x[6]*x[9]+0.6616*x[5]*x[6]*x[10]+0.3928*x[5]*x[7]*x[8]+0.4047*x[5]*x[7]*x[9]-0.492*x[5]*x[7]*x[10]+0.0233*x[5]*x[8]*x[9]-0.0839*x[5]*x[8]*x[10]+0.9802*x[5]*x[9]*x[10]+0.2466*x[6]*x[7]*x[8]+0.0186*x[6]*x[7]*x[9]+0.761*x[6]*x[7]*x[10]+0.1837*x[6]*x[8]*x[9]+0.6049*x[6]*x[8]*x[10]-0.782*x[6]*x[9]*x[10]+0.8772*x[7]*x[8]*x[9]+0.9354*x[7]*x[8]*x[10]+0.5135*x[7]*x[9]*x[10]+0.5527*x[8]*x[9]*x[10] <= 32.275)
@NLconstraint(m, e6, (-0.8755*x[1]*x[2])-0.2555*x[1]*x[3]-0.5743*x[1]*x[4]-0.5735*x[1]*x[5]-0.6477*x[1]*x[6]+0.0007*x[1]*x[7]+0.0896*x[1]*x[8]+0.1403*x[1]*x[9]+0.0392*x[1]*x[10]-0.9063*x[2]*x[3]-0.3817*x[2]*x[4]+0.8622*x[2]*x[5]+0.0331*x[2]*x[6]-0.1539*x[2]*x[7]-0.684*x[2]*x[8]+0.8427*x[2]*x[9]+0.679*x[2]*x[10]-0.8744*x[3]*x[4]-0.5763*x[3]*x[5]+0.131*x[3]*x[6]+0.7207*x[3]*x[7]+0.2711*x[3]*x[8]+0.901*x[3]*x[9]-0.0142*x[3]*x[10]+0.7093*x[4]*x[5]-0.6987*x[4]*x[6]+0.591*x[4]*x[7]+0.7248*x[4]*x[8]-0.3342*x[4]*x[9]+0.2565*x[4]*x[10]+0.0506*x[5]*x[6]+0.1018*x[5]*x[7]+0.6964*x[5]*x[8]-0.3124*x[5]*x[9]-0.0906*x[5]*x[10]-0.4594*x[6]*x[7]-0.7137*x[6]*x[8]+0.6835*x[6]*x[9]-0.9256*x[6]*x[10]+0.8048*x[7]*x[8]-0.8525*x[7]*x[9]+0.6184*x[7]*x[10]+0.6039*x[8]*x[9]-0.1299*x[8]*x[10]+0.7409*x[9]*x[10]+0.7098*x[1]-0.7156*x[2]+0.7937*x[3]-0.9671*x[4]-0.8201*x[5]-0.9828*x[6]-0.2199*x[7]-0.1975*x[8]+0.6526*x[9]+0.8052*x[10]+0.9044*x[1]*x[2]*x[4]-0.836*x[1]*x[2]*x[3]+0.9537*x[1]*x[2]*x[5]+0.0803*x[1]*x[2]*x[6]-0.4248*x[1]*x[2]*x[7]+0.9858*x[1]*x[2]*x[8]+0.8136*x[1]*x[2]*x[9]+0.6273*x[1]*x[2]*x[10]+0.3116*x[1]*x[3]*x[4]+0.5186*x[1]*x[3]*x[5]+0.4613*x[1]*x[3]*x[6]+0.5744*x[1]*x[3]*x[7]-0.5661*x[1]*x[3]*x[8]-0.7528*x[1]*x[3]*x[9]-0.1247*x[1]*x[3]*x[10]-0.5048*x[1]*x[4]*x[5]+0.1487*x[1]*x[4]*x[6]+0.6904*x[1]*x[4]*x[7]-0.4091*x[1]*x[4]*x[8]+0.8667*x[1]*x[4]*x[9]+0.4524*x[1]*x[4]*x[10]-0.4188*x[1]*x[5]*x[6]-0.3955*x[1]*x[5]*x[7]+0.3814*x[1]*x[5]*x[8]-0.4766*x[1]*x[5]*x[9]-0.2484*x[1]*x[5]*x[10]+0.4225*x[1]*x[6]*x[7]+0.9204*x[1]*x[6]*x[8]+0.4425*x[1]*x[6]*x[9]+0.8533*x[1]*x[6]*x[10]-0.8434*x[1]*x[7]*x[8]+0.3368*x[1]*x[7]*x[9]-0.2922*x[1]*x[7]*x[10]-0.674*x[1]*x[8]*x[9]-0.506*x[1]*x[8]*x[10]+0.45*x[1]*x[9]*x[10]+0.9451*x[2]*x[3]*x[4]-0.6033*x[2]*x[3]*x[5]-0.5666*x[2]*x[3]*x[6]-0.5187*x[2]*x[3]*x[7]-0.2378*x[2]*x[3]*x[8]-0.8728*x[2]*x[3]*x[9]+0.2078*x[2]*x[3]*x[10]-0.4754*x[2]*x[4]*x[5]-0.0257*x[2]*x[4]*x[6]-0.6292*x[2]*x[4]*x[7]-0.3056*x[2]*x[4]*x[8]+0.9041*x[2]*x[4]*x[9]+0.9193*x[2]*x[4]*x[10]+0.1786*x[2]*x[5]*x[6]-0.8288*x[2]*x[5]*x[7]+0.8871*x[2]*x[5]*x[8]-0.5883*x[2]*x[5]*x[9]-0.4245*x[2]*x[5]*x[10]+0.2509*x[2]*x[6]*x[7]-0.8896*x[2]*x[6]*x[8]-0.7735*x[2]*x[6]*x[9]+0.6383*x[2]*x[6]*x[10]-0.7938*x[2]*x[7]*x[8]-0.6181*x[2]*x[7]*x[9]+0.0857*x[2]*x[7]*x[10]-0.4053*x[2]*x[8]*x[9]+0.2158*x[2]*x[8]*x[10]-0.7104*x[2]*x[9]*x[10]+0.1614*x[3]*x[4]*x[5]-0.5585*x[3]*x[4]*x[6]-0.0765*x[3]*x[4]*x[7]-0.9573*x[3]*x[4]*x[8]+0.744*x[3]*x[4]*x[9]-0.1551*x[3]*x[4]*x[10]+0.4025*x[3]*x[5]*x[6]+0.9942*x[3]*x[5]*x[7]-0.2869*x[3]*x[5]*x[8]-0.6106*x[3]*x[5]*x[9]+0.5482*x[3]*x[5]*x[10]-0.5155*x[3]*x[6]*x[7]+0.2689*x[3]*x[6]*x[8]+0.291*x[3]*x[6]*x[9]-0.6436*x[3]*x[6]*x[10]-0.6477*x[3]*x[7]*x[8]-0.0194*x[3]*x[7]*x[9]-0.2997*x[3]*x[7]*x[10]+0.7213*x[3]*x[8]*x[9]-0.9991*x[3]*x[8]*x[10]+0.8354*x[3]*x[9]*x[10]+0.9739*x[4]*x[5]*x[6]+0.9231*x[4]*x[5]*x[7]-0.5433*x[4]*x[5]*x[8]-0.5059*x[4]*x[5]*x[9]+0.1579*x[4]*x[5]*x[10]+0.9595*x[4]*x[6]*x[7]-0.4744*x[4]*x[6]*x[8]-0.7872*x[4]*x[6]*x[9]+0.8894*x[4]*x[6]*x[10]+0.6219*x[4]*x[7]*x[8]-0.9093*x[4]*x[7]*x[9]+0.9121*x[4]*x[7]*x[10]+0.4676*x[4]*x[8]*x[9]-0.056*x[4]*x[8]*x[10]+0.7962*x[4]*x[9]*x[10]+0.2177*x[5]*x[6]*x[7]-0.1877*x[5]*x[6]*x[8]+0.2283*x[5]*x[6]*x[9]+0.5367*x[5]*x[6]*x[10]-0.594*x[5]*x[7]*x[8]+0.022*x[5]*x[7]*x[9]-0.9741*x[5]*x[7]*x[10]-0.7372*x[5]*x[8]*x[9]-0.0799*x[5]*x[8]*x[10]+0.6106*x[5]*x[9]*x[10]+0.4631*x[6]*x[7]*x[8]-0.7378*x[6]*x[7]*x[9]-0.8125*x[6]*x[7]*x[10]-0.4392*x[6]*x[8]*x[9]-0.7147*x[6]*x[8]*x[10]-0.974*x[6]*x[9]*x[10]+0.9874*x[7]*x[8]*x[9]+0.422*x[7]*x[8]*x[10]+0.6878*x[7]*x[9]*x[10]+0.12*x[8]*x[9]*x[10] <= 64.853)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
