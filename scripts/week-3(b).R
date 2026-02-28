#load the dataset
data(airquality)

#inspect the data
?airquality
head(airquality,3)
str(airquality)
class(airquality)

#count of each species and to see data in column "species"
airquality$Day
View(airquality)

#ploting a bar chart
barplot(
  table(airquality$Day)
)

#labeld bar chart
barplot(
  table(airquality$Day),
  main="Count of airquality day",
  xlab = "Day",
  ylab = "Frequency",
  col='steelblue'
)

#bar plot from aggregated data using mean sepal length per species
mean_wind<-tapply(airquality$Wind,airquality$Day,mean)
mean_wind

barplot(
  mean_wind,
  col='orange',
  main="Average Wind Speed by Day",
  xlab="Day",
  ylab="Mean Wind Speed"
)

#grouped bar chart
group_means<-rbind(
  wind=tapply(airquality$Wind,airquality$Day,mean),
  temp=tapply(airquality$Temp,airquality$Day,mean)
)
group_means

barplot(
  group_means,
  beside=TRUE,
  col=c("skyblue","pink"),
  legend.text=TRUE,
  main="Clustered Bar Chart: Wind vs Temp by Day"
)
barplot(
  group_means,
  beside=FALSE,
  col=c("skyblue","pink"),
  legend.text=TRUE,
  main="Stacked Bar Chart: Wind vs Temp by Day",
)