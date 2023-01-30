# Exercice 1
init <- 1:10
init

# Exercice 2
c(1, 2, 3, 4, 5) -> x
x
x[2] # pour obtenir l'element d’indice 2 du vecteur x
x[c(2, 4)] # pour obtenir les elements d’indices 2 et 4.
x[-2] # pour obtenir tous les elements sauf l'element d'indice 2.

y <- c(2, 4, 6, 8, 10)
label <- c("a", "b", "c", "d", "e")

matrix(c(x, y), ncol = 2, byrow = F) -> A
cbind(x, y) -> A2
A[1, 2] # row 1, column 2
A[, 1] # all rows, column 1
A[2, ] # row 2, all columns
un <- rep(1, 5)
matrix(c(x, y, un), ncol = 3, byrow = F) -> B # B is a matrix with 3 columns, x, y and un

# Exercice 3
x / 5 # Multiplier ou diviser par un scalaire
x + 2 # Ajouter un scalaire
sum(x) # Sommer en cumulant
cumsum(x) # Sommer en pas
length(x) # Dimension
sqrt(x) # Calculer la racine
x^3 # Calculer une puissance
c()
c(x, 6) # Agrandir
c(x, 1, 1, 1, 1, 1)
c(x, rep(1, 5))
c(x, c(1, 1, 1, 1, 1))
seq(1, 10, 2)
seq(from = 1, to = 10, by = 2)
x > 0
which(x > 0)
length(which(x > 0))
which(x != 2)
x > 0 & x < 2
sum(x > 0 & x < 2)

# Exercice 4
x + y # Ajouter des vecteurs
x * y # Multiplier des vecteurs
cbind(x, y) # Reunir deux vecteurs
rbind(x, y)
t(cbind(x, y)) # t() transpose une matrice

# Exercice 5
sum(A) # calcule la somme des elements de A
A + 1 # ajoute 1 a chaque element de A
A * A # Produit
c(1, 2) -> a
A %*% a
t(a) %*% t(A)

# Exercice 6
x_ <- sum(x) / length(x)
s2_x <- (sum(x^2) / length(x)) - (x_)^2

c <- length(which(x <= 2))
ex6_2 <- c / length(x)

ex6_3 <- length(which(x > y))

matrix(c(2, 1, 1, 2), nrow = 2) -> C
ex6_4 <- A %*% C

# Exercice 7
# Soit la fonction f(x) = sin(x). On se propose ici de tracer son graphe sur [0, 7].
abs <- seq(0, 7, 0.1)
ord <- sin(abs)
# Trace du graphe
plot(abs, ord, type = "l", col = "red", lwd = 2, xlab = "x", ylab = "f(x)", main = "f(x) = sin(x) red \n f(x) = cos(x) blue")
abline(h = 1, col = "red")
abline(a = 0, b = 1, col = "green") # y = bx + a
abline(h = 0, col = "black")
abline(v = 0, col = "black")
points(3, 1, col = "blue", pch = 16)

ord <- cos(abs)
lines(abs, ord, col = "blue", lwd = 2)

# Exercice 8
read.table("apnee.csv", header = T, sep = ",") -> apnee
summary(apnee) # donne des informations sur les variables

read.table("cardiaque.csv", header = T, sep = ",") -> cardiaque
cardiaque$tabac # pour acceder a la variable tabac

read.table("her.txt", header = T, sep = "\t") -> her
her[3, 2] # pour acceder a l'element de la 3eme ligne et de la 2eme colonne
her[,2] # pour acceder a la 2eme colonne
her[3,] # pour acceder a la 3eme ligne, toutes les donnee d'une femme
mean(her$sex) # demi femme et demi homme