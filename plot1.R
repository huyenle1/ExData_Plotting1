# Read the original data

original_data <- read.csv("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
data <- original_data[(original_data$Date == "1/2/2007") | (original_data$Date == "2/2/2007"),]
data$DateTime <- strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")

# Create a histogram for Global Active Power - Plot 1
png(filename="plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
