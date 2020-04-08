#Integra la funcion g(x)=e^{-(x)^{2}}
integralexp=function(a,b,intervalos){
k=(b-a)/(intervalos)
S_sup=0
S_inf=0
for (i in 1:intervalos){
  S_sup=S_sup + k*exp(-(a+k*i)^{2})
}
for (i in 1:intervalos){
  S_inf=S_inf + k*exp(-((a+k*(i-1))^{2}))
}

S=(S_inf + S_sup)/2
return(S)
}