plot1 <- function()
{
  loaddata() # defined in the loaddata.R file, also uploaded to the ExData_Plotting1 repository 
  png(filename = "plot1.png", width = 480, height = 480)
  hist(as.numeric(twodays$Global_active_power), col="red", 
       main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.off()
}