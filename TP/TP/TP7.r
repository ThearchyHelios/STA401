# Exercice 1
# Question 1
(p <- 0.3)
(n <- 500)
(x <- rbinom(n, 1, p))
mean(x)
# Question 2
(moy.taille <- cumsum(x) / (1:n))
mean(moy.taille)
# Question 3
alpha <- 0.05
(u <- qnorm(1 - alpha / 2))
Binf.taille <- moy.taille - u * sqrt(moy.taille * (1 - moy.taille)) / sqrt((1:n))
Bsup.taille <- moy.taille + u * sqrt(moy.taille * (1 - moy.taille)) / sqrt((1:n))
mean((Binf.taille <= p) & (p <= Bsup.taille))
# Question 4
amplitude.taille <- Bsup.taille - Binf.taille
plot((1:n), amplitude.taille, type = "l")
# Question 5
moy.taille[n] == mean(x)
(Binfx <- Binf.taille[n])
(Binfx <- mean(x) - u * sqrt(mean(x) * (1 - mean(x)) / n))
(Bsupx <- Bsup.taille[n])
prop.test(sum(x), length(x))
prop.test(sum(x), length(x), conf.level = 0.9)
# Question 6
(alpha <- seq(0.01, 0.3, 0.01))
(u <- qnorm(1 - alpha / 2))
(Binf.niveau <- mean(x) - u * sqrt(mean(x) * (1 - mean(x)) / n))
(Bsup.niveau <- mean(x) + u * sqrt(mean(x) * (1 - mean(x)) / n))
(amplitude.niveau <- Bsup.niveau - Binf.niveau)
#Question 7
plot(alpha, amplitude.niveau, type = "l")
abline(h = 0.1)
# Question 8
alphaopt <- 2 * (1 - pnorm(0.05 * sqrt(n / (mean(x) * (1 - mean(x))))))
abline(v = alphaopt, col = 2)

# Exercice 2
# Question 1
read.table("/Users/yilunjiang/Dropbox/Documents/UGA/2_annee/S4/STA401/TP/TP/apnee.csv", sep = ",", header = T) -> data
head(data)
# Question 2
(data[data$sexe == 0, "poids"] -> poidsH)
# Question 3
qqnorm(poidsH)
abline(mean(poidsH), sd(poidsH), col = 2)
qqline(poidsH)
hist(poidsH)
boxplot(poidsH)
