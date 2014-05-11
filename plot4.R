# load the data by calling the load_consumption_data function

source('~/GitHub/ExData_Plotting1/load_data.R')

pwr_cons = load_consumption_data()

# now plot the Global_active_power as a histogram with red color to fill the bars

par(mfrow=c(2,2))

with(pwr_cons, {
  plot(DateTime, Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
  plot(DateTime, Voltage,type="l", xlab="datetime", ylab="Voltage")
  plot(DateTime, Sub_metering_1, type="l", main="", 
                      xlab="", ylab="Energy sub metering") 
  with(pwr_cons, lines(DateTime,Sub_metering_1,col="black"))
  with(pwr_cons, lines(DateTime,Sub_metering_2,col="red"))
  with(pwr_cons, lines(DateTime,Sub_metering_3,col="blue"))
  legend("topright", col =c("black","blue","red"), lty=1,cex=0.3,
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(DateTime, Global_reactive_power,type="l", xlab="datetime", ylab="Global Rective Power")
  
  mtext("", outer = FALSE)
})

# copy the plot to a png file
dev.copy(png,file="plot4.png",width=480,height=480,units="px")
dev.off()
