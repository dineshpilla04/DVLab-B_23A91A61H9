#load the dataset
data("iris")
?iris
#Inspect the data
head(iris)
str(iris)
View(iris)

# Very basic bar chart(base R)
#count of each spieces 
barplot(table(iris$Species))

#labelled barchart(base R)
barplot(
  table(iris$Species),
  main="Count of Iris Species",
  xlab="Species",
  ylab="Number of Flowers",
  col="lightblue"
)

#barchart from aggregated data(base R)
#mean sepal length per species
mean_sepal<-tapply(iris$Sepal.Length,iris$Species,mean)
mean_sepal
barplot(
  mean_sepal,
  col="pink",
  main="Average Sepal Length by Species",
  ylab="Mean Sepal Length"
)


#grouped (clustered) bar chart (Base R)
#compare Sepal & petal Length(R)
group_means<-rbind(
  Sepal=tapply(iris$Sepal.Length,iris$Species,mean),
  Petal=tapply(iris$Petal.Length,iris$Species,mean)
)
group_means

group_means1<-rbind(
  Sepal=tapply(iris$Sepal.Length,iris$Species,mean),
  Sepal=tapply(iris$Sepal.Width,iris$Species,mean),
  Petal=tapply(iris$Petal.Length,iris$Species,mean),
  Petal=tapply(iris$Petal.Width,iris$Species,mean)
)
group_means1

barplot(group_means,
        beside=TRUE,
        col=c("skyblue","pink"),
        legend.text=TRUE,
        main="Grouped Bar Chart: Sepal vs Petal Length"
)
#stacked bar chart(base R)
barplot(group_means,beside=FALSE,
        col=c("skyblue","pink"),
        legend.text=TRUE,
        main="Stacked Bar Chart: Sepal vs Petal Length"
)
barplot(group_means1,
        beside=TRUE,
        col=c("skyblue","pink","lightgreen","yellow"),
        legend.text=TRUE,
        main="Grouped Bar Chart: Sepal vs Petal Length and width"
)

