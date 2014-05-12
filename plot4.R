plot4 <- function()
{
  loaddata() 
  png(filename = "plot4.png", width = 480, height = 480)
  par(mfrow=c(2,2))
  plot(twodays[,c("fulltime", "Global_active_power")], 
       type="l", ylab="Global Active Power (kilowatts)", xlab="")
  
  plot(twodays[,c("fulltime", "Voltage")], type="l", 
            ylab="Voltage",xlab = "datetime")
  
  plot(twodays[,c("fulltime", "Sub_metering_1")], type="l", 
       ylab="Energy sub metering", xlab="", col="black")
  lines(twodays[,c("fulltime", "Sub_metering_2")], col="red")
  lines(twodays[,c("fulltime", "Sub_metering_3")], col="blue")  
  legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
         lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
  
  plot(twodays[,c("fulltime", "Global_reactive_power")], type="l", 
       ylab="Global_reactive_power",xlab = "datetime")
  dev.off()
}