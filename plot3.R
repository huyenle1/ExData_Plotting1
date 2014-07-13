# Read the original data

original_data <- read.csv("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
data <- original_data[(original_data$Date == "1/2/2007") | (original_data$Date == "2/2/2007"),]
data$DateTime <- strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")

# Create a graph for Energy sub metering - Plot 3

png(filename="plot3.png", width = 480, height = 480)
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

