#Exploratory Data Analysis Week 1 ; Plot 2

#point to our data and download it
setwd("C:/Users/Paul/Desktop/DataScienceProg/ExploratoryDataAnalysis")
allData<-read.table("household_power_consumption.txt",header=T,sep=";")
 transform(allData, Date = as.Date(Date))
 transform(allData,Time=strptime(Time))
data<-subset(allData, Date=="1/2/2007" | Date=="2/2/2007")

#plot2
plot(as.numeric(as.character(data$Global_active_power)),type="l",ylab="Global Active Power (kilowatts)",xaxt="n")
axis(1,at=c(0,1440,2880),labels=c("Thur","Fri","Sat"))
dev.copy(png, file = "Plot2.png")
dev.off()
