
# Calculates the geodesic distance between two points specified by radian latitude/longitude using the
# Spherical Law of Cosines (slc)
gcd.slc <- function(long1, lat1, long2, lat2) {
  R <- 6371 # Earth mean radius [km]
  d <- acos(sin(lat1)*sin(lat2) + cos(lat1)*cos(lat2) * cos(long2-long1)) * R
  return(d) # Distance in km
}

#Here the longitude and latitude coordinates are given in radian, 
#i.e. the latitude and longitude decimal degrees (DD) converted to radians 
# Convert degrees to radians
deg2rad <- function(deg) return(deg*pi/180)

# Calculates the geodesic distance between two points specified by degrees (DD) latitude/longitude using
# Haversine formula (hf), Spherical Law of Cosines (slc) and Vincenty inverse formula for ellipsoids (vif)
gcd <- function(long1, lat1, long2, lat2) {
  
  # Convert degrees to radians
  long1 <- deg2rad(long1)
  lat1 <- deg2rad(lat1)
  long2 <- deg2rad(long2)
  lat2 <- deg2rad(lat2)
  
  return(list(haversine = gcd.hf(long1, lat1, long2, lat2),
              sphere = gcd.slc(long1, lat1, long2, lat2),
              vincenty = gcd.vif(long1, lat1, long2, lat2)) )
}
------------------------------------------------


