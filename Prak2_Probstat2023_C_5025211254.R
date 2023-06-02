# Nama  : Yusna Millaturrosyidah
# NRP   : 5025211254
# Kelas : Probabilitas dan Statistik C

"----------No 1----------"
# 1A
X = c(78, 75, 67, 77, 70, 72, 78, 70, 77)
Y = c(100, 95, 70, 90, 90, 90, 89, 100, 100)
difference = (X - Y)
sd(difference)

# 1B
t.test(Y, X, paired = TRUE)

# 1C
# Jawaban ada di file readme

"----------No 2----------"
# 2A 
# Jawaban ada di file readme

# 2B (kesimpulan ada di file readme)
install.packages("BSDA")
library(BSDA)

klaim_mean <- 25000
n <- 100
sampel_mean <- 23500
populasi_sd <- 3000

zsum.test(mean.x = sampel_mean, sigma.x=populasi_sd, n.x = n,  
          alternative = "greater", mu = klaim_mean)

"----------No 3----------"

# 3A 
# Jawaban ada di file readme

n1 <- 20
n2 <- 27
xbar1 <- 3.64
xbar2 <- 2.79
sd1 <- 1.67
sd2 <- 1.5

#3B
tsum.test(xbar1, sd1, n1, xbar2, sd2, n2, 
          alternative = "greater", var.equal = TRUE)

#3C
install.packages("mosaic")
library(mosaic)

df <- 2
plotDist(dist = 't', df, col = "purple")

#3D
nk_lower <- qt(0.05, 2) 
nk_lower

nk_upper <- qt(0.05, 2, lower.tail=FALSE)
nk_upper

# 3E 
# Jawaban ada di file readme

# 3F 
# Jawaban ada di file readme

"----------No 4----------"
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

# 4A
data <- read_csv("GTL.csv")
head(data)

str(data)

qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)

# 4B
data$Glass = as.factor(data$Glass)
data$Temp_Factor = as.factor(data$Temp)
str(data)

anova = aov(Light ~ Glass*Temp_Factor, data = data)
summary(anova)

# 4C
data_summary = group_by(data, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
