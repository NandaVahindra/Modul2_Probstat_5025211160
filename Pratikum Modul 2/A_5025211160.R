library(BSDA)
library(mosaic)
# 1
Orang.ke=c(seq(1:9))
Ox.Sebelum=c(78,75,67,77,70,72,78,74,77)
Ox.Sesudah=c(100,95,70,90,90,90,89,90,100)
data=data.frame(Orang.ke,Ox.Sebelum,Ox.Sesudah)

selisih= Ox.Sesudah - Ox.Sebelum
#a
sd(selisih)
#b
t.test(x=data$Ox.Sebelum, y=data$Ox.Sesudah,
       alternative = "two.sided",
       mu = 0, paired = TRUE, var.equal = TRUE,
       conf.level = 0.95)

# 2
library(BSDA)
#b
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100,
          alternative = "greater", mu = 20000,
          conf.level = 0.95)

# 3
library(BSDA)
#b
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

#c
library(mosaic)
plotDist(dist = 't', df = 2, col = "red")

#d
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

# 4 
data <- read.table("onewayanova.txt", h = T)
attach(data)
names(data)

data$Group <- as.factor(data$Group)
data$Group = factor(data$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(data$Group)

Group1 <- subset(data, Group == "Kucing Oren")
Group2 <- subset(data, Group == "Kucing Hitam")
Group3 <- subset(data, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

#b

bartlett.test(Length ~ Group, data = data)

#c
model = lm(Length ~ Group, data = data)
anova(model)

#e
TukeyHSD(aov(model))

#f

library("ggplot2")

ggplot(data, aes(x = Group, y = Length)) + geom_boxplot(
  fill = "grey80", colour = "black") + scale_x_discrete() + 
  xlab("Treatment Group") + ylab("Length (cm)")


# 5
#a
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

#d
tukey <- TukeyHSD(anova)
print(tukey)

#e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
