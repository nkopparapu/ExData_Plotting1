
load_consumption_data = function () 
{
  hh_power_cons <- read.csv("~/GitHub/ExData_Plotting1/household_power_consumption.txt", sep=";")
  View(hh_power_cons)
  lct = Sys.getlocale("LC_TIME")
  Sys.setlocale("LC_TIME",lct)
  hh_power_cons$Date = strptime(hh_power_cons$Date,"%d/%m/%Y")
  h = hh_power_cons[hh_power_cons$Date %in% strptime(c("2007-02-01","2007-02-02"), "%Y-%m-%d"),]
  h$DateTime = strptime(paste(h$Date,h$Time), "%Y-%m-%d %H:%M:%S")
  h$Global_active_power = as.numeric(as.character(h$Global_active_power))
  View(h)
  return(h)
}
