#loading libraries

library("ggplot2")
library("grid")
library("gridExtra")

# loading age_group dataset
age_group <- read.csv("~/Desktop/VMupparaju_HomeWork4/age_group.csv")

# barplots for age group 
g1 <- ggplot(age_group) + aes(y = population, x = year, fill = age_group ) + geom_bar(stat = "identity") + labs(title = "Totale Population 18+")
g2 <- ggplot(age_group) + aes(y = citizen , x = year, fill = age_group) + geom_bar(stat = "identity") + labs(title = "Totale Citizens 18+")
g3 <- ggplot(age_group) + aes(y = registered, x = year, fill = age_group) + geom_bar(stat = "identity") + labs(title = "Total Registered 18+")
g4 <- ggplot(age_group) + aes(y = voted, x = year, fill = age_group) + geom_bar(stat = "identity") + labs(title = "Total Voted 18+")

grid.arrange(g1, g2, g3, g4, ncol=2)



#race 
race <- read.csv("~/Desktop/VMupparaju_HomeWork4/race.csv")
race <- data.frame(race)


r1 <- ggplot(race) + aes(y = population, x = year, fill = race ) + geom_bar(stat = "identity") + labs(title = "Totale Population 18+")
r2 <- ggplot(race) + aes(y = citizen , x = year, fill = race) + geom_bar(stat = "identity") + labs(title = "Totale Citizens 18+")
r3 <- ggplot(race) + aes(y = registered, x = year, fill = race) + geom_bar(stat = "identity") + labs(title = "Total Registered 18+")
r4 <- ggplot(race) + aes(y = voted, x = year, fill = race) + geom_bar(stat = "identity") + labs(title = "Total Voted 18+")

grid.arrange(r1, r2, r3, r4, ncol=2)




#Voter Turnout Line Graph 
Voterturnout_IL <- read.csv("~/Desktop/VMupparaju_HomeWork4/Voterturnout_IL.csv")

vtil <- data.frame(Voterturnout_IL)


# Create Line Chart
plot(vtil$YEAR,vtil$Voter.Turnout.Percentage,type = "o", col = "red", xlab = "Year", ylab = "Voter Turnout percentage",
     main = "Illinois Voter turnout percentage")



# normal distribution 

dataset_2 <- read.csv("~/Desktop/VMupparaju_HomeWork4/avecountyvotes.csv")
avg <- data.frame(dataset_2)

x <- sum(avg$D_AVG+avg$R_AVG+avg$O_AVG)

pnorm(x, mean = mean(avg$D_AVG), sd= sd(avg$D_AVG), lower.tail=FALSE )
pnorm(x, mean = mean(avg$R_AVG), sd= sd(avg$R_AVG), lower.tail=FALSE ) 
pnorm(x, mean = mean(avg$O_AVG), sd= sd(avg$O_AVG), lower.tail=FALSE )