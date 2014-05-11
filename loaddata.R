loaddata <- function()
{
  consumptionData <- read.csv("household_power_consumption.txt", stringsAsFactors=FALSE, sep = ";")  
  twodays <<- consumptionData[consumptionData$Date == "1/2/2007" |
                                consumptionData$Date == "2/2/2007",]
  twodays$fulltime <<- paste(twodays$Date, twodays$Time)
  twodays$fulltime <<- strptime(twodays$fulltime, "%d/%m/%Y %H:%M:%S")
}