plot2 <- function()
{
  loaddata()  
  plot(twodays[,c("fulltime", "Global_active_power")], 
       type="l", ylab="Global Active Power (kilowatts)", xlab="")
}