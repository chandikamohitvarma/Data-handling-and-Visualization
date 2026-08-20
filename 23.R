# Dataset
Passenger_ID <- 1:5
Age <- c(28,45,33,52,39)
Flight_Hours <- c(2,8,5,10,6)
Satisfaction <- c("High","Medium","High","Low","Medium")

# 1. Histogram
hist(Age,
     col="lightblue",
     main="Passenger Age Distribution",
     xlab="Age")

# 2. Pie Chart
pie(table(Satisfaction),
    col=rainbow(3),
    main="Satisfaction Levels")

# 3. Bar Chart
barplot(Flight_Hours,
        names.arg=Passenger_ID,
        col="lightgreen",
        xlab="Passenger ID",
        ylab="Flight Hours",
        main="Flight Hours")

# 4. Scatter Plot
plot(Age, Flight_Hours,
     pch=19,
     col="red",
     xlab="Age",
     ylab="Flight Hours",
     main="Age vs Flight Hours")
abline(lm(Flight_Hours~Age), col="blue")̥