Age <- c(25,40,35,50,29)
Waiting_Time <- c(2,5,1,7,3)
Status <- c("Attended","Missed","Attended","Missed","Attended")

# 1. Histogram
hist(Age,
     col="lightgreen",
     main="Patient Age Distribution",
     xlab="Age")

# 2. Pie Chart
pie(table(Status),
    col=c("skyblue","orange"),
    main="Appointment Status")

# 3. Bar Chart
barplot(Waiting_Time,
        names.arg=paste("P",1:5,sep=""),
        col="pink",
        main="Waiting Time by Patient",
        xlab="Patient",
        ylab="Days")

# 4. Scatter Plot
plot(Age,
     Waiting_Time,
     pch=19,
     col="red",
     xlab="Age",
     ylab="Waiting Time",
     main="Age vs Waiting Time")

abline(lm(Waiting_Time~Age),
       col="blue")̥