d1 <- read.table("ExData_Plotting1/household_power_consumption.txt",sep=";",header=T,na.strings="?")    

d2=d1[as.character(d1$Date)=="1/2/2007" | as.character(d1$Date)=="2/2/2007",]

hist(d2$Global_active_power,xlab="Global Active Power(kilowatts)",
     main = "Gloabl Active Power",col="red")

dev.copy(png, file = "ExData_Plotting1/plot1.png") 
dev.off() 
