Diff.two.means=function(mean1, mean2, sd1,sd2,n1,n2,ci){

point.estimate=mean1-mean2
print (point.estimate)

se=sqrt(sd1^2/n1)+(sd2^2/n2)
print(se)

CV=qnorm(ci+(1-ci)/2)
print(CV)
ci_lower=point.estimate-CV*se
print(ci_lower)
ci_upper=point.estimate+CV*se
print(ci_upper)
}

Diff.two.means(mean1=68.3, mean2=64.6, sd1=3.6,sd2=2.9,n1=49,n2=38,ci=.90)
Diff.two.means(mean1=37.2, mean2=39, sd1=4.97,sd2=6.24,n1=60,n2=159,ci=.95)
