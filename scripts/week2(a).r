#Load the dataset
AirPassengers
?AirPassengers

#Verify the Dataset
class(AirPassengers)
View(AirPassengers)

ap_df

ap_df<-data.frame(
  year=time(AirPassengers),
  passengers=as.numeric(AirPassengers)
)
ap_df

#Convert the Dataset to dataframe
ap_df_months<-data.frame(
  year=floor(time(AirPassengers)),
  month=cycle(time(AirPassengers)),
  passengers=as.numeric(AirPassengers)
)

ap_df_months

plot(AirPassengers,
     type='l',
     lwd=2,
     main="Line Chart of AirPassengers",
     xlab="Years",
     ylab="Passengers",
     col="red",
)

points(AirPassengers,
       type='o',
       pch=17,
       col="blue"
)

library(ggplot2)


ggplot(ap_df, aes(x=year,y = passengers)) +
  geom_line(color = "blue", linewidth = 1) +
  labs(
    title = "Line Chart of Air Passengers",
    caption="Using Air Passengers Dataset",
    subtitle="From 1949-1960",
    x = "Year",
    y = "Passengers"
  ) +
  geom_point(color="red")+
  geom_smooth(se=FALSE,color='black')+
  theme_light()+
    theme(
      axis.title.x = element_text(color = "darkgreen", size = 12, face = "bold"),
      axis.title.y = element_text(color = "purple", size = 12, face = "bold"),
      axis.text.x  = element_text(color = "brown", size = 10),
      axis.text.y  = element_text(color = "blue", size = 10),
      plot.title=element_text(color="orange",size=14)
    )





