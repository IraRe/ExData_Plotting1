png(filename="plot3.png")
all_data<-read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c("?"))
data <- subset(all_data, Date == '1/2/2007' | Date == '2/2/2007')

date_time <- paste(data$Date, data$Time)
date_time <- strptime(date_time, format = "%d/%m/%Y %H:%M:%S")

plot(date_time, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines(date_time, data$Sub_metering_2, col="red")
lines(date_time, data$Sub_metering_3, col="blue")
legend("topright", pch=c("-","-","-"), col=c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_2"))

dev.off()
