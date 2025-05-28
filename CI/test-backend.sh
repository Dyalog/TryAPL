#!/bin/bash

set -e

DOCKER_IP=$1

TESTOUT=/tmp/tryapl-test.log
rm -f ${TESTOUT}
touch ${TESTOUT}

echo "Testout is : ${TESTOUT}"

#result='["c-ocJ1ymJ56oBCc;h~6vh>C?0iiC=aA_|HvqNvyb2$*0Jb_>|uVu9G*-7R)Ec6Yb_SN3@hPcZhJ@7&!xyLV@HW;Qu7qmueC(4LqZm`g|)_<NHaMru4)FZJ`<dWMaZG>`A<5w2cm)z)d6`gz@#>M6>wl;_i~n_hp+)R;??5>0gKn&wD}aZd5EanTyjUwNCf`=QP2>E<o|oHtIVj*`y(>E$#0WxR$u<JGNG!2aL9n?|ROzIq+4tz)629<VxhGR`b0sD5jW`i{KFgfg~@5=OB?oJ&`Fa~*|1&Vvw)5VS@cv_(6#M+bx=3?0!4ozVqd(G9Y$A`povbVm>LL@#-t+GQEfN)(e?yx)ab0wqxjt|%@2g&WGkUH$$E%-wvV9p=fkjFVg?Vr5i8Ra8TD)Id#mqZWKn8+G7|x{%LbAAV?nhLA1P7)>DCqZyj3b1C!u6&o=?+8D!b;vVe9K^(#nB;hEI;W$p<Bu?WD&dU7b5-#HkuHhSQ;|X5i72cu`mNCKoWc-ZVjdw5Nd>8g%KMu&8kv~j4h4Z+Gt4PKT+{7*1!Cl<LeLTQJJi=o<#WOs|OSC|7RHS}Oq8HIa)(m~|lyyU_Kx{=U0(%tY+6nJ*L7tVhN<NZj`*S|tT2Uq<g6kv}r=zTA&W&NjeU?&-++gAmIKWZX0TR)dw(@Y6b;vW}@PiM$;fX2S7f5u6wahQkSM~!!5kz}1Ueopl@9+WgtDsr2LSd|fC4Dr52`u0t8w&Yg2Uj>lA6_(l#3y`40KUlgk-8M$KrAQwgqQ3j#>+gCA4exAz@NMWIe*#rn2Uv&Og;c1wkdnz=YPRQ=fB|OT&_h+jgej^eZveHFMTpNdf}p{$>l7YKdf84XHl`4E+tBqaxGoPt*rZt-E$KXm));axk}Y))oaxBuH{p^j&I$1_5B(&Y}B|((`L=%W`BHa_B5M$c8eT2b6MujlQ&;}s{#eBZEWod6}B(p;MiwZzm<WXUstT)@nvAqE6)R74GIbl89XGqb(`3>?b>$;4eL0xQ|B&Shb<l6Ej(gG<j7H@$8;Y%Zv2FalO|8;F?HJXo-=x#Iotc(lJgH9K6>IGmAUWRRqs}NZCt+T*}?_ew$DFxI)2`kt%u9^-?`(>`VGbdk`B$9bMV0N{l{9p|90ei%*hkQ_wHM>!t`a<uQ%^qzm|OU*6q7@ZmiY*k4>$9`(4TkbJ6|3$LK5nb^HL$P#D1",1986,"OB<cT-5z-%_0e3qyO|nm3-i|n1y@13c{8GykZ5Hd%y6AK5IYi4H{>`Hnz1uy#;07J?lr?vO1ja!1IHf2",["55"]]'

# full result (above) can be obtained from TAE.apln, or more conveniently via the browser as the variable "state" or "localStorage.current" in a running TryAPL
#           =[encoded-ws, length, hash, result]

# For convenience, individual APL expressions can be tested as follows
# MAKE SURE grep uses -E (extended regex option) instead of -F (match string) option
state='["",0,"","+/\u237310"]' # state contains empty state + APL expression string with unicode code points
result='\[\"55\"\]\]$'        # APL result is a regex matching the last bracket of fullresult

#state='["",0,"","+/1 2 3"]'    # another example
#result='[\"6\"]]$'

# use of cat prevents curl complaining because grep closes the read stream early. If it fails with error 23, try |tac|tac| instead
curl -s --retry 10 --retry-delay 5 -H "Content-Type: application/json" -d "${state}" http://${DOCKER_IP}:8080/Exec > response
if ! cat response | grep ${result} > /dev/null; then
    echo $'FAILED** Jarvis Request Failed\n' "${state}" $'\n' "${result}" $'\n' "${response}" | tee -a ${TESTOUT}
    exit 1
fi
#curl -H "Content-Type: application/json" -d "${state}" http://${DOCKER_IP}:8080/Exec | cat | grep ${result} > /tmp/tae.log
if grep "FAILED**" ${TESTOUT} >/dev/null 2>&1; then
    exit 1
fi
