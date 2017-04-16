out <- read.csv("household_power_consumption.txt",sep=";", header=TRUE,stringsAsFactors=FALSE,dec=".",na.strings = c("?"), colClasses=c("character","character",rep("numeric",7)))
df <- out[out$Date %in% c("1/2/2007","2/2/2007") ,]
write.csv2(df, file = "data.csv", row.names = FALSE)