# Dataset
Booking_ID <- 1:5
Stay_Nights <- c(2,5,3,7,4)
Guests <- c(2,4,1,3,2)
Room_Type <- c("Standard","Deluxe","Standard","Suite","Deluxe")

# 1. Histogram
hist(Stay_Nights,
     col="pink",
     main="Stay Nights Distribution",
     xlab="Stay Nights")

# 2. Pie Chart
pie(table(Room_Type),
    col=rainbow(3),
    main="Room Type Distribution")

# 3. Bar Chart
barplot(Guests,
        names.arg=Booking_ID,
        col="skyblue",
        xlab="Booking ID",
        ylab="Guests",
        main="Guests per Booking")

# 4. Scatter Plot
plot(Guests, Stay_Nights,
     pch=19,
     col="darkgreen",
     xlab="Guests",
     ylab="Stay Nights",
     main="Guests vs Stay Nights")
abline(lm(Stay_Nights~Guests), col="red")̥