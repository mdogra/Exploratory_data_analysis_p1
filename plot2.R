hpc=read.table("hpc.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
hpc2 = hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]
gap=as.numeric(hpc2$Global_active_power)
dtime = strptime(paste(hpc2$Date, hpc2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(dtime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()