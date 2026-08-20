# Dataset
Song_ID <- 1:5
Duration <- c(3.5,4.2,3.8,5.0,4.1)
Streams <- c(150,200,180,250,170)
Genre <- c("Pop","Rock","Pop","Hip-Hop","Rock")

# 1. Histogram
hist(Duration,
     col="lightgreen",
     main="Song Duration Distribution",
     xlab="Duration (Minutes)")

# 2. Pie Chart
pie(table(Genre),
    col=rainbow(length(unique(Genre))),
    main="Genre Distribution")

# 3. Bar Chart
avg <- aggregate(Streams ~ Genre, FUN=mean)

barplot(avg$Streams,
        names.arg=avg$Genre,
        col="steelblue",
        xlab="Genre",
        ylab="Average Streams (000s)",
        main="Average Streams by Genre")

# 4. Scatter Plot
plot(Duration, Streams,
     pch=19,
     col="purple",
     xlab="Duration (Minutes)",
     ylab="Streams (000s)",
     main="Duration vs Streams")
abline(lm(Streams ~ Duration), col="red", lwd=2)̥