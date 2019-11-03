
July1980<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/stiag780.txt",header=TRUE,skip=27,sep="")
July1980USMale<-aggregate(July1980[,5], by=list(July1980[,3]), FUN=sum)
July1980USFemale<-aggregate(July1980[,6], by=list(July1980[,3]), FUN=sum)
July1980SexRatio<-July1980USMale/July1980USFemale

July1985<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/stiag785.txt",header=TRUE,skip=27,sep="")
July1985USMale<-aggregate(July1985[,5], by=list(July1985[,3]), FUN=sum)
July1985USFemale<-aggregate(July1985[,6], by=list(July1985[,3]), FUN=sum)
July1985SexRatio<-July1985USMale/July1985USFemale

July1989<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/stiag789.txt",header=TRUE,skip=27,sep="")
July1989USMale<-aggregate(July1989[,5], by=list(July1989[,3]), FUN=sum)
July1989USFemale<-aggregate(July1989[,6], by=list(July1989[,3]), FUN=sum)
July1989SexRatio<-July1989USMale/July1989USFemale

plot(July1980SexRatio$x[16:60],type="l",axes=FALSE,ylab="sex ratio",xlab="age",ylim=c(.8,1.1))
lines(July1985SexRatio$x[16:60],col=2)
lines(July1989SexRatio$x[16:60],col=3)
axis(side=1,at=1:45,labels=c(15:59))
axis(side=2)
legend("topright",legend=c("1980","1985","1989"),col=c(1,2,3),lty=1)
title("Sex ratios, selected ages and years, USA")
mtext(side=1,line=4,adj=.35,text=paste(c("Source: U.S. Census Bureau 1980 to 1989 intercensal estimates, via https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/.")),cex=.65)

