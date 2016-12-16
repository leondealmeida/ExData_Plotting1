source('get_household_data.R')

plot2 <- function(dataset_filename, save_to_png=FALSE) {
    dataset <- get_household_data(dataset_filename)

    with(dataset,
        plot(Time, Global_active_power,
            type='l',
            xlab='',
            ylab='Global Active Power (killowatts)'
        )
    )

    if (save_to_png) {
        dev.copy(png, 'plot2.png', height=480, width=480)
        r <- dev.off()
    }
}