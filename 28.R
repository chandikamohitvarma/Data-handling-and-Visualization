# Dataset
Post_ID <- 1:5
Likes <- c(120,200,150,300,180)
Comments <- c(15,30,20,40,25)
Shares <- c(10,20,12,35,18)

# 1. Histogram
hist(Likes,
     col="pink",
     main="Likes Distribution",
     xlab="Likes")

# 2. Pie Chart
engagement <- c(sum(Likes), sum(Comments), sum(Shares))
labels <- c("Likes","Comments","Shares")

pie(engagement,
    labels=labels,
    col=c("skyblue","orange","lightgreen"),
    main="Total Engagement")

# 3. Bar Chart
barplot(Comments,
        names.arg=Post_ID,
        col="cyan",
        xlab="Post ID",
        ylab="Comments",
        main="Comments by Post")

# 4. Scatter Plot
plot(Likes, Shares,
     pch=19,
     col="red",
     xlab="Likes",
     ylab="Shares",
     main="Likes vs Shares")
abline(lm(Shares ~ Likes), col="blue", lwd=2)̥