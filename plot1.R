# reading data
# please note the location of data file is relative
data <- read.csv("~/Desktop/JH_DataScience/4_Exploratory Data Analysis/Week 1/project/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")
df <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# plot into png device
png(filename = "plot1.png")
hist(df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()