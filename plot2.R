# Read the original data

original_data <- read.csv("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
data <- original_data[(original_data$Date == "1/2/2007") | (original_data$Date == "2/2/2007"),]
data$DateTime <- strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")

# Create a graph for Global Active Power during the two days - Plot 2

png(filename="plot2.png", width = 480, height = 480)
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
