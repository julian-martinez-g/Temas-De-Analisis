cribaeras=function(n){
r=c()
s_1=c()
for (i in 1:n){
  r=c(r,i)
} 
for (i in 1:n){
  a_1=2
  if ((r[i]%%a_1)>=1){
    s_1=c(s_1,r[i])
  }
}
r=s_1
s_1=c()
for (i in 1:length(r)){
  a_2=3
  if (r[i]%%a_2>=1){
  s_1=c(s_1,r[i])
  }
}  
r=s_1
s_1=c()
for (i in 1:length(r)){
  a_3=5
  if (r[i]%%a_3>=1){
    s_1=c(s_1,r[i])
  }
}  
r=s_1
s_1=c()
for (i in 1:length(r)){
  a_4=7
  if (r[i]%%a_4>=1){
    s_1=c(s_1,r[i])
  }
} 
r=s_1
s_1=c()
for (i in 1:length(r)){
  a_5=11
  if (r[i]%%a_5>=1){
    s_1=c(s_1,r[i])
  }
} 
r=s_1
s_1=c()
for (i in 1:length(r)){
  a_6=13
  if (r[i]%%a_6>=1){
    s_1=c(s_1,r[i])
  }
} 
if (n<14){
  if (n==13){
    s_1=c(a_1,a_2,a_3,a_4,a_5,a_6)
  }else if(n==12|n==11){
    s_1=c(a_1,a_2,a_3,a_4,a_5)
  }
  else if(n==10|n==9|n==8|n==7){
    s_1=c(a_1,a_2,a_3,a_4)
  }else if(n==6|n==5){
    s_1=c(a_1,a_2,a_3)
  }else if(n==4|n==3){
    s_1=c(a_1,a_2)
  }else{
    s_1=c(a_1)
  }
}else{
  s_1=c(a_1,a_2,a_3,a_4,a_5,a_6,s_1)
  s_1=s_1[-c(7)]
  }
return(s_1)
}
