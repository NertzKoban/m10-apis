### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)
# setwd('~/Documents/info-201/m10-apis/exercise-2/')


# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist
TopTracks <- function(artist) {
  base <- 'https://api.spotify.com/v1/search?'
  search <- paste0('q=', artist, '&type=artist')
  query.url <- paste0(base, search)
  data <- fromJSON(query.url)
  artist.id <- data$artists$items$id[1]
  query.url <- paste0('https://api.spotify.com/v1/artists/', artist.id, '/top-tracks?country=US')
  track.data <- fromJSON(query.url)
  
}


# What are the top 10 tracks by Nelly?
tracks <- TopTracks('Nelly')



### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

