# Arleth Alexandra Fernandez Flores
# 2072813
# 20/05/2024

# Experimento ganancia en peso (GP) basado en diferentes dietas
# Niveles de factor: 4(die1, die2, die3, die4)

die1 <- c(2.4, 2.2, 3.3, 1.6)
die2 <- c(2.2, 1.9, 1.3, 2.5)
die3 <- c(3.4, 1.7, 2.8, 1.4)
die4 <- c(1.6, 2.1, 2.1, 2.4)

# Sumatoria de grupos/bloques
# Para peso bajo sumar la ganancia en peso
sum(die1[1]+die2[1]+die3[1]+die4[1])
sum(die1[2]+die2[2]+die3[2]+die4[2])
sum(die1[3]+die2[3]+die3[3]+die4[3])
sum(die1[4]+die2[4]+die3[4]+die4[4])

# sumatoria de las dietas independienetes de grupo/bloque
sum(die1); sum(die2); sum(die3); sum(die4)

GP <- c(die1, die2, die3, die4)
Trat <- gl(4,4,16, labels = c("die1","die2","die3","die4"))
Bloq <- gl(4,4,16, labels = c("Bajo","Normal","SP", "OB"))

Dietas <- data.frame(Trat,Bloq,GP)
head(Dietas)

boxplot(Dietas$GP~Dietas$Trat,
        col = "black",
        xlab = "Dietas",
        ylab = "Ganancia en peso (Kg)")

tapply(Dietas$GP, Dietas$Trat, var)

fligner.test(Dietas$GP, Dietas$Trat)
bartlett.test(Dietas$GP, Dietas$Trat)

diet.aov <- aov(Dietas$GP~Dietas$Trat)
summary(diet.aov)

