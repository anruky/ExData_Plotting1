d1 <- read.table("ExData_Plotting1/household_power_consumption.txt",sep=";",header=T,na.strings="?")    

d2=d1[as.character(d1$Date)=="1/2/2007" | as.character(d1$Date)=="2/2/2007",]

d2$day=strptime(paste(as.character(d2$Date),as.character(d2$Time)),format="%d/%m/%Y %H:%M:%S")

##d2$week=format(d2$day,"%a")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

with(d2,
     {plot(day,Global_active_power,xlab="",ylab="Global Active Power",type="l")
      plot(day,Voltage,xlab="datetime",ylab="Voltage",type="l")
      plot(day,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
      points(day,Sub_metering_2,col="red",type="l")
      points(day,Sub_metering_3,col="blue",type="l")
      legend("topright",lty=1:1, col = c("black", "red","blue"), bty="n",cex=0.7,xjust=0,
             legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
      plot(day,Global_reactive_power,xlab="datetime",type="l")
     }
)
      



dev.copy(png, file = "ExData_Plotting1/plot4.png") 
dev.off() 
