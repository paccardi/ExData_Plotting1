#Exploratory Data Analysis Week 1; Plot 1

#point to our data and download it
setwd("C:/Users/Paul/Desktop/DataScienceProg/ExploratoryDataAnalysis")
allData<-read.table("household_power_consumption.txt",header=T,sep=";")
 transform(allData, Date = as.Date(Date))
 transform(allData,Time=strptime(Time))
data<-subset(allData, Date=="1/2/2007" | Date=="2/2/2007")
#plot1
hist(as.numeric(as.character(data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.copy(png, file = "Plot1.png")
dev.off()
