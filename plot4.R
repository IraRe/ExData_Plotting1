png(filename="plot4.png")
all_data<-read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c("?"))
data <- subset(all_data, Date == '1/2/2007' | Date == '2/2/2007')

date_time <- paste(data$Date, data$Time)
date_time <- strptime(date_time, format = "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))

plot(date_time, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
plot(date_time, data$Voltage, type="l", xlab = "datetime", ylab = "Voltage")
plot(date_time, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines(date_time, data$Sub_metering_2, col="red")
lines(date_time, data$Sub_metering_3, col="blue")
legend("topright", pch=c("-","-","-"), col=c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_2"))
plot(date_time, data$Global_reactive_power, type = "l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
