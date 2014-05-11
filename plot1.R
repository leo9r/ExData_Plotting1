plot1 <- function()
{
  loaddata()
  hist(as.numeric(twodays$Global_active_power), col="red", 
       main="Global Active Power", xlab="Global Active Power (kilowatts)")
}