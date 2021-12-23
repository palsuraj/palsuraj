library(datasets)
e_quakes<-datasets::quakes
head(e_quakes)
tail(e_quakes)
e_quakes[(c(1,2))]
summary(e_quakes$depth)
plot(e_quakes$mag)
plot(e_quakes$depth,e_quakes$mag,type = "p")
plot(e_quakes)
plot(e_quakes$depth,e_quakes$mag, type = "b")
plot(e_quakes$depth, xlab = 'Ozone Concentration'
     ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
hist(e_quakes$mag)
hist(e_quakes$mag
     main = "num",
     xlab = "values.", col="blue")
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$depth )
plot(e_quakes$depth, e_quakes$mag )
plot(e_quakes$depth, type= "l")
plot(e_quakes$depth, type= "l")
barplot(e_quakes$depth, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(e_quakes$mag)
boxplot(e_quakes$mag)
boxplot(e_quakes[,0:4] main='Multiple Box plots')
sd(e_quakes$depth)
var(e_quakes$depth)
skewness(e_quakes$depth)
kurtosis(e_quakes$depth)
