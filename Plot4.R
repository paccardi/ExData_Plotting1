#Exploratory Data Analysis Week 1 ; Plot 4

#point to our data and download it
setwd("C:/Users/Paul/Desktop/DataScienceProg/ExploratoryDataAnalysis")
allData<-read.table("household_power_consumption.txt",header=T,sep=";")
 transform(allData, Date = as.Date(Date))
 transform(allData,Time=strptime(Time))
data<-subset(allData, Date=="1/2/2007" | Date=="2/2/2007")

#plot4
par(mfrow=c(2,2))
with(data, {
	plot(as.numeric(as.character(Global_active_power)),type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
	axis(1,at=c(0,1440,2880),labels=c("Thur","Fri","Sat"))
	plot(as.numeric(as.character(Voltage)),type="l",ylab="Voltage",xlab="datetime",xaxt="n")
	axis(1,at=c(0,1440,2880),labels=c("Thur","Fri","Sat"))
	plot(as.numeric(as.character(Sub_metering_1)),ylab="Energy sub metering",xlab="",type = "l",xaxt="n")
	lines(as.numeric(as.character(Sub_metering_2)), col="red", type = "l")
	lines(as.numeric(as.character(Sub_metering_3)), col="blue",type = "l")
	legend("topright", pch = "-", col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
	axis(1,at=c(0,1440,2880),labels=c("Thur","Fri","Sat"))
	plot(as.numeric(as.character(Global_reactive_power)),type="l",ylab="Global_reactive_power",xlab="datetime",xaxt="n")
	axis(1,at=c(0,1440,2880),labels=c("Thur","Fri","Sat"))
})
dev.copy(png, file = "Plot4.png")
dev.off()