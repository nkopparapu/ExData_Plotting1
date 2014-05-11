# load the data by calling the load_consumption_data function

source('~/GitHub/ExData_Plotting1/load_data.R')

pwr_cons = load_consumption_data()

# now plot the Global_active_power as a histogram with red color to fill the bars


with(pwr_cons, plot(DateTime, Sub_metering_1, type="n", main="", 
       xlab="", ylab="Energy sub metering"))
with(pwr_cons, lines(DateTime,Sub_metering_1,col="black"))
with(pwr_cons, lines(DateTime,Sub_metering_2,col="red"))
with(pwr_cons, lines(DateTime,Sub_metering_3,col="blue"))
legend("topright", col =c("black","blue","red"), lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# copy the plot to a png file
dev.copy(png,file="plot3.png",width=480,height=480,units="px")
dev.off()
