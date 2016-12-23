
#Extract tweets. Example-
trump.tweets = searchTwitter("trump", n=1500)  

#converts to data frame
df <- do.call("rbind", lapply(trump.tweets, as.data.frame))

#remove odd characters
df$text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII", sub="")) #remove emoticon
df$text = gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", "", df$text) #remove URL
sample <- df$text
