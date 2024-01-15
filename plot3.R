# reading data
# please note the location of data file is relative
data <- read.csv("~/Desktop/JH_DataScience/4_Exploratory Data Analysis/Week 1/project/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")
df <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
df$DateTime <- paste(df$Date, df$Time)
df$DateTime <- strptime(df$DateTime, format = "%d/%m/%Y %H:%M:%S", tz="CET")
df <- df %>% select(DateTime, everything()) %>% select(-Date, -Time)

# plot into png device
png(filename = "plot3.png")
with(df, plot(DateTime, Sub_metering_1, type='l',ylab = "Energy sub metering"))
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=2, col=c("black","red", "blue"))
dev.off()