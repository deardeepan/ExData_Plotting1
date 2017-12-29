plot4 <- function(){
  
  
  source("load.r")
  c <- load()
  
  png("plot4.png",width=400,height=400)
  par(mfrow = c(2,2))
  ##PLOT 1
  
  plot(c$Time,c$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  #PLOT 2
  plot(c$Time,c$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  #PLOT 3
  plot(c$Time,c$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(c$Time,c$Sub_metering_2,col="red")
  lines(c$Time,c$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
  
  #PLOT 4
  plot(c$Time,c$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  dev.off() 
}