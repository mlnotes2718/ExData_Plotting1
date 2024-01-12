data <- read.csv("~/Desktop/JH_DataScience/4_Exploratory Data Analysis/Week 1/project/household_power_consumption.txt", sep = ";")
df <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
