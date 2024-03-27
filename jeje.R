A=matrix(c(100,1,54,33,22,3),nrow=2, ncol=3)

nrow = rowSums(A)
ncol = colSums(A)
n = sum(nrow)
r = length(nrow)
c = length(ncol)
sumR = 0;
for (i in 1:r){
    sumC = 0;
    for (j in 1:c){
      o = (A[i,j] - (nrow[i]*ncol[j])/n)^2
      sumC = sumC + (o/(nrow[i]*ncol[j]))
    }
    sumR = sumR + sumC;
  }


result = n*sumR;

print(A);
print(result);

if(result < qchisq(p=.95, df=(r-1)*(s-1) )){
print("Az érték megfelelő");
}else
{
print("Az érték nem megfelelő");
}