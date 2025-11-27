median(df$GDP)

top50 <- df[order(-df$GDP), ][1:50, ]

bottom50 <- df[order(df$GDP), ][1:50, ]

hist(top50$HappinessScore)

hist(bottom50$HappinessScore)

hist(df$HappinessScore)

cor.test(top50$HappinessScore,top50$GDP, method = "pearson")

cor.test(bottom50$HappinessScore,bottom50$GDP, method = "pearson")
