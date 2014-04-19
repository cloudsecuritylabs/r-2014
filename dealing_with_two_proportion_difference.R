#######################################
#Confidence Interval

single.prop=function(p,n,ci){
  
  point.estimate=p
  print (point.estimate)
  se=sqrt((p*(1-p)/n))
  print(se)
  CV=qnorm(ci+(1-ci)/2)
  print(CV)
  ci_lower=point.estimate-CV*se
  print(ci_lower)
  ci_upper=point.estimate+CV*se
  print(ci_upper)
  
}

single.prop(p=.625,n=40,ci=.9)

single.mean=function(mean,sd,n,ci){
  
  point.estimate=mean
  print (point.estimate)
  se=sd/sqrt(n)
  print(se)
  CV=qnorm(ci+(1-ci)/2)
  print(CV)
  ci_lower=point.estimate-CV*se
  print(ci_lower)
  ci_upper=point.estimate+CV*se
  print(ci_upper)
  
}

single.mean(mean=2,sd=.5,n=44,ci=.96)

two.prop.diff=function(p1,p2,n1,n2,ci){

  point.estimate=p1-p2
  print (point.estimate)
  se=sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
  print(se)
  CV=qnorm(ci+(1-ci)/2)
  print(CV)
  ci_lower=point.estimate-CV*se
  print(ci_lower)
  ci_upper=point.estimate+CV*se
  print(ci_upper)
  
}

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


###############################
#Inference for single mean one and two sided tests
###############################


Z.for.inference=function(observed.value, sample.mean, sd, n){  
  z=(observed.value-sample.mean)/(sd/sqrt(n))
  print(z)}

Z.for.inference(observed.value=204.6,sample.mean=200, sd=9, n=10)  


SINGLE.MEAN.One.Sided.Test=function(observed.value, sample.mean, sd, n){  
    z=(observed.value-sample.mean)/(sd/sqrt(n))
    print(z) 
    p.value=pnorm(z, lower.tail=F)
    print(p.value)}

SINGLE.MEAN.One.Sided.Test(observed.value=204.6,sample.mean=200, sd=9, n=10)


SINGLE.MEAN.two.Sided.Test=function(observed.value, sample.mean, sd, n){  
  z=(observed.value-sample.mean)/(sd/sqrt(n))
  print(z) 
  p.value=pnorm(abs(z), lower.tail=F)
  print(p.value*2)}

SINGLE.MEANtwo.Sided.Test(observed.value=312.34,sample.mean=325.16, sd=76.42, n=75)


#####################################
# Inference for population proportion

PROPORTION.One.Sided=function(observed.value, sample.prop, n){  
  z=(observed.value-sample.prop)/sqrt(sample.prop*(1-sample.prop)/n)
  print(z) 
  p.value=pnorm(z, lower.tail=F)
  print(p.value)}

PROPORTION.One.Sided(observed.value=.575, sample.prop=.5, n=1000)

PROPORTION.two.Sided=function(observed.value, sample.prop, n){  
  z=(observed.value-sample.prop)/sqrt(sample.prop*(1-sample.prop)/n)
  print(z) 
  p.value=pnorm(abs(z), lower.tail=F)
  print(p.value*2)}

PROPORTION.two.Sided(observed.value=.25, sample.prop=.3, n=56)


#####################################
# Inference for Two Means
TWO.MEANS.Two.Sided.prop=function(x1,x2,sd1,sd2,n1,n2,diff.mean.popularion=0){  
  #diff.mean.population = 0 in most cases
  observed.value=x1-x2
  z=(observed.value-diff.mean.popularion)/sqrt((sd1^2/n1)+(sd2^2/n2))
  print(z) 
  p.value=2*pnorm(z, lower.tail=F)
  print(p.value)}
TWO.MEANS.Two.Sided.prop(x1=18.56,x2=17.95,sd1=4.35,sd2=4.87,n1=65,n2=75,diff.mean.popularion=0)

#####################################
# Inference for Two Proportions
TWO.PROPORTION.One.Sided.prop=function(p1,p2,n1,n2,diff.prop.population=0){  
  observed.value=p1-p2
  z=(observed.value-diff.prop.population)/sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
  print(z) 
  p.value=pnorm(z, lower.tail=F)
  print(p.value)}

TWO.PROPORTION.One.Sided.prop(p1=.18,p2=.16,n1=100,n2=200,diff.prop.population=0)

TWO.PROPORTION.two.Sided.prop=function(p1,p2,n1,n2,diff.prop.population=0){  
  observed.value=p1-p2
  z=(observed.value-diff.prop.population)/sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
  print(z) 
  p.value=2*pnorm(z, lower.tail=F)
  print(p.value)}

TWO.PROPORTION.two.Sided.prop(p1=52/65,p2=30/55,n1=65,n2=55,diff.prop.population=0)









#####################################################################################
#Examples


Diff.two.means(mean1=68.3, mean2=64.6, sd1=3.6,sd2=2.9,n1=49,n2=38,ci=.90)
Diff.two.means(mean1=37.2, mean2=39, sd1=4.97,sd2=6.24,n1=60,n2=159,ci=.95)

#
#It has been observed that some persons who suffer acute heartburn, again suffer acute heartburn within one year of the first episode. This is due, in part, to damage from the first episode. The performance of a new drug designed to prevent a second episode is to be tested for its effectiveness in preventing a second episode. In order to do this two groups of people suffering a first episode are selected. There are 190 people in the first group and this group will be administered the new drug. There are 136 people in the second group and this group wil be administered a placebo. After one year, 19% of the first group has a second episode and 13% of the second group has a second episode. Select a 95% confidence interval for the difference in true proportion of the two groups. 
two.prop.diff(p1=.19,p2=.13,n1=190,n2=136,ci=.95)

two.prop.diff(p1=.19,p2=.13,n1=9,n2=13,ci=.95)




#A random sample of 64 observations produced a mean value of 81 and standard deviation of 5.5. The 95% confidence interval for the population mean μ is between
n=64
mean=81
sd=5.5
CV=qnorm(.95+(1-.95)/2)
SE=sd/sqrt(n)

print(mean+CV*SE)
print(mean-CV*SE)


#The length of needles produced by a machine has standard deviation of 0.02 inches. Assuming that the distribution is normal, how large a sample is needed to determine with a precision of ±0.005 inches the mean length of the produced needles to 97% confidence?
sd=.02
me=.005
ci=.97

n=(qnorm(.97+(1-.97)/2)*sd/me)^2
print(n)


#The gas mileage for a certain model of car is known to have a standard deviation of 4 mi/gallon. A simple random sample of 81 cars of this model is chosen and found to have a mean gas mileage of 26.5 mi/gallon. Construct a 98% confidence interval for the mean gas mileage for this car model
n=81
mean=26.5
sd=4
CV=qnorm(.98+(1-.98)/2)
SE=sd/sqrt(n)

print(mean+CV*SE)
print(mean-CV*SE)

#If the 90% confidence limits for the population mean are 57 and 63, which of the following could be the 98% confidence limits 

#A 97% confidence interval for the mean of a population is to be constructed and must be accurate to within 0.3 unit. A preliminary sample standard deviation is 1.4. The smallest sample size n that provides the desired accuracy is 
sd=1.4
me=.3
ci=.97

n=(qnorm(.97+(1-.97)/2)*sd/me)^2
print(n)


#An SRS of 21 students at UH gave an average height of 6.0 feet and a standard deviation of .1 feet. Construct a 90% confidence interval for the mean height of students at UH. 
n=21
mean=6
sd=.1
CV=qnorm(.9+(1-.9)/2)
SE=sd/sqrt(n)

print(mean+CV*SE)
print(mean-CV*SE)