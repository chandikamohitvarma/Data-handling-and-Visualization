# Load Libraries
library(ggplot2)
library(plotly)
library(shiny)

# -----------------------------
# Monthly Sales Data
# -----------------------------
months <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

sales_data <- data.frame(Month = months, Sales = sales)

# Sample Product Sales Data
products <- c("Laptop", "Phone", "Tablet", "Headphones", "Watch")
product_sales <- c(120, 200, 90, 150, 80)

product_data <- data.frame(Product = products, UnitsSold = product_sales)

# Sample Advertising Budget Data
advertising_budget <- c(3000, 4000, 5000, 4500, 6000)

scatter_data <- data.frame(
  Advertising = advertising_budget,
  Sales = sales
)

# -----------------------------
# 1. Line Chart
# -----------------------------
ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Monthly Sales",
       x = "Month",
       y = "Sales ($)")

# -----------------------------
# 2. Bar Chart
# -----------------------------
ggplot(product_data, aes(x = Product, y = UnitsSold, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Top Selling Products",
       x = "Products",
       y = "Units Sold") +
  theme(legend.position = "none")

# -----------------------------
# 3. Scatter Plot
# -----------------------------
ggplot(scatter_data, aes(x = Advertising, y = Sales)) +
  geom_point(color = "darkgreen", size = 4) +
  labs(title = "Advertising Budget vs Monthly Sales",
       x = "Advertising Budget ($)",
       y = "Monthly Sales ($)")

cat("\nInsight:\n")
cat("The scatter plot shows a positive relationship between advertising budget and monthly sales.\n")
cat("As advertising budget increases, monthly sales generally increase.\n")

# -----------------------------
# 4. Interactive Dashboard
# -----------------------------
ui <- fluidPage(
  titlePanel("Monthly Sales Dashboard"),
  
  fluidRow(
    column(6, plotlyOutput("linePlot")),
    column(6, plotlyOutput("barPlot"))
  )
)

server <- function(input, output) {
  
  output$linePlot <- renderPlotly({
    ggplotly(
      ggplot(sales_data,
             aes(x = Month, y = Sales, group = 1)) +
        geom_line(color = "blue", linewidth = 1) +
        geom_point(color = "red", size = 3) +
        labs(title = "Monthly Sales")
    )
  })
  
  output$barPlot <- renderPlotly({
    ggplotly(
      ggplot(product_data,
             aes(x = Product, y = UnitsSold, fill = Product)) +
        geom_bar(stat = "identity") +
        labs(title = "Top Selling Products") +
        theme(legend.position = "none")
    )
  })
}

shinyApp(ui, server)