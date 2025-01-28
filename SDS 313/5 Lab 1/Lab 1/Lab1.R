setwd("~/Documents/UT/SDS 313/5 Lab 1/Lab 1")
data <- read.csv('XXXPD5059X_2023_24_AIS_TDS-TCS_19062024.csv')
library(ggplot2)

# Question 1

dataggplot <- ggplot(data)
dataggplot + geom_histogram(aes(x=Slugging))

# Question 2

maxSlugging <- data[which.max(data$Slugging),]
print(maxSlugging)

# Question 3

dataggplot + geom_point(aes(x=Slugging,y=Strike_Outs))
print(cor(data$Slugging, data$Strike_Outs))

# Question 4

powerHitter <- data[data$Home_Runs >= 10,]

# Question 5

notPowerHitter <- data[data$Home_Runs < 10,]

data$Hitter_Type <- ifelse(data$Home_Runs >= 10, "Power Hitter", "Not Power Hitter")

ggplot(data, aes(x = Slugging, y = Strike_Outs, color = Hitter_Type)) + geom_point() + scale_color_manual(values = c("Power Hitter" = "green", "Not Power Hitter" = "red"))

print(cor(powerHitter$Slugging, powerHitter$Strike_Outs))
print(cor(notPowerHitter$Slugging, notPowerHitter$Strike_Outs))