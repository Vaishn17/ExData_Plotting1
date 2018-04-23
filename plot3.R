energy_consu <- read.table("~/Downloads/household_power_consumption.txt", header = TRUE, sep =";")
feb_energy <- energy_consu[energy_consu$Date %in% c("1/2/2007","2/2/2007") ,]

#line plot of global active power vs days (thu, fri, sat)
png("plot3.png", width=480, height=480)
datetime <- strptime(paste(feb_energy$Date, feb_energy$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, as.numeric(feb_energy$Sub_metering_1), ylab="Energy Submetering", xlab="", type = "l")
lines(datetime,as.numeric(feb_energy$Sub_metering_2) , type="l", col="red")
lines(datetime,as.numeric(feb_energy$Sub_metering_3) , type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))