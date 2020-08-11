
power <- read.table("/household_power_consumption.txt", 
                    sep=';', header = T)

power <- subset(power, power$Date=="1/2/2007"|power$Date=="2/2/2007")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
power$Time <- strptime(power$Time, format = "%H:%M:%S")

with(power, plot(Time, Sub_metering_1, type='l', ylab='Energy sub metering'))
with(power, lines(Time, Sub_metering_2, col='red'))
with(power, lines(Time, Sub_metering_3, col='blue'))
legend('topright',pch= '-',col=c('black','red','blue'), legend=c( 'Sub_metering_1',' Sub_metering_2',' Sub_metering_3' ))


