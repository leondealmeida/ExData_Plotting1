source('get_household_data.R')

plot4 <- function(dataset_filename, save_to_png=FALSE) {
    dataset <- get_household_data(dataset_filename)

    par(mfrow=c(2,2))
    with(dataset, {
        plot(Time, Global_active_power, type='l', xlab='', ylab='Global Active Power')

        plot(Time, Voltage, type='l', xlab='datetime')

        plot(Time, Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
        lines(Time, Sub_metering_2, col='red')
        lines(Time, Sub_metering_3, col='blue')
        legend('topright', c('Sub_metering_1 ', 'Sub_metering_2 ', 'Sub_metering_3 '),
            col=c('black', 'red', 'blue'), lwd=1, bty='n')

        plot(Time, Global_reactive_power, type='l', xlab='datetime')
    })

    if (save_to_png) {
        dev.copy(png, 'plot4.png', height=480, width=480)
        r <- dev.off()
    }
}


