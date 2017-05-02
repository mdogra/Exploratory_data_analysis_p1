datfile <- read.table("hpc.txt", sep=";", header=T, quote="",
                      strip.white=TRUE, stringsAsFactors = F, na.strings = "?")

#Getting the data from only two dates

datfile <- subset(datfile, (datfile$Date == "1/2/2007" | datfile$Date == "2/2007"))

#Plot 1

png("plot1.png", width=480, height=480)

hist(datfile$Global_active_power, col ="red", xlab= "Global Active Power (Kilowatts)", 
ylab="Frequency", main="Global Active Power")


dev.off()
