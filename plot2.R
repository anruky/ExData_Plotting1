d1 <- read.table("ExData_Plotting1/household_power_consumption.txt",sep=";",header=T,na.strings="?")    

d2=d1[as.character(d1$Date)=="1/2/2007" | as.character(d1$Date)=="2/2/2007",]

d2$day=strptime(paste(as.character(d2$Date),as.character(d2$Time)),format="%d/%m/%Y %H:%M:%S")

d2$week=format(d2$day,"%a")

with(d2,plot(day,Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type="l"))


dev.copy(png, file = "ExData_Plotting1/plot2.png") 
dev.off() 
