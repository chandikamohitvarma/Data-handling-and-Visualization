library(ggplot2)

data <- read.csv("Mobile_App_Usage.csv")

# 1. Histogram + Density
hist(data$Screen_Time,
     prob=TRUE,
     col="lightblue",
     main="Screen Time Distribution",
     xlab="Screen Time")

lines(density(data$Screen_Time),
      col="red",
      lwd=2)

# 2. Scatter Plot + Correlation
plot(data$Data_Used,
     data$Screen_Time,
     pch=19,
     col="blue",
     xlab="Data Used",
     ylab="Screen Time",
     main="Data Used vs Screen Time")

abline(lm(Screen_Time~Data_Used,
          data=data),
       col="red")

cor(data$Data_Used,
    data$Screen_Time)

# 3. Average Satisfaction
avg <- aggregate(Satisfaction~Gender,
                 data,
                 mean)

barplot(avg$Satisfaction,
        names.arg=avg$Gender,
        col=c("pink","lightblue"),
        main="Average Satisfaction")

text(1:2,
     avg$Satisfaction,
     labels=round(avg$Satisfaction,2),
     pos=3)̥