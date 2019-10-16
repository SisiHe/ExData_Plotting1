setwd("/Users/sisihe/Desktop/Sisi_Personal/Course/Coursera/DataScientist/ExploratoryData/Week1/project1/ExData_Plotting1")
data<-readRDS("data.rds")

data$Global_active_power<-as.numeric(data$Global_active_power)

quartz()
with(data,plot(date_time,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.copy(png,file="plot2.png")
dev.off()