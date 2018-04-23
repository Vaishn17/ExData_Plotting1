energy_consu <- read.table("~/Downloads/household_power_consumption.txt", header = TRUE, sep =";")
feb_energy <- energy_consu[energy_consu$Date %in% c("1/2/2007","2/2/2007") ,]

#line plot of global active power vs days (thu, fri, sat)
png("plot2.png", width=480, height=480)
datetime <- strptime(paste(feb_energy$Date, feb_energy$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, as.numeric(feb_energy$Global_active_power), ylab = "Global Active Power (Kilowatts)", xlab = "", type = "l")