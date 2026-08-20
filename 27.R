# Dataset
Plant_ID <- 1:5
Output <- c(120,150,100,170,110)
Temperature <- c(65,70,60,75,62)
Status <- c("Active","Active","Maintenance","Active","Maintenance")

# 1. Histogram
hist(Output,
     col="lightgreen",
     main="Power Output Distribution",
     xlab="Output (MW)")

# 2. Pie Chart
pie(table(Status),
    col=c("green","red"),
    main="Plant Status")

# 3. Bar Chart
barplot(Temperature,
        names.arg=Plant_ID,
        col="gold",
        xlab="Plant ID",
        ylab="Temperature",
        main="Temperature by Plant")

# 4. Scatter Plot
plot(Output, Temperature,
     pch=19,
     col="purple",
     xlab="Output (MW)",
     ylab="Temperature",
     main="Output vs Temperature")
abline(lm(Temperature ~ Output), col="blue", lwd=2)̥