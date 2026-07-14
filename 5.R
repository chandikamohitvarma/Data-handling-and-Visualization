date <- as.Date(c("2023-01-01",
                  "2023-01-02",
                  "2023-01-03",
                  "2023-01-04",
                  "2023-01-05"))

views <- c(1500,1600,1400,1650,1800)
ctr <- c(2.3,2.7,2.0,2.4,2.6)

# 1. Line Chart
plot(date,
     views,
     type="o",
     col="blue",
     xlab="Date",
     ylab="Page Views",
     main="Website Traffic")

# 2. Bar Chart
barplot(ctr,
        names.arg=date,
        col="pink",
        xlab="Date",
        ylab="CTR (%)",
        main="Click Through Rate")

# 3. Stacked Area Chart
likes <- c(200,250,180,260,300)
shares <- c(80,90,70,85,100)
comments <- c(50,55,45,60,65)

matplot(date,
        cbind(likes,shares,comments),
        type="l",
        lty=1,
        lwd=2,
        col=c("blue","green","red"),
        xlab="Date",
        ylab="Count",
        main="User Interactions")

legend("topleft",
       legend=c("Likes","Shares","Comments"),
       col=c("blue","green","red"),
       lty=1)̥