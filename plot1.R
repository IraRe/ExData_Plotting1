# create the png file
png(filename="plot1.png")
#load and filter the data
all_data<-read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c("?"))
data <- subset(all_data, Date == '1/2/2007' | Date == '2/2/2007')
# make the plot
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
#close the png file
dev.off()
