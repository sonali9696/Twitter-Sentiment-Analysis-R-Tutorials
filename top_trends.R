#assuming input = Ottawa

a_trends = availableTrendLocations()
woeid = a_trends[which(a_trends$name=="Ottawa"),3]
canada_trend = getTrends(woeid)
trends = canada_trend[1:2]

#To clean data and remove Non English words: 
dat <- cbind(trends$name)
dat2 <- unlist(strsplit(dat, split=", "))
dat3 <- grep("dat2", iconv(dat2, "latin1", "ASCII", sub="dat2"))
dat4 <- dat2[-dat3]
dat4