# Dataset
product <- c("Product A","Product B","Product C")
jan <- c(2000,1500,1200)
feb <- c(2200,1800,1400)
mar <- c(2400,1600,1100)

sales <- matrix(c(jan,feb,mar), nrow=3)

# 1. Grouped Bar Chart
barplot(sales,
        beside=TRUE,
        names.arg=product,
        col=c("red","blue","green"),
        xlab="Products",
        ylab="Sales",
        main="Quarterly Product Sales")
legend("topright",
       legend=c("Jan","Feb","Mar"),
       fill=c("red","blue","green"))

# 2. Stacked Area Chart
matplot(t(sales),
        type="l",
        lwd=2,
        lty=1,
        col=1:3,
        xaxt="n",
        xlab="Month",
        ylab="Sales",
        main="Sales Trend")
axis(1, at=1:3, labels=c("Jan","Feb","Mar"))
legend("topleft",
       legend=product,
       col=1:3,
       lty=1)

# 3. Table
data.frame(Product=product,
           January=jan,
           February=feb,
           March=mar)̥