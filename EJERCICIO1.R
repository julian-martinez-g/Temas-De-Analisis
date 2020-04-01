#Aproximacion a Sum(1/n^{2}) con n>=1
#Aqui inicia el codigo
serie=function(tol){
  k=1
  ref=(pi^2)/6
  i=1
  s=0
  while (k>tol){
    s=(1/i^{2})+s
    i=i+1
    k=abs(ref-s)
  }
  return(s)
}