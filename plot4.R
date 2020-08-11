

power = read.csv.sql("/Applications/уроки/R programming/exploratory data analysis/household_power_consumption.txt", header = T, sep = ';',
                     sql = 'select * from file where Date="1/2/2007" or Date="2/2/2007"')

power$NewDate = strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S", tz = ' ')
Sys.setlocale("LC_TIME", "C")


par(mfrow=c(2,2))
with(power, {
  plot(NewDate, Global_active_power, xlab='', type='l', ylab='Global Active Power')
  plot(NewDate, Voltage, type='l',xlab ='datatime')
  c(with(power, plot(NewDate, Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')),
    with(power, lines(NewDate, Sub_metering_2, col='red')),
    with(power, lines(NewDate, Sub_metering_3, col='blue')),
    legend('topright',pch= '-',col=c('black','red','blue'), legend=c( 'Sub_metering_1',' Sub_metering_2',' Sub_metering_3' )))
  plot(NewDate,Global_reactive_power, type='l', xlab ='datatime')
})