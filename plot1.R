# loadData.R returns powCData dataframe with the data ready to be plotted
source("loadData.R")

# Set device filename
png("plot1.png")

hist(powCData$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     col = "red")

# Turn off PNG device
dev.off()