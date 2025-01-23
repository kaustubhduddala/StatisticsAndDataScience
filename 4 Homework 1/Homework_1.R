# Import and set up

setwd("~/Documents/UT/SDS 313/4 Homework 1")
data <- read.csv('Homework1_Bonds.csv')

# Question 1

amountPassed <- data[data$Result == "Carried",]
amountDefeated <- data[data$Result == "Defeated",]
percentPassedCity <- nrow(data[data$Type == "CITY" & data$Result == "Carried",])/nrow(data[data$Type == "CITY",])*100
percentPassedISD <- nrow(data[data$Type == "ISD" & data$Result == "Carried",])/nrow(data[data$Type == "ISD",])*100
percentPassedWD <- nrow(data[data$Type == "WD" & data$Result == "Carried",])/nrow(data[data$Type == "WD",])*100
percentPassedCounty <- nrow(data[data$Type == "COUNTY" & data$Result == "Carried",])/nrow(data[data$Type == "COUNTY",])*100

# Question 2

data$VotesTotal <- data$VotesFor + data$VotesAgainst

maxVotesRow <- data[which.max(data$VotesTotal),]

maxTurnoutYear <- maxVotesRow$ElectionDate
maxTurnoutLocation <- maxVotesRow$County
maxTurnoutPurpose <- maxVotesRow$Purpose
maxTurnoutDescription <- maxVotesRow$Description

# Question 3

turnoutData <- data[data$VotesTotal >= 100 & data$Result == "Carried",]
turnoutData$percentFor <- turnoutData$VotesFor/turnoutData$VotesTotal*100
boxplot(turnoutData$percentFor,main='Distribution of Votes for Bonds (excluding low voter turnout)',xlab='Percent of Votes In Favor (%)', pch=20, horizontal=TRUE)

# Question 4

hist(turnoutData$percentFor)
plot(turnoutData$Amount,turnoutData$percentFor,main='Margin a Bond was Approved by vs. Cost',xlab='Cost ($)',ylab='Margin Approved By (%)',pch=20)
cor(turnoutData$Amount,turnoutData$percentFor)

