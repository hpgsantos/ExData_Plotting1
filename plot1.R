out <- read.csv("data/data.csv",sep=";", header=TRUE,stringsAsFactors=FALSE,dec=",",na.strings = c("?"), colClasses=c("character","character",rep("numeric",7)))
df <- out[out$Date %in% c("1/2/2007","2/2/2007") ,]
png("figure/plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()