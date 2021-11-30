# These are comments

# R/IDE Overview
# load MCA package (from Applied MVA Book)
install.packages('MVA')
library(MVA)

# load pottery data
data(pottery)

# look at help for gavote
?pottery
# look at the summary
summary(pottery)

# add a new variable

pottery$al_to_fe <- (pottery$Al2O3/pottery$Fe2O3)

# histogram of undercount (load ggplot2)
library(ggplot2)
ggplot(pottery, aes(x = Al2O3)) +
  geom_histogram()


# density of undercount with rug
ggplot(pottery, aes(x = Al2O3)) +
  geom_density() +
  geom_rug(sides = "b", alpha = .5)

# Convert this to an R Markdown file
