# Dans cette partie X est une variable al ́eatoire de loi N (2, 4).

# Exercice 1 : quantiles empiriques ou th ́eoriques
# Le quantile empirique d’ordre α d’un  ́echantillon de n tirages ind ́ependants x1, x2, ..., xn de X est la
# valeur pour laquelle, la proportion des xi qui se trouvent inf ́erieurs ou  ́egaux `a cette valeur, vaut α. Le
# quantile th ́eorique d’ordre α appel ́e quantile (et calcul ́e par la fonction de quantile qnorm()) est la valeur
# telle que la probabilit ́e que X soit inf ́erieur ou  ́egal `a cette valeur, vaille α

# 1. Simuler un  ́echantillon de taille n = 50 de X et l’affecter `a x.

mu <- 2
sigma <- 3
n <- 50

x <- rnorm(n, mu, sigma)

# 2. Calculer les quantiles empiriques d’ordre 10%, 20%, ..., 90% de x (appel ́es aussi les d ́eciles empiriques
# car ils permettent de couper l’ ́echantillon en dix) `a l’aide de la fonction quantile() et en utilisant
# l’option type=1.

demp <- quantile(x, probs = seq(0.1, 0.9, 0.1), type = 1)

# 3. Calculer les quantiles th ́eoriques d’ordre 10%, 20%, ..., 90% de X `a l’aide de la fonction qnorm()

dtheo <- qnorm(seq(0.1, 0.9, 0.1), mu, sigma)

# 4. Faire un graphe des 9 points d’abscisses les d ́eciles et d’ordonn ́ees les d ́eciles empiriques. Ajouter
# la droite y = x. Commentaire

