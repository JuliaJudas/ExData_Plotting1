
power = read.csv.sql("/Applications/уроки/R programming/exploratory data analysis/household_power_consumption.txt", header = T, sep = ';',
                    sql = 'select * from file where Date="1/2/2007" or Date="2/2/2007"')

power$NewDate = strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S", tz = ' ')
Sys.setlocale("LC_TIME", "C")




hist(as.numeric(power$Global_active_power), col='red',  xlab = 'Global Active Power (kilowatts)', main='Global Active Power')
