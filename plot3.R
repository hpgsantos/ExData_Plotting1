out <- read.csv("data/data.csv",sep=";", header=TRUE,stringsAsFactors=FALSE,dec=",",na.strings = c("?"), colClasses=c("character","character",rep("numeric",7)))
df <- out[out$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("figure/plot3.png", width=505, height=505)
plot(dt, df$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
lines(dt, df$Sub_metering_2, type="l", col="red")
lines(dt, df$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()