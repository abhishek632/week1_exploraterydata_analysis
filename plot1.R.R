data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
sub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
global_active_power<-as.numeric(sub$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(global_active_power,col="red",main="Global Active Power",xlab="global_active_power in kilowatts")
dev.off()