# Exercice 1
# Question 1
(mu <- 2)
(sig <- 1)
(N <- 1000)
(n <- 50)
dataG <- matrix(rnorm(n * N, mu, sig), ncol = n)

# Question 2
mu0 <- 2

# Question 3
rowMeans(dataG) -> moy
# test 1: si xbarn>mu0 ==> rejet de H0
mean(moy > mu0)
# test 2: si xbarn>mu0 + 2/racine(n)==> rejet de H0
mean(moy > mu0 + 2 / sqrt(n))
# test 3: si xbarn>mu0 + 3/racine(n)==> rejet de H0
mean(moy > mu0 + 3 / sqrt(n))

# Question 4
alpha <- 0.05
u <- qnorm(1 - alpha)
# test 4: si xbarn>mu0+u*sig/sqrt(n) : ets en principe de niveau alpha en effet
mean(moy > mu0 + u / sqrt(n)) # evalue le  niveau du test 4 qui est bien d'environ alpha

# Question 5
tcalc <- (moy - mu0) * sqrt(n) / sig
mean(tcalc > u) == mean(moy > mu0 + u / sqrt(n)) # test

# Question 6
sig_estime <- sqrt(rowSums(dataG^2) / (n - 1) - rowMeans(dataG)^2)
t <- qt(1 - alpha, n - 1)
tcalc <- (moy - mu0) * sqrt(n) / sig_estime
mean(tcalc > t)

# Exercice 2
# Question 1
read.table("/Users/yilunjiang/Dropbox/Documents/UGA/2_annee/S4/STA401/TP/TP/apnee.csv", sep = ",", header = T) -> data
head(data)
tailleH <- data[data$sexe == 0, "taille"]

n <- length(tailleH)

moy <- mean(tailleH)
ecarttype <- sd(tailleH)

mu0 <- 178
tcalc <- (moy - mu0) * sqrt(n) / ecarttype

alpha <- seq(0.01, 0.1, 0.01)
t <- qt(1 - alpha, n - 1)
tcalc > t

t.test(tailleH, mo = mu0, alternative = "greater")
