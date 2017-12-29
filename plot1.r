plot1 <- function(){
  source("load.r")
  c <- load()
  png("plot1.png",width=400,height=400)
  
  hist(c$Global_active_power,main="Global Active Power",
                             xlab="Global Active Power (kilowatts)",
                             ylab="Frequency",
                             col="red")
  dev.off() 
  }