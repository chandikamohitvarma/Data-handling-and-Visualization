# Dataset
Order_ID <- 1:5
Items_Ordered <- c(2,5,3,4,2)
Bill_Amount <- c(25,60,35,50,20)
Dining_Type <- c("Dine-In","Takeaway","Dine-In","Delivery","Takeaway")

# 1. Histogram
hist(Bill_Amount,
     col="skyblue",
     main="Bill Amount Distribution",
     xlab="Bill Amount")

# 2. Pie Chart
pie(table(Dining_Type),
    col=rainbow(length(unique(Dining_Type))),
    main="Dining Type Distribution")

# 3. Bar Chart
barplot(Items_Ordered,
        names.arg=Order_ID,
        col="orange",
        xlab="Order ID",
        ylab="Items Ordered",
        main="Items Ordered by Order")

# 4. Scatter Plot
plot(Items_Ordered, Bill_Amount,
     pch=19,
     col="blue",
     xlab="Items Ordered",
     ylab="Bill Amount",
     main="Items Ordered vs Bill Amount")
abline(lm(Bill_Amount ~ Items_Ordered), col="red", lwd=2)̥