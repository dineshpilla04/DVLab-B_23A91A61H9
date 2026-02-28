#load and understand the iris dataset
data(iris)
str(iris)
View(iris)

#basic scatter plot: sepal length vs sepalwidth
plot(iris$Sepal.Length,iris$Sepal.Width)

#labeled scatter plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main="Sepal length vs Sepal Width",
  xlab = "Sepal Length(cm)",
  ylab = "Sepal Width(cm)",
  col = "blue",
  pch=16
)

#colored scatter plot by species
plot(iris$Sepal.Length,iris$Sepal.Width,col=as.numeric(iris$Species),pch=16,
     main="Sepal Dimensions by species")
legend("topright",legend=levels(iris$Species),col=1:3,pch=16)

#Multivariate scatter
#add size as a third variable
plot(iris$Sepal.Length,iris$Sepal.Width,col=as.numeric(iris$Species),pch=16,
     cex=iris$Petal.Length/max(iris$Petal.Length),
     main="Multivariate Scatter Plot(Color+Size)")

#Scatter plot matrix
#all numeric variables against each other
pairs(iris[,1:4],col=as.numeric(iris$Species),pch=16,
      main="Scatter plot matix of iris dataset")

#Using GGPlot2
#load ggplot2
