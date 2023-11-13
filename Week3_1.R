## Week 3_1 
###########
library(lavaan)
data(PoliticalDemocracy)
df01 <- PoliticalDemocracy
cfa_model <- '
 CFA / measurement model
ind60 =~ x1 + x2 + x3 
dem60 =~ y1 + y2 +y3 +y4
dem65 =~ y5 + y6 + y7 +y8'

cfa <- sem(cfa_model, data= df01)
cfa_mean <- sem(cfa_model, data= df01, meanstructure = TRUE)
?lavaan
summary(cfa_mean, standardized = TRUE)
summary(cfa)

lavaanPlot2(cfa_mean)

  