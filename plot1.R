
power <- read.table("/household_power_consumption.txt", 
                    sep=';', header = T)

power <- subset(power, power$Date=="1/2/2007"|power$Date=="2/2/2007")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
power$Time <- strptime(power$Time, format = "%H:%M:%S")



hist(as.numeric(power$Global_active_power), col='red',  xlab = 'Global Active Power (not kilowatts)')
