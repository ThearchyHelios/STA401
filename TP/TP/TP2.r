##
## @Author: ThearchyHelios
## @Date: 2023-01-30 09:50:13
## @LastEditTime: 2023-01-30 10:20:58
## @LastEditors: ThearchyHelios
## @Description:
## @FilePath: /STA401/TP/TP/TP2.r
##

# Exercice 1
mtcars
names(mtcars)
mtcars$cyl
table(mtcars$cyl)
table(mtcars$am)
table(mtcars$mpg)
summary(mtcars)
summary(mtcars$mpg)
# Show the max value of mpg
max(mtcars$disp)
length(mtcars$am == 0)

# Exercice 2
mpg <- mtcars$mpg
disp <- mtcars$disp
cyl <- mtcars$cyl
am <- mtcars$am
boxplot(mpg, main = "Boxplot de mpg", xlab = "mpg", ylab = "Valeur")
mpga <- mtcars[am == 0, "mpg"]
mpga <- mtcars$mpg[am == 0]
mpgm <- mtcars[am == 1, "mpg"]
mpgm <- mtcars$mpg[am == 1]
boxplot(mpga, mpgm, names = c("automatique", "manuelle"), main = "mpg selon la transmission")

# Exercice 3
prop.table(table(mtcars$am)) # proportion de voiture automatique = table(mtcars$am) / length(mtcars$am)
pie(table(mtcars$am), main = "Proportion de voiture automatique", col = c("red", "blue"), labels = c("automatique", "manuelle"))
barplot(table(mtcars$am), main = "Proportion de voiture automatique", col = c("red", "blue"), names.arg = c("automatique", "manuelle"))
par(mfrow = c(1, 1))
vs <- mtcars$vs
prop.table(table(am, vs))
barplot(prop.table(table(am, vs)), beside = T)

prop.table(table(am, vs), 1)
barplot(prop.table(table(am, vs), 1), beside = T)
prop.table(table(am, vs), 2)
barplot(prop.table(table(am, vs), 2), beside = T)
# Y a t-il un lien entre vs et am (justifier)
# Oui, car la proportion de voiture automatique est plus élevée pour les voiture avec moteur à 8 cylindres

# Exercice 5
cyl <- mtcars$cyl
table(cyl)
pie(table(cyl), main = "Diagramme en secteurs de cyl", col = c("red", "blue", "green"))
barplot(table(cyl), main = "Diagramme en barres de cyl", col = c("red", "blue", "green"))
# La somme des hauteurs représente la taille de cyl = 32

disp <- mtcars$disp
hist(disp, main = "Histogramme de disp", xlab = "disp", ylab = "Valeur", freq = F)
curve(dnorm(x, mean = mean(disp), sd = sd(disp)), add = T, col = "red")

mpg <- mtcars$mpg
hist(mpg, main = "Histogramme de mpg", xlab = "mpg", ylab = "Valeur", freq = F)
curve(dnorm(x, mean = mean(mpg), sd = sd(mpg)), add = T, col = "red")

# Exercice 6
cumfreqcyl <- cumsum(table(cyl))
plot(cumfreqcyl, type = "s", main = "Fonction de répartition empirique de cyl", xlab = "cyl", ylab = "Valeur")
plot(ecdf(cyl), main = "Fonction de répartition empirique de cyl", xlab = "cyl", ylab = "Valeur")

plot(ecdf(mpg), main = "Fonction de répartition empirique de mpg", xlab = "mpg", ylab = "Valeur")