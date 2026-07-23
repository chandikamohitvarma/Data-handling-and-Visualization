library(ggplot2)

Vehicle_ID <- c("V1","V2","V3","V4","V5")
Engine_Size <- c(1.5,2.0,3.0,2.5,1.8)
Horsepower <- c(110,150,250,200,130)
Fuel_Efficiency <- c(18,15,12,14,17)
Top_Speed <- c(180,200,250,220,190)
Safety_Rating <- factor(c(4,5,5,4,3))

vehicle <- data.frame(
  Engine_Size,
  Horsepower,
  Fuel_Efficiency,
  Top_Speed,
  Safety_Rating)

# 1. Violin Plot
ggplot(vehicle,
       aes(Safety_Rating,
           Fuel_Efficiency,
           fill=Safety_Rating))+
  geom_violin()

# 2. Scatter Plot
ggplot(vehicle,
       aes(Horsepower,
           Top_Speed,
           color=Engine_Size))+
  geom_point(size=4)

# 3. Correlation Heatmap
corr <- cor(vehicle[,1:4])

heatmap(corr,
        symm=TRUE)̥