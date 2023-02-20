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

plot(dtheo, demp, main = "les déciles", xlab = "deciles théoriques", ylab = "déciles empiriques")
abline(0, 1, col = "red")

# 5. Faire un histogramme des observations tir ́ees et y superposer la densit ́e de la loi N (2, 4). Commen-
# taire.

hist(x, main = "histogramme", xlab = "valeurs", ylab = "fréquences", freq = FALSE)
curve(dnorm(x, mu, sigma), col = "red", add = TRUE)

# 6. Calculer les quantiles empiriques d’ordre 1/(n + 1), 2/(n + 1), ...., n/(n + 1) de x. Les comparer aux
# valeurs ordonn ́ees de l’ ́echantillon que l’on obtiendra avec la commande sort(x).

emp <- quantile(x, probs = seq(1 / (n + 1), n / (n + 1), 1 / (n + 1)), type = 1)
sort(x)

# 7. Calculer les quantiles th ́eoriques d’ordre 1/(n + 1), 2/(n + 1), ...., n/(n + 1) de X et tracer les points
# d’abscisses quantiles th ́eoriques et ordonn ́ees quantiles empiriques. Y ajouter la droite y = x.

theo <- qnorm(seq(1 / (n + 1), n / (n + 1), 1 / (n + 1)), mu, sigma)
plot(theo, emp, main = "les quantiles", xlab = "quantiles théoriques", ylab = "quantiles empiriques")
abline(0, 1, col = "red")

8. Reprendre les quantiles th ́eoriques d’ordre 1/(n + 1), 2/(n + 1), ...., n/(n + 1) de la variable normale
centr ́ee r ́eduite U , calcul ́es dans la question 4 du premier exercice 1. Faire un plot() des valeurs
ordonn ́ees de l’ ́echantillon selon les quantiles th ́eoriques d’ordre 1/(n + 1), 2/(n + 1), ...., n/(n + 1)
de la variable normale centr ́ee r ́eduite U . Y ajouter la droite d’ ́equation y = σx + μ pour μ = 2 et
σ = 2. Cette droite s’appelle droite de Henry et permet d’appr ́ecier la normalit ́e d’un  ́echantillon
x1, ..., xn. Plus les points sont proches de la droite plus l’hypoth`ese de normalit ́e faite sur la variable
qui a g ́en ́er ́e ces observations est correcte.