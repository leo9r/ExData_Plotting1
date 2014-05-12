plot2 <- function()
{
  loaddata() # defined in the loaddata.R file, also uploaded to the ExData_Plotting1 repository 
  png(filename = "plot2.png", width = 480, height = 480)
  plot(twodays[,c("fulltime", "Global_active_power")], 
       type="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
}