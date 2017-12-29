plot2 <- function(){
  source("load.r")
  c <- load()
 png("plot2.png",width=400,height=400)
  
 plot(c$Time,c$Global_active_power,type="l",xlab="",ylab="Global Active Power(Kilowatts)")
 dev.off() 
}