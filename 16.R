# Dataset
patient <- c("P1","P2","P3","P4","P5")
Age <- c(25,40,55,35,60)
BMI <- c(22,28,30,26,32)
BP <- c(120,135,145,130,150)
Cholesterol <- c(180,210,240,200,260)

# 1. Scatterplot Matrix
data <- data.frame(Age,BMI,BP,Cholesterol)
pairs(data,
      main="Scatterplot Matrix",
      col="blue",
      pch=19)

# 2. Q-Q Plot and ECDF
qqnorm(Cholesterol,
       main="Q-Q Plot of Cholesterol")
qqline(Cholesterol,
       col="red")

plot(ecdf(Cholesterol),
     main="ECDF of Cholesterol",
     xlab="Cholesterol",
     ylab="ECDF")

# 3. Average Health Indicators
avg <- colMeans(data)

barplot(avg,
        col=c("skyblue","lightgreen","orange","pink"),
        main="Average Health Indicators",
        ylab="Average Value",
        xlab="Indicators")̥