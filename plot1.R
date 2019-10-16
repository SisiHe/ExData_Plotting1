setwd("/Users/sisihe/Desktop/Sisi_Personal/Course/Coursera/DataScientist/ExploratoryData/Week1/project1/ExData_Plotting1")
data<-readRDS("data.rds")

data$Global_active_power<-as.numeric(data$Global_active_power)
quartz()
hist(data$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()
