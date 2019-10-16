#===============================================================================
                        #Setting Up & Load Data
#===============================================================================

setwd("/Users/sisihe/Desktop/Sisi_Personal/Course/Coursera/DataScientist/ExploratoryData/Week1/project1/ExData_Plotting1")
list.files()
#"household_power_consumption 2.txt"

data<-read.table("household_power_consumption 2.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
data$date_time<-paste(data$Date,data$Time)
data$date_time<-strptime(data$date_time,format="%Y-%m-%d %H:%M:%S")

data_sub<-subset(data,subset = Date %in% as.Date(c("2007-02-01","2007-02-02")))
saveRDS(data_sub,"data.rds")
