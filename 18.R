Age <- c(19,21,20,22,23)
Study_Hours <- c(12,8,15,10,7)
Attendance <- c(90,70,95,85,60)
Test_Score <- c(85,70,92,80,65)
Participation_Score <- c(8,7,9,8,6)

# 1. Stacked Area Chart
matplot(cbind(Test_Score,
              Participation_Score),
        type="l",
        lwd=2,
        lty=1,
        col=c("blue","red"),
        main="Scores Trend",
        xlab="Student",
        ylab="Score")

legend("topleft",
       legend=c("Test","Participation"),
       col=c("blue","red"),
       lty=1)

# 2. Boxplot
quartile <- cut(Attendance,
                breaks=quantile(Attendance,
                                probs=seq(0,1,0.25)),
                include.lowest=TRUE)

boxplot(Study_Hours~quartile,
        col=rainbow(4),
        main="Study Hours by Attendance Quartile",
        xlab="Attendance Quartile",
        ylab="Study Hours")

# 3. Density Plot
plot(density(Test_Score),
     col="blue",
     lwd=2,
     main="Density Plot of Test Scores")