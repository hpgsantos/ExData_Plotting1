out <- read.csv("data/data.csv",sep=";", header=TRUE,stringsAsFactors=FALSE,dec=",",na.strings = c("?"), colClasses=c("character","character",rep("numeric",7)))
df <- out[out$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("figure/plot2.png", width=480, height=480)
plot(dt, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()