# create the png file
png(filename="plot2.png")
# load and filter the data
all_data<-read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c("?"))
data <- subset(all_data, Date == '1/2/2007' | Date == '2/2/2007')
# convert the datetime appropriately
date_time <- paste(data$Date, data$Time)
date_time <- strptime(date_time, format = "%d/%m/%Y %H:%M:%S")
# make the plot
plot(date_time, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
# close the file
dev.off()
