### Exercise 3 ###
library(jsonlite)
library(dplyr)
# Use the `load` function to load in the nelly_tracks file.  That should make the data.frame
# `top_nelly` available to you
load('m10-apis/exercise-3/nelly_tracks.Rdata')

# Use the `flatten` function to flatten the data.frame -- note what differs!
flat.top.nelly <- flatten(top.nelly)

# Use your `dplyr` functions to get the number of the songs that appear on each albumt
group_by(flat.top.nelly, album.name) %>% 
  summarise(n = n())


# Bonus: perform both of the steps above in one line (one statement)
top.nelly %>% 
  flatten %>% 
  group_by(album.name %>% 
             etc etc)

