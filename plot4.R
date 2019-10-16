setwd("/Users/sisihe/Desktop/Sisi_Personal/Course/Coursera/DataScientist/ExploratoryData/Week1/project1/ExData_Plotting1")
data<-readRDS("data.rds")

data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
data$Sub_metering_3<-as.numeric(data$Sub_metering_3)
data$Global_active_power<-as.numeric(data$Global_active_power)
data$Voltage<-as.numeric(data$Voltage)
data$Global_reactive_power<-as.numeric(data$Global_reactive_power)

quartz()
par(mfrow=c(2,2))

#plot1
with(data,plot(date_time,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=""))

#plot2
with(data,plot(date_time,Voltage,type="l",ylab="Voltage",xlab="datetime"))

#plot3
with(data,plot(date_time,Sub_metering_1,type="l",col="black",ylab="Energy sub metering", xlab=""))
with(data,lines(date_time,Sub_metering_2,col="red"))
with(data,lines(date_time,Sub_metering_3,col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#Plot4
with(data,plot(date_time,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power"))

dev.copy(png,file="plot4.png")
dev.off()