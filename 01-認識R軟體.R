
license()
contributors()
citation()
demo()
demo('graphics')
demo('chartSeries')
install.packages("quantmod")  
library(quantmod)
demo('chartSeries')

#list all packages
library()
demo(package = .packages(all.available = TRUE)) #list all demo packages


xdata=rbinom(10,1,0.1)
xdata
xbar=mean(xdata)
xbar
for (i in 1:10000) {xdata=rbinom(10,1,0.1);xbar=c(xbar,mean(xdata));}
xbar
barplot(table(xbar)/length(xbar),main="n=10")


install.packages("scatterplot3d")
library(scatterplot3d)
par(mfrow=c(1,1))
z <- seq(-10, 10, 0.01)
sum(z)
x <- cos(z)
y <- sin(z)
scatterplot3d(x, y, z)
