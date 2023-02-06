# Exercice preliminaire
# Repr ́esenter sur un mˆeme graphique les densit ́e des lois N(μ,σ) pour les couples
# (μ,σ) ∈{(0,1),(0,0.5),(0,2),(3,1)} en quatre couleurs diff ́erentes. Y ajouter les verticales passant
# par -1 et 1 et repr ́esenter en rouge le segment de l’axe des abscisses o`u |x|≤1. En num ́erotant les
# quatre courbes de 1 `a 4, classer dans l’ordre croissant les quatre valeurs p1,p2,p3 et p4 o`u pi est
# d ́efinie comme la probabilit ́e que la variable de densit ́e num ́ero i soit `a une distance inf ́erieure `a 1
# de 0 (P(X ∈[0 −1,0 + 1] = [−1,1])).


# Exercice 1
# Soit X une variable de loi N(μ,σ) avec μ et σ quelconques et U de loi N(0,1)
# Calculer P(X ∈[−2,4]) avec μ = 2 et σ = 3
dnorm(4, 2, 3) - dnorm(-2, 2, 3)

# Choisir deux valeurs pour μ et σ et calculer P(X ∈[μ −σ,μ + σ]). Changer les valeurs de l’un ou
# l’autre des param`etres ou les deux et recalculer la probabilit ́e pr ́ec ́edente
dnorm(2 + 3, 2, 3) - dnorm(2 - 3, 2, 3)

# Calculer , P(X ∈[μ −2σ,μ + 2σ]) et P(X ∈[μ −3σ,μ + 3σ]) pour un couple (μ,σ) quelconque et
# choisi au pr ́ealable.
dnorm(2 + 2 * 3, 2, 3) - dnorm(2 - 2 * 3, 2, 3)

# Soit n = 9, calculer les quantiles d’ordres 1/(n + 1),2/(n + 1),....,n/(n + 1) de la variable U. Il
# s’agit des d ́eciles (ils sont neuf et coupent la droite r ́elle en dix intervalles tels que la probabilit ́e de
# se trouver X dans chacun de ces intervalles vaille 10%. Les retrouver sur les tables statistiques
dnorm(qnorm(1 / (9 + 1)), 0, 1)

# Tracer la fonction de r ́epartition de U et marquer par des points rouges sur l’axe des abscisses les
# positions des quantiles pr ́ec ́edemment calcul ́es. Placer sur l’axe des ordonn ́ees des points rouges
# pour repr ́esenter les points d’abscisse 0 et ordonn ́ees 1/(n + 1),2/(n + 1),...n/(n + 1). Ajouter
# `a l’aide de la fonction graphique secondaire segments des segments verticaux en pointill ́es noirs
# allant d’un quantile plac ́e sur l’axe des abscisses jusqu’`a l’intersection avec la courbe trac ́ee. Idem
# du point obtenu tracer une horizontale en pointill ́es jusqu’`a l’axe des ordonn ́ees
plot(qnorm(seq(1 / (9 + 1), 9 / (9 + 1), length.out = 9)), seq(1 / (9 + 1), 9 / (9 + 1), length.out = 9), type = "b", xlab = "x", ylab = "F(x)", main = "Fonction de répartition de U")

# Calculer les quantiles d’ordres 1/(n + 1),2/(n + 1),....,n/(n + 1) de la variable X avec μ = −1 et
# σ = 5 et repr ́esenter les quantiles obtenus pour X selon ceux obtenus pour U.
qnorm(seq(1 / (9 + 1), 9 / (9 + 1), length.out = 9), -1, 5)

# Rajouter sur votre graphique la droite d’ ́equation y = σx + μ. Conclure

# Exercice 2
# Soit X une variable de loi N(μ,σ) avec μ = 2 et σ = 3. Soient les  ́ev`enements A = {X ∈ [1,5]},
# B = {X ∈[0,2[}, C = {X ≥2} et D = {X ≤0}.

# Calculer les probabilit ́es des  ́ev`enements A,B,C et D.
dnorm(5, 2, 3) - dnorm(1, 2, 3)
dnorm(2, 2, 3)
dnorm(Inf, 2, 3) - dnorm(2, 2, 3)
dnorm(0, 2, 3)

# Calculer les probabilit ́es conditionnelles de A sachant B, A sachant C et A sachant D
dnorm(5, 2, 3) - dnorm(1, 2, 3) / dnorm(2, 2, 3)
dnorm(5, 2, 3) - dnorm(1, 2, 3) / (dnorm(Inf, 2, 3) - dnorm(2, 2, 3))
dnorm(5, 2, 3) - dnorm(1, 2, 3) / dnorm(0, 2, 3)

# Retrouver la valeur de P(A) en utilisant la formule des probabilit ́es totales appliqu ́ees avec la
# partition (B,C,D) de l’univers de tous les possibles Ω.
dnorm(5, 2, 3) - dnorm(1, 2, 3) / (dnorm(2, 2, 3) + dnorm(Inf, 2, 3) - dnorm(2, 2, 3) + dnorm(0, 2, 3))
