source('get_household_data.R')

plot1 <- function(dataset_filename, save_to_png=FALSE) {
    dataset <- get_household_data(dataset_filename)

    hist(
        dataset$Global_active_power,
        main='Global Active Power',
        col='red',
        xlab='Global Active Power (kilowatts)'
    )

    if (save_to_png) {
        dev.copy(png, 'plot1.png', height=480, width=480)
        r <- dev.off()
    }
}