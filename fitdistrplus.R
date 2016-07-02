library(fitdistrplus)


data("groundbeef")

str(groundbeef)

summary(groundbeef)

gb <- groundbeef[,1]

plotdist(groundbeef[,1], histo = TRUE, demp = TRUE)

descdist(gb, boot = 1000)


