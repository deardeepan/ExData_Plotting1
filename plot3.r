plot3 <- function(){
  source("load.r")
  c <- load()
  png("plot3.png",width=400,height=400)
  
  plot(c$Time,c$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
  lines(c$Time,c$Sub_metering_2,col="red")
  lines(c$Time,c$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
  
  dev.off() 
}