library(fitdistrplus)


data("groundbeef")

str(groundbeef)

summary(groundbeef)

gb <- groundbeef[,1]

plotdist(groundbeef[,1], histo = TRUE, demp = TRUE)

descdist(gb, boot = 1000)

fw <- fitdist(gb, "weibull")

plot(fw)
summary(fw)

fg <- fitdist(gb, "gamma")
fl <- fitdist(gb, "lnorm")
fn <- fitdist(gb, "norm")

distfits <- list(fw,fg,fl,fn)
distlegend <- c("weib","gam","lnorm","norm")
par(mfrow = c(2,2))
denscomp(distfits, legendtext = distlegend)
qqcomp(distfits, legendtext = distlegend)
cdfcomp(distfits, legendtext = distlegend)
ppcomp(distfits, legendtext = distlegend)




