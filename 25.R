# Dataset
User_ID <- 1:5
Steps <- c(7000,10000,8500,12000,6500)
Calories <- c(250,400,320,500,220)
Active_Minutes <- c(40,60,50,75,35)

# 1. Histogram
hist(Steps,
     col="lightgreen",
     main="Daily Steps Distribution",
     xlab="Steps")

# 2. Pie Chart
activity <- cut(Steps,
                breaks=c(0,8000,10000,15000),
                labels=c("Low","Medium","High"))

pie(table(activity),
    col=c("red","yellow","green"),
    main="Activity Level")

# 3. Bar Chart
barplot(Calories,
        names.arg=User_ID,
        col="orange",
        xlab="User ID",
        ylab="Calories Burned",
        main="Calories Burned by User")

# 4. Scatter Plot
plot(Steps, Calories,
     pch=19,
     col="blue",
     xlab="Steps",
     ylab="Calories Burned",
     main="Steps vs Calories")
abline(lm(Calories~Steps), col="red")̥