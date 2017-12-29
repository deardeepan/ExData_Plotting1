load<-function(){
  
  c<-read.table("household_power_consumption.txt",skip=66638,nrows =2879,header=F,sep=";",
                colClasses=c("character","character","numeric","numeric","numeric",
                             "numeric","numeric","numeric","numeric"))
  
  names(c)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  
  c$Time<-strptime(paste(c$Date,c$Time),"%d/%m/%Y %H:%M:%S")   
  
  c$Date<-as.Date(c$Date,"%d/%m/%Y")
  
  return(c)
}