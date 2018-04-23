energy_consu <- read.table("~/Downloads/household_power_consumption.txt", header = TRUE, sep =";")
feb_energy <- energy_consu[energy_consu$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()