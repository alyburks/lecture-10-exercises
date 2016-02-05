### Exercise 1: Get your favorite Band's bio from the Echonest API ###
library(jsonlite)

# Create a variable `api_key` that stores your api key
# Register your own API key here: https://developer.echonest.com/account/register
api_key <- HTE6XFNPTRTQUIN2O

# Create a variable that stores the name of your favorite artist
fav_artist <- "J Cole"

# Substitute the spaces in your band-name with '+'s using the `gsub` function
fav_artist <- gsub(" ", "+" ,fav_artist)

# Construct a seach query to hit the api.
# See documentation/examples: http://developer.echonest.com/docs/v4/artist.html#biographies
data_query <- paste0("http://developer.echonest.com/docs/v4/artist.html#biographies", "api_key=", api_key, "&name=", fav_artist)


# Use fromJSON to retrieve the results
data_query_df <- fromJSON(data_query)

# Get the text of the (first) biography available
biobraphy <- data_queary_df$biography
