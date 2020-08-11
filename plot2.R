
power = read.csv.sql("/Applications/уроки/R programming/exploratory data analysis/household_power_consumption.txt", header = T, sep = ';',
                     sql = 'select * from file where Date="1/2/2007" or Date="2/2/2007"')

power$NewDate = strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S", tz = ' ')
Sys.setlocale("LC_TIME", "C")


with(power, plot(NewDate, Global_active_power, type='l', xlab=' ', ylab = 'Global Active Power (kilowatts)'))
