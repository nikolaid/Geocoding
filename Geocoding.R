install.packages("mapproj")
install.packages("ggmap")
install.packages("DeducerSpatial")
install.packages("zipcode")
install.packages("rgeos")
install.packages("DeducerSpatial")
install.packages("geosphere")
install.packages("maps")
install.packages("ggplot2")
install.packages("plyr")
install.packages("ggmap")
install.packages ("maptools")
install.packages ("xlsx")
install.packages ("choroplethr")
install.packages ("choroplethrMaps")
install.packages ("mapproj")
install.packages ("ggplot2")
install.packages ("choroplethr")


library(ggplot2)
library(rgdal)
library(scales)
library(ggmap)
library(dplyr)
library(Cairo)
library(choroplethr)
library(choroplethrMaps)
library(mapproj)
library(ggplot2)
library(ggmap)
library(geosphere)
library(rgeos)
library(maps)



library(zipcode)
data(zipcode)
library(ggmap)
mapdist('48116', '48109', mode = 'driving')

distQueryCheck()

#the basics
#loading the file
complezip <- read.csv(file="c:/users/owner/documents/comple_zip.csv")
#shape of the data
head(complezip)
#dimensions rows vs columns 
dim(complezip)
#headers
names(complezip)
#information about the file
str(complezip)
#quick summary
summary(complezip)
#look at specific columns 
complezip_only <- complezip[,3:3]
complezip_only

#create new table
write.table(complezip_only, "complezip_only.csv", row.names=FALSE, sep=",")


centerszip <- read.csv(file="c:/users/owner/documents/centers.csv")
complezip$Zip_Code
centerszip$Zip_Code
from <- "complezip$Zip_Code"[c(1:1064)]
to <- "centerszip$Zip_Code"[c(1)]
from <- complezip$Zip_Code
to <- centerszip$Zip_Code
mapdist(from, to, mode="driving")

from <- "complezip$Zip_Code"
to <- "centerszip$Zip_Code"
mapdist(from, to, mode="driving")

str(complezip$Zip_Code)
str(centerszip$Zip_Code)

data <- read.table("comple_zip.csv", header=TRUE, sep=",", skip=7,
                   stringsAsFactors=FALSE)


read.table("comple_zip.csv", header = TRUE, sep = ",", row.names = 1)

mydata=read.csv("comple_zip.csv", header=FALSE, sep=",", as.is=FALSE, skip=7,
                  stringsAsFactors=FALSE)

mydata = read.csv("comple_zip.csv")  
mydata 
str(mydata)
mydata [,3]

str(complezip)

library(zipcode)
data(zipcode)

fm<- read.csv("zip_codes.csv", header = TRUE, sep = ",")
data(zipcode)
fm$zip<- clean.zipcodes(fm$Zip_Code)
fm<- merge(fm, zipcode, by.x='zip', by.y='zip')
fm
write.csv(fm,file="ZIP.csv")

--------------------------------------------------------------------------------
#selecting the file to work with
  
myzip<- read.csv("ZIP.csv")
myzip

#shape of the data
head(myzip)
#dimensions rows vs columns 
dim(myzip)
#headers
names(myzip)
#information about the file
str(myzip)
#quick summary
summary(myzip)

summary(myzip$zip)
table(myzip$zip)

--------------------------------------------------------------------------
#This is working! 
  
myzip<- read.csv("ZIP.csv")
myzip

library(ggmap) 

options(max.print=1000000)

test <- as.character(myzip$zip)
test
from=test
to = "48109"
mapdist(from, to, mode="driving")

distQueryCheck()

--------------------------------------------------------------------------------

api_key <- "AIzaSyAPYrB1NtXDfUjqE2OS7ENJfYY7fq40OFU"
 
--------------------------------------------------------------------------------
# Complete code & saving output to csv

myzip<- read.csv("ZIP.csv")
str(myzip) 

library(ggmap) 

options(max.print=1000000)

a <- as.character(myzip$zip)
str(a)
from=a
to = "48109"
mapdist(from, to, mode="driving")

m=mapdist(from, to, mode="driving")
dat1 <- data.frame(m)
write.csv(dat1, file = "test3.csv")

distQueryCheck()

--------------------------------------------------------------------------------
#geocoding centers
  
library(zipcode)
data(zipcode)

library(zipcode)
data(zipcode)
fm<- read.csv("centers.csv", header = TRUE, sep = ",")
fm$zip<- clean.zipcodes(fm$Zip_Code)
a <- merge(fm, zipcode, by.x='zip', by.y='zip')
a
write.csv(a, file = "centers.csv")



--------------------------------------------------------------------------------

