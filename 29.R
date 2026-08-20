# Dataset
Sample_ID <- 1:5
pH <- c(7.2,6.8,7.5,6.5,7.1)
Turbidity <- c(3,5,2,7,4)
Quality <- c("Good","Fair","Good","Poor","Fair")

# 1. Histogram
hist(pH,
     col="lightblue",
     main="pH Level Distribution",
     xlab="pH Level")

# 2. Pie Chart
pie(table(Quality),
    col=rainbow(length(unique(Quality))),
    main="Water Quality Categories")

# 3. Bar Chart
barplot(Turbidity,
        names.arg=Sample_ID,
        col="orange",
        xlab="Sample ID",
        ylab="Turbidity",
        main="Turbidity by Sample")

# 4. Scatter Plot
plot(pH, Turbidity,
     pch=19,
     col="darkgreen",
     xlab="pH Level",
     ylab="Turbidity",
     main="pH Level vs Turbidity")
abline(lm(Turbidity ~ pH), col="red", lwd=2)̥