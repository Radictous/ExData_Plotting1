##Plot1
#fileUrl1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl1,destfile="./data/SSDA.zip",mode="wb")
#dir.create("./data/zipdir")
#unzip("./data/SSDA.zip",exdir="./data/zipdir")
hhpc<-read.table("./data/household_power_consumption.txt",header=T,sep=";",na.string="?")
hhpc1<-subset(hhpc,hhpc$ï..Date=="1/2/2007"| hhpc$ï..Date=="2/2/2007")
hhpc1$DateTime<-strptime(paste(hhpc1$ï..Date,hhpc1$Time),format="%d/%m/%Y %H:%M:%S")
hist(hhpc1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
mtext("Plot 1",side=3,line=3,adj=0)
dev.copy(png,"./data/plot1.png")
dev.off()