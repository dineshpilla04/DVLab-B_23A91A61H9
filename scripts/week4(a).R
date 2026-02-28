#load the dataset
data(iris)

#inspect the data
?iris
str(iris)
class(iris)
View(iris)

#basic box plot
boxplot(iris$Sepal.Length)

#ploting a box plot
boxplot(
  iris$Sepal.Length,
  main="Box Plot for sepal Length",
  ylab="Sepal_Length",
  col='skyblue'
)

#grouped data box plot
boxplot(
  Sepal.Length ~ Species,
  data=iris,
  main="Sepal Length by Species",
  xlab="Species",
  ylab="Sepal Length",
  col=c('pink','green','skyblue')
)

#multi-variable box plot
boxplot(
  iris[,1:4],
  main="Multi Variable Box Plot",
  col=c('pink','green','skyblue','orange')
)

#custom color palette

species_colors<- c("setosa"="red",
                   "versicolor"="lightblue",
                   "virginica"="lightgreen"
)

boxplot(
  Sepal.Length ~ Species,
  data=iris,
  main="Sepal Length by Species (custom color palette)",
  col=species_colors
)

#GGPLOT2
library(ggplot2)

ggplot(iris,
       aes(x=Species,y=Sepal.Length))+
  geom_boxplot()

#colored box plot by species
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  theme_minimal()

#using manual color palettes
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  scale_fill_manual(
    values=c(
      "setosa"="red",
      "versicolor"="lightblue",
      "virginica"="lightgreen"
    )
  )+
  theme_minimal()
