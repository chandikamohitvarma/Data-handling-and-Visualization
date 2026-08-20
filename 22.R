# Dataset
User_ID <- 1:5
Books <- c(2,5,3,6,1)
Days <- c(10,25,14,30,7)
Fine <- c(0,15,0,20,0)

# 1. Histogram
hist(Books,
     col="lightgreen",
     main="Books Borrowed",
     xlab="Books")

# 2. Pie Chart
status <- ifelse(Fine>0,"Fine","No Fine")
pie(table(status),
    col=c("tomato","lightblue"),
    main="Fine Status")

# 3. Bar Chart
barplot(Fine,
        names.arg=User_ID,
        col="gold",
        xlab="User ID",
        ylab="Fine Amount",
        main="Fine Amount by User")

# 4. Scatter Plot
plot(Days, Fine,
     pch=19,
     col="purple",
     xlab="Days Kept",
     ylab="Fine Amount",
     main="Days Kept vs Fine")
abline(lm(Fine~Days), col="red")̥