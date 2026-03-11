# Load and understand the "mtcars" Dataset

#Load dataset
data("mtcars")


#Inspect structure
str(mtcars)


#View first few rows
head(mtcars)

#Basic Heat Map(Base R)
heatmap(as.matrix(mtcars))


#Improved Heat Map With labels
heatmap(as.matrix(mtcars), main = "Heatmap of mtcars Dataset")


#Heat map with custom colors
colors <- colorRampPalette(c("blue", "yellow", "red"))(50)
heatmap( as.matrix(mtcars), col = colors, main= "Custom Color HeatMap")


#Correlation Heat Map(Base R)
corr_matrix <- cor(mtcars)
heatmap(corr_matrix, col = colorRampPalette(c("blue", "white", "red"))(50),
        main = "Correlation Heatmap of mtcars")


#ggplot2
library(reshape2)
mtcars$Car <- rownames(mtcars)
mtcars_long <- melt(mtcars, id.vars = "Car")
View(mtcars_long)

library(ggplot2)
ggplot(mtcars_long, aes(x=variable, y = Car, fill=value))+
  geom_tile()


#styled gplot Heat Map

ggplot(mtcars_long, aes(x=variable, y = Car, fill=value))+
  geom_title()+
  scale_fill_gradient(low = "white", high = "red")

#styled ggplot Heat Map
ggplot(mtcars_long,aes(x=variable,y=Car,fill=value))+
  geom_tile()+
  scale_fill_gradient(low = "white",high ="red")+
  theme_minimal()+
  labs(title="Heatmap of mtcars Dataset")
#Another Way
ggplot(mtcars_long,aes(variable,Car,fill=value))+
  geom_tile()+
  scale_fill_viridis_c()+
  theme_minimal()

#correlation Heatmap with ggplot2
corr_matrix<-cor(mtcars[,sapply(mtcars,is.numeric)])
corr_long<-melt(cor)