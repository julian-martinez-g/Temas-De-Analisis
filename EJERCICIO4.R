cuadratica=function(a,b,c){
discriminante=b**2 -4*a*c
if (discriminante>=0){
  x1=(-1*b+ sqrt(discriminante))/(2*a)
  x2=(-1*b- sqrt(discriminante))/(2*a)
}else{
  x1=complex(real=(-b/(2*a)),imaginary = (sqrt(abs(discriminante))/(2*a)))
  x2=complex(real=(-b/(2*a)),imaginary = -(sqrt(abs(discriminante))/(2*a)))
}
if (x1==x2){
  v=c(x1,"raiz de multiplicidad 2")
}else{
  v=c(x1,x2)
  }
return(v)
}