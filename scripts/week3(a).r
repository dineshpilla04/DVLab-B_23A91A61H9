#load leaflet library
library(leaflet)
#The basic leaflet widget shows an empty map widget with no tiles or markers.
#create map widget
map<-leaflet()
#Adding tiles to the map
#If there is np tile is mentioned it will openStreetMap
map<-leaflet()%>%addTiles()
#print map widget
map
#Adding markers on map
#map<-leaflet()%>%addTiles()%>%addMarkers(lng,lat,popup)
map<-leaflet()%>%addTiles()%>%addMarkers(lng=82.07,lat=17.09,popup="Aditya University, Andhra Pradesh,India")
map

#Inntercative map with multiple locations
india_map<-leaflet()%>%addTiles()%>%setView(lng=78.9629,lat=20.5937,zoom=5)
#Sample data with top cities of india
cities_data<-data.frame(
  city=c("Mumbai","Delhi","Bangalore","Hyderabad","Chennai","Kolkata"),
  lat=c(19.0760,28.6139,12.9716,17.3850,13.0827,22.5726),
  lng=c(72.8777,77.2090,77.5946,78.4867,80.2707,88.3639),
  population=c(12442373,11034555,8443675,6772291,4681087,4486679),
  state = c("Maharashtra","Delhi (NCT)","Karnataka","Telangana","Tamil Nadu","West Bengal"),
  famous=c("Bollywood","Red Fort","IT Industry","Charminar","Marina Beach","Howrah Bridge")
)
india_map<-india_map%>%addCircleMarkers(
  data=cities_data,
  lng=~lng,lat=~lat,
  radius=~sqrt(population)*0.01,
  color="orange",
  fillOpacity =0.7,
  popup=~paste("City:",city,"<br>Population:",population,"<br>Sate:",state,"<br>Famous:",famous)
)
india_map















#load library
#Draw map
leaflet()%>%
  #Add first tile
  addTiles(group="One")%>%
  #Add second tile
  addProviderTiles(providers$Esri.WorldImagery,group="Two")%>%
  #Add first marker
  addMarkers(lng=25.505206,lat=65.9767231,group="mark1")%>%
  #Add second marker
  addMarkers(lng=-45.445206,lat=45.5327231,group="mark2")%>%
  #Add layer controls
  addLayersControl(baseGroups=c("One","Two"),
                   overlayGroups = c("mark1","mark2"),
                   options=layersControlOptions(collapsed=FALSE))



#plot data on top of map
my_map<-leaflet()%>%
  addTiles()%>%
  setView(lng=0,lat=0,zoom=2)
  #Sample data
  data<-data.frame(
    lng=c(0,10,-20),
    lat=c(0,15,-10),
    value=c(100,200,150)
  )
#Add circle markers based on the sample data
my_map<-my_map%>%
  addCircleMarkers(
    data=data,
    lng=~lng,
    lat=~lat,
    radius=~sqrt(value)*2,
    color="red",
    fillOpacity=0.7,
    popup=~paste("Value:",value)
  )
my_map





