# Dataset
Movie_ID <- c(1,2,3,4,5)
Genre <- c("Action","Comedy","Drama","Action","Comedy")
Rating <- c(4.5,3.8,4.2,4.7,3.5)
Duration <- c(120,90,140,130,95)

# 1. Histogram
hist(Rating,
     col="skyblue",
     main="Movie Ratings Distribution",
     xlab="Rating")

# 2. Pie Chart
pie(table(Genre),
    col=rainbow(length(unique(Genre))),
    main="Genre Distribution")

# 3. Bar Chart
avg <- aggregate(Rating~Genre, FUN=mean)
barplot(avg$Rating,
        names.arg=avg$Genre,
        col="orange",
        xlab="Genre",
        ylab="Average Rating",
        main="Average Ratings by Genre")

# 4. Scatter Plot
plot(Duration, Rating,
     pch=19,
     col="blue",
     xlab="Duration (Min)",
     ylab="Rating",
     main="Duration vs Rating")
abline(lm(Rating~Duration), col="red")̥