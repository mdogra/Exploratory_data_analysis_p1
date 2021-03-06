hpc=read.table("hpc.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
hpc2 = hpc[hpc$Date %in% c("1/2/2007","2/2/2007"), ]
gap=as.numeric(hpc2$Global_active_power)
grp=as.numeric(hpc2$Global_reactive_power)
voltage=as.numeric(hpc2$Voltage)
dtime = strptime(paste(hpc2$Date, hpc2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
subMetering1=as.numeric(hpc2$Sub_metering_1)
subMetering2=as.numeric(hpc2$Sub_metering_2)
subMetering3=as.numeric(hpc2$Sub_metering_3)
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(dtime,gap,type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(dtime, gap, type="l", xlab="datetime", ylab="voltage")
plot(dtime, subMetering1, type = "l", ylab="Energy Submetering", xlab="")
lines(dtime, subMetering2, type = "l", col="red")
lines(dtime, subMetering3, type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(dtime, grp, type = "l", xlab="datetime", ylab="Global_reactive_power")
dev.off()