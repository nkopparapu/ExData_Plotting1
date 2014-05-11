
# load the data by calling the load_consumption_data function

source('~/GitHub/ExData_Plotting1/load_data.R')

pwr_cons = load_consumption_data()

# now plot the Global_active_power as a histogram with red color to fill the bars

#hist(pwr_cons$Global_active_power,main="Global Active Power", col="red")
hist(pwr_cons$Global_active_power,main="Global Active Power",col="red",
     xlab="Global Active Power (kilowatts)")
# copy the plot to a png file
dev.copy(png,file="plot1.png",width=480,height=480,units="px")
dev.off()
