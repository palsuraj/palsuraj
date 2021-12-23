x <- 15
y<-20
z <-30

x <- c(2,0,0,4)
x[1]
x[-1]
x[1]<-3; x
x[-1] = 5;x
y<9
y[4] =1
y<9
df<-data.frame(x=1:3,y=c("a","b","c"))
df[1,1]
df[c(1,1),c(1,2)]
Df_new<-data.frame(height=c(150,160),weight=c(65,72))

#attitude = read.csv('path/attitude.csv',header= TRUE, sep=",")

attitude<-datasets::attitude
#top 10 rows and last 10 rows
head(attitude,10)
tail(attitude,10)

#columns
attitude[,c(1,2)]

df<-attitude[,-7]

attitude$rating

summary(attitude$learning)

summary(attitude)
##############################

plot(attitude$rating)
plot(attitude$rating,attitude$complaints,type="p")
plot(attitude)
####points and lines
plot(attitude$complaints, type = "b") #p=points,l=line,b=both
plot(attitude$rating, xlab = 'Rating of employee', ylab = 'No of observations',main = 'Rating of employee',col = 'blue')
#horizontal bar plot  
barplot(attitude$rating,main = 'Rating by employee',ylab = 'Rating',col ='blue',horiz = F,axes = T) 
#histogram
hist(attitude$learning)
hist(attitude$learning,main = 'learning of employee',xlab = 'Learning', col = 'blue')
#single box plot
boxplot(attitude$raises,main = 'Boxplot')
boxplot.stats(attitude$advance)$out
#multiple box plot,
boxplot(attitude[1:4],main="multiple")
#margin of the grid(mar)
#no of rows and columns(mfrow),(mfcol)
#whether a border is to be included(bty)
#and position of the
#labels(las: 1 for horizontal, las:0 for vertical)
#bty-box and around the plot boundry o for yes,n for no
par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty=("o"))

plot(attitude$raises)
plot(attitude$raises,attitude$learning)
plot(attitude$rating,type='l')
plot(attitude$learning,type='l')
plot(attitude$critical,type='l')
barplot(attitude$raises, main = 'appraisal in company',xlab = 'raises',col = 'green',horiz = TRUE)
hist(attitude$advance)
boxplot(attitude$advance)
boxplot(attitude[,0:4],main='multiple')
