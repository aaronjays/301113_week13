

# 1. Create a directory for the repository.
# 2.  Initialise a Git repository within the directory.
# 3.  Copy the epiSEIHCRD_combAge.csv file to the directory.
# 4.  Add the file to the repository and commit the changes.
# 5.  View the commit log to see your message.

# 1. Create an R script within this directory that reads the Sydney
# coronavirus data and plots the number of hospital beds needed
# between July and December of 2020.
# 2.  Add the script to the repository and commit the changes.
# 3.  View the log message.

d <- read.csv("epiSEIHCRD_combAge.csv")
d$t <- as.Date(d$t, origin = "2020-03-01")

library("tidyverse")
dJD <- d %>% filter((t >= "2020-07-01") & (t <= "2020-12-31"))

library("ggplot2")
g <- ggplot(data = dJD) +
  geom_line(mapping = aes(x = t, y = H))
print(g)
