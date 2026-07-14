employee <- 1:5
department <- c("Sales","HR","Marketing","Sales","HR")
years <- c(5,3,7,4,2)
performance <- c(85,92,78,90,76)

# 1. Line Chart
plot(employee,
     performance,
     type="o",
     col="blue",
     lwd=2,
     xlab="Employee ID",
     ylab="Performance Score",
     main="Employee Performance")

legend("bottomright",
       legend="Performance",
       col="blue",
       lty=1)

# 2. Bar Chart
dept.freq <- table(department)

barplot(dept.freq,
        col="orange",
        main="Department Distribution",
        xlab="Department",
        ylab="Employees")

# 3. Scatter Plot
plot(years,
     performance,
     pch=19,
     col="red",
     xlab="Years of Service",
     ylab="Performance")

abline(lm(performance~years),
       col="blue",
       lwd=2)̥