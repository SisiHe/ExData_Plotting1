setwd("/Users/sisihe/Desktop/Sisi_Personal/Course/Coursera/DataScientist/ExploratoryData/Week1/project1/ExData_Plotting1")
data<-readRDS("data.rds")

data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
data$Sub_metering_3<-as.numeric(data$Sub_metering_3)

quartz()
with(data,plot(date_time,Sub_metering_1,type="l",col="black",ylab="Energy sub metering", xlab=""))
with(data,lines(date_time,Sub_metering_2,col="red"))
with(data,lines(date_time,Sub_metering_3,col="blue"))

legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,file="plot3.png")
dev.off()