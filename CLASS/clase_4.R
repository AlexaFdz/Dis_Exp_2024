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
sum(diel[1]+die2[1]+die3[1]+die4[1])
sum(diel[2]+die2[2]+die3[2]+die4[2])
sum(diel[3]+die2[3]+die3[3]+die4[3])
sum(diel[4]+die2[4]+die3[4]+die4[4])

# sumatoria de las dietas independienetes de grupo/bloque
sum(die1); sum(die2); sum(die3); sum(die4)

GP <- c(die1, die2, die3, die4)
GP <- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1,
        3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4)
trat <- gl(4,4,16, labels=c(die1, die2, die3, die4))
bloque <- gl (4,4,16, labels = c("bajo", "normal", "SP", "OB"))

dietas <- data.frame(Trat, GP, bloque)
head(dietas)

boxplot( dietas$GP ~ dietas$Trat,
         "col" = "salmon", 
         "xlab" = "dietas", 
         "ylab" = "ganancia en peso (Kg)")
tapply(dietas$GP, dietas$Trat, var)
fligner.test(dietas$GP, dietas$Trat)         
bartlett.test(dietas$GP, dietas$Trat)         

diet.aov <- aov(dietas$GP ~ dietas$Trat)
summary(diet.aov)
