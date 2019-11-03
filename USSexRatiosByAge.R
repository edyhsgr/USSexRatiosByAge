##########
#REVIEWING US SEX RATIOS BY AGE, 1970 TO 2015
#EDDIE HUNSINGER, NOVEMBER 2019
#
#THIS CODE HAS NOT BEEN REVIEWED
#I ACTUALLY AIMED FOR RESIDENT US JUST TO BE UNIFORM, BUT FOR THE 1970s IT IS CURRENTLY RESIDENT US PLUS OVERSEAS MILITARY
##########

#GETTING DATA BY YEAR
#INCLUDES OVERSEAS MILITARY
All1970US<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1900-1980/national/asrh/pe-11-1970.csv",header=TRUE,sep=",",skip=7)
July1970USMale<-as.numeric(gsub(",","",All1970US$X.2[1:86]))
July1970USFemale<-as.numeric(gsub(",","",All1970US$X.3[1:86]))
July1970SexRatio<-July1970USMale/July1970USFemale

#All1975US<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1900-1980/national/asrh/pe-11-1975.csv",header=TRUE,sep=",",skip=7)
#July1975USMale<-as.numeric(gsub(",","",All1975US$X.2[1:86]))
#July1975USFemale<-as.numeric(gsub(",","",All1975US$X.3[1:86]))
#July1975SexRatio<-July1975USMale/July1975USFemale

#INCLUDES OVERSEAS MILITARY
#All1979US<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1900-1980/national/asrh/pe-11-1979.csv",header=TRUE,sep=",",skip=7)
#July1979USMale<-as.numeric(gsub(",","",All1979US$X.2[1:86]))
#July1979USFemale<-as.numeric(gsub(",","",All1979US$X.3[1:86]))
#July1979SexRatio<-July1979USMale/July1979USFemale

#"RESIDENT POPULATION OF STATES" "THE JULY 1989 INTERCENSALS ESTIMATES IN THIS FILE ARE CONSISTENT WITH AND DESCRIBED IN CURRENT POPULATION REPORTS, SERIES P25-1106"
July1980<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/stiag780.txt",header=TRUE,skip=27,sep="")
July1980USMale<-aggregate(July1980[,5], by=list(July1980[,3]), FUN=sum)
July1980USFemale<-aggregate(July1980[,6], by=list(July1980[,3]), FUN=sum)
July1980SexRatio<-July1980USMale/July1980USFemale

#"RESIDENT POPULATION OF STATES" "THE JULY 1989 INTERCENSALS ESTIMATES IN THIS FILE ARE CONSISTENT WITH AND DESCRIBED IN CURRENT POPULATION REPORTS, SERIES P25-1106"
July1985<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/stiag785.txt",header=TRUE,skip=27,sep="")
July1985USMale<-aggregate(July1985[,5], by=list(July1985[,3]), FUN=sum)
July1985USFemale<-aggregate(July1985[,6], by=list(July1985[,3]), FUN=sum)
July1985SexRatio<-July1985USMale/July1985USFemale

#"RESIDENT POPULATION OF STATES" "THE JULY 1989 INTERCENSALS ESTIMATES IN THIS FILE ARE CONSISTENT WITH AND DESCRIBED IN CURRENT POPULATION REPORTS, SERIES P25-1106"
July1989<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1980-1990/state/asrh/stiag789.txt",header=TRUE,skip=27,sep="")
July1989USMale<-aggregate(July1989[,5], by=list(July1989[,3]), FUN=sum)
July1989USFemale<-aggregate(July1989[,6], by=list(July1989[,3]), FUN=sum)
July1989SexRatio<-July1989USMale/July1989USFemale

#"INTERCENSAL ESTIMATES OF THE UNITED STATES RESIDENT POPULATION BY AGE AND SEX: 1990"
All1990US<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1990-2000/intercensal/national/us-est90int-07-1990.csv",header=FALSE,skip=3,sep=",")
July1990US<-subset(All1990US,All1990US$V1=="July 1, 1990")
July1990SexRatio<-July1990US$V4[2:102]/July1990US$V5[2:102]

#"INTERCENSAL ESTIMATES OF THE UNITED STATES RESIDENT POPULATION BY AGE AND SEX: 1990"
All1995US<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1990-2000/intercensal/national/us-est90int-07-1995.csv",header=FALSE,skip=3,sep=",")
July1995US<-subset(All1995US,All1995US$V1=="July 1, 1995")
July1995SexRatio<-July1995US$V4[2:102]/July1995US$V5[2:102]

#"INTERCENSAL ESTIMATES OF THE UNITED STATES RESIDENT POPULATION BY AGE AND SEX: 1990"
All1999US<-read.table(file="https://www2.census.gov/programs-surveys/popest/tables/1990-2000/intercensal/national/us-est90int-07-1999.csv",header=FALSE,skip=3,sep=",")
July1999US<-subset(All1999US,All1999US$V1=="July 1, 1999")
July1999SexRatio<-July1999US$V4[2:102]/July1999US$V5[2:102]

#FROM US CENSUS BUREAU 2000 TO 2010 INTERCENSAL DATA SETS DIRECTORY (NEED MORE INFO, BUT I THINK CORRECT/RESIDENT)
All2000US<-read.table(file="https://www2.census.gov/programs-surveys/popest/datasets/2000-2010/intercensal/national/us-est00int-alldata.csv",header=FALSE,skip=3,sep=",")
July2000US<-subset(All2000US,c(All2000US$V1==7,All2000US$V2==2000))
July2000SexRatio<-July2000US$V5[2:87]/July2000US$V6[2:87]

#FROM US CENSUS BUREAU 2000 TO 2010 INTERCENSAL DATA SETS DIRECTORY (NEED MORE INFO, BUT I THINK CORRECT/RESIDENT)
All2005US<-read.table(file="https://www2.census.gov/programs-surveys/popest/datasets/2000-2010/intercensal/national/us-est00int-alldata.csv",header=FALSE,skip=3,sep=",")
July2005US<-subset(All2005US,c(All2005US$V2==2005))
July2005SexRatio<-July2005US$V5[2:87]/July2005US$V6[2:87]

#FROM US CENSUS BUREAU 2000 TO 2010 INTERCENSAL DATA SETS DIRECTORY (NEED MORE INFO, BUT I THINK CORRECT/RESIDENT)
All2009US<-read.table(file="https://www2.census.gov/programs-surveys/popest/datasets/2000-2010/intercensal/national/us-est00int-alldata.csv",header=FALSE,skip=3,sep=",")
July2009US<-subset(All2009US,c(All2009US$V2==2009))
July2009SexRatio<-July2009US$V5[2:87]/July2009US$V6[2:87]
lines(July2009SexRatio[16:60],col=9)

#"ANNUAL ESTIMATES OF THE RESIDENT POPULATION BY SINGLE YEAR OF AGE AND SEX FOR THE UNITED STATES: APRIL 1, 2010 TO JULY 1, 2018 (NC-EST2018-AGESEX-RES)"
All2010US<-read.table(file="https://www2.census.gov/programs-surveys/popest/technical-documentation/file-layouts/2010-2018/nc-est2018-agesex-res.csv",header=TRUE,sep=",")
July2010USMale<-subset(All2010US$POPESTIMATE2010,c(All2010US$SEX==1))
July2010USFemale<-subset(All2010US$POPESTIMATE2010,c(All2010US$SEX==2))
July2010SexRatio<-July2010USMale/July2010USFemale

#"ANNUAL ESTIMATES OF THE RESIDENT POPULATION BY SINGLE YEAR OF AGE AND SEX FOR THE UNITED STATES: APRIL 1, 2010 TO JULY 1, 2018 (NC-EST2018-AGESEX-RES)"
All2015US<-read.table(file="https://www2.census.gov/programs-surveys/popest/technical-documentation/file-layouts/2010-2018/nc-est2018-agesex-res.csv",header=TRUE,sep=",")
July2015USMale<-subset(All2015US$POPESTIMATE2015,c(All2015US$SEX==1))
July2015USFemale<-subset(All2015US$POPESTIMATE2015,c(All2015US$SEX==2))
July2015SexRatio<-July2015USMale/July2015USFemale

#GRAPH
plot(July1970SexRatio[16:60],type="l",axes=FALSE,ylab="sex ratio",xlab="age",ylim=c(.8,1.1))
#lines(July1975SexRatio[16:60],col=2)
#lines(July1979SexRatio[16:60],col=3)
lines(July1980SexRatio$x[16:60],col=4)
#lines(July1985SexRatio$x[16:60],col=5)
#lines(July1989SexRatio$x[16:60],col=6)
lines(July1990SexRatio[16:60],col=7)
#lines(July1995SexRatio[16:60],col=8)
#lines(July1999SexRatio[16:60],col=9)
lines(July2000SexRatio[16:60],col=10)
#lines(July2005SexRatio[16:60],col=11)
#lines(July2009SexRatio[16:60],col=12)
lines(July2010SexRatio[16:60],col=13)
#lines(July2015SexRatio[16:60],col=14)
axis(side=1,at=1:45,labels=c(15:59),cex.axis=.75)
axis(side=2)
legend("topright",legend=c("1970","1980","1990","2000","2010"),col=c(1,4,7,10,13),lty=1)
title("Sex ratios, selected ages and years, USA resident")
mtext(side=1,line=4,adj=-.75,text=paste(c("Source: U.S. Census Bureau resident estimates. More info at github.com/edyhsgr/USSexRatiosByAge.")),cex=.75)

