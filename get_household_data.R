library(data.table)

get_household_data <- function(filename) {
    data <- fread(filename, sep=';', na.strings = '?')
    data <- data[grepl('^[12]/2/2007', Date)]
    data$Time <- as.POSIXct(
        paste(data$Date, data$Time),
        format='%d/%m/%Y %H:%M:%S'
    )
    data$Date <- as.Date(data$Date, format='%d/%m/%Y')


    data
}