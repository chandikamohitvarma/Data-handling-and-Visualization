product <- c("A","B","C","D","E")
quantity <- c(250,175,300,200,220)

# 1. Bar Chart
barplot(quantity,
        names.arg=product,
        col="lightgreen",
        xlab="Product",
        ylab="Quantity",
        main="Inventory Quantity")

# 2. Stacked Bar Chart
category <- c("Cat1","Cat1","Cat2","Cat2","Cat3")

tab <- table(category, product)

barplot(tab,
        col=rainbow(nrow(tab)),
        legend=rownames(tab),
        main="Stacked Product Categories")

# 3. Scatter Plot
price <- c(20,15,18,25,22)

plot(price,
     quantity,
     pch=19,
     col="purple",
     xlab="Price",
     ylab="Quantity")

abline(lm(quantity~price),
       col="red")̥