#Load and understand the dataset

data(diamonds)
data(package = .packages(all.available = TRUE))
library(ggplot2)

data(diamonds)
str(diamonds)
dim(diamonds)

?diamonds


#Very basic Scatter
plot(diamonds$carat, diamonds$price)


#Improved scatter
plot(diamonds$carat, diamonds$price, col=rgb(0,0.1,0.1),pch=16, main="Scatter plot: carat vs price")


#Hexbin using base R
install.packages('hexbin')
library(hexbin)
hb<-hexbin(diamonds$carat, diamonds$price, xbins=40)
plot(hb, main="Hexbin plot")


#Basic Hexbin
ggplot(diamonds, aes(x=carat, y=price))+geom_hex()


#Labeled Hexbin Plot
ggplot(diamonds, aes(carat,price))+geom_hex()+
  labs( title = "Hexagon Binning: Diamond_structure", x="Carat", y="Price")+theme_minimal()



#Control Hexagon Density
ggplot(diamonds, aes(carat, price))+geom_hex(bins=10) + theme_minimal()

#Add color palatte(Gradient)
ggplot(diamonds, aes(carat,price))+geom_hex(bins=40)+
  scale_fill_gradient(low="green", high="red")+theme_minimal()


#Color meaning   -light->fewer diamonds
#                -dark -> dense region


#Professional Palatte(Viridis)
ggplot(diamonds, aes(carat, price))+geom_hex(bins=35)+scale_fill_viridis_c()+theme_minimal()