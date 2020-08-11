
power <- read.table("/household_power_consumption.txt", 
                    sep=';', header = T)


power <- subset(power, power$Date=="1/2/2007"|power$Date=="2/2/2007")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
power$Time <- strptime(power$Time, format = "%H:%M:%S")


with(power, plot(Time, Global_active_power, type='l', ylab = 'Global Active Power ( not kilowatts)'))
