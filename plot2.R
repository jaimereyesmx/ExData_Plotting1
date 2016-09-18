# loadData.R returns powCData dataframe with the data ready to be plotted
source("loadData.R")

# Set device filename
png("plot2.png")

with(powCData, 
     plot(datetime, 
          Global_active_power, 
          type = "l", 
          ylab = "Global Active Power (kilowatts)", 
          xlab =""))

# Turn off PNG device
dev.off()