# 980153 Kenji Miyazaki

df <- read.csv("6_1_income.csv")

# 問
mean(df$yeduc)
mean(df$income)
# 問2
var(cars$dist)


plot(df$yeduc,df$income)
model <- lm(income ~ yeduc, data = df)
summary(model)
abline(model, col="red")
