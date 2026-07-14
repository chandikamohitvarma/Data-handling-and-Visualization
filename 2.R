# Load Libraries
library(ggplot2)
library(dplyr)
library(wordcloud)
library(RColorBrewer)

#-----------------------------
# Customer Satisfaction Dataset
#-----------------------------
customer_data <- data.frame(
  CustomerID = c(1,2,3,4,5),
  Age = c(25,30,35,28,40),
  Satisfaction = c(4,5,3,4,5)
)

# Sample Customer Feedback
feedback <- c(
  "Excellent service and friendly staff",
  "Very satisfied with product quality",
  "Good service but delivery was slow",
  "Excellent support and quick response",
  "Satisfied with the overall experience"
)

#-----------------------------
# 1. Histogram of Customer Ages
#-----------------------------
ggplot(customer_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Customer Ages",
    x = "Age",
    y = "Frequency"
  )

#-----------------------------
# 2. Pie Chart of Satisfaction Scores
#-----------------------------
pie_data <- customer_data %>%
  count(Satisfaction)

pie(
  pie_data$n,
  labels = paste("Score", pie_data$Satisfaction),
  col = rainbow(nrow(pie_data)),
  main = "Customer Satisfaction Distribution"
)

#-----------------------------
# 3. Stacked Bar Chart
#-----------------------------
customer_data$AgeGroup <- cut(
  customer_data$Age,
  breaks = c(20,30,40,50),
  labels = c("21-30","31-40","41-50"),
  include.lowest = TRUE
)

ggplot(customer_data,
       aes(x = AgeGroup,
           fill = factor(Satisfaction))) +
  geom_bar() +
  labs(
    title = "Customer Satisfaction by Age Group",
    x = "Age Group",
    y = "Count",
    fill = "Satisfaction"
  )

#-----------------------------
# 4. Word Cloud
#-----------------------------
text <- paste(feedback, collapse = " ")

wordcloud(
  words = strsplit(text, " ")[[1]],
  freq = table(strsplit(tolower(text), " ")[[1]]),
  min.freq = 1,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)̥