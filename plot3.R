# loadData.R returns powCData dataframe with the data ready to be plotted
source("loadData.R")

xrange = range(powCData$datetime)
# Sub_metering_1 contains the bigger range, hence taking this range as the y range for plotting
yrange = range(powCData$Sub_metering_1)

# Set device filename
png("plot3.png")

plot(xrange, yrange, type = "n", ylab = "Energy sub metering", xlab = "")

# Add relevant lines to the plot
lines(powCData$datetime, powCData$Sub_metering_1)
lines(powCData$datetime, powCData$Sub_metering_2, col = "red")
lines(powCData$datetime, powCData$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), col = c("black", "red", "blue"))

# Turn off PNG device
dev.off()