d1 <- read.table("ExData_Plotting1/household_power_consumption.txt",sep=";",header=T,na.strings="?")    

d2=d1[as.character(d1$Date)=="1/2/2007" | as.character(d1$Date)=="2/2/2007",]

d2$day=strptime(paste(as.character(d2$Date),as.character(d2$Time)),format="%d/%m/%Y %H:%M:%S")

##d2$week=format(d2$day,"%a")

with(d2,plot(day,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
with(d2,points(day,Sub_metering_2,col="red",type="l"))
with(d2,points(day,Sub_metering_3,col="blue",type="l"))

legend("topright", col = c("black", "red","blue"),
       lty = 1:1,
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


dev.copy(png, file = "ExData_Plotting1/plot3.png") 
dev.off() 
