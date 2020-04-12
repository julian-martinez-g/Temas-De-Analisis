JACOBI=function(A,b,k){
mat=matrix(A,nrow=k,ncol=k,byrow=FALSE)
b=matrix(b,nrow=k,ncol=1,byrow=FALSE)
D=matrix(0,nrow = nrow(mat),ncol = ncol(mat))
L=matrix(0,nrow = nrow(mat),ncol = ncol(mat))
U=matrix(0,nrow = nrow(mat),ncol = ncol(mat))
x_0=numeric(ncol(mat))
for (i in 1:nrow(mat)){
  for (j in 1:ncol(mat)){
    if (i==j){
      D[i,j]=(1/mat[i,j])
    }else if (i>j){
      L[i,j]=mat[i,j]
    }else{
      U[i,j]=mat[i,j]
    }
  }
}
S=L+U
T=((-1)*D)%*%S
C=D%*%b
norma=(mat%*%x_0 - b)
for (i in 1:10000){
x=(T%*%x_0 + C)
x_0=x
norma=(mat%*%x_0 - b)
}
solucion=x
verificacion=norma
final=data.frame(solucion,verificacion)
return(final)
}  