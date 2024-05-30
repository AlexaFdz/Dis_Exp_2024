# Arleth Alexandra Fernandez Flores
# 2072813
# 29/04/2024


# Importar datos ----------------------------------------------------------

# Utilizar funcion read.csv sirve para importar datos

cr <- read.csv("Cedrorojo.csv", header=TRUE)



# Revision de datos -------------------------------------------------------

mean(cr$diametro)
mean(cr$altura)
mean(cr$diametro); sd(cr$altura)

sd(cr$diametro); sd(cr$altura)
range(cr$diametro)

fivenum(cr$diametro)



# Representación grafica --------------------------------------------------

boxplot(cr$diametro)

boxplot(cr$altura, col = "Pink",
        ylim=c(10,30), ylab = "Altura (cm)",
        main= "Cedro rojo")

hist(cr$altura, xlab = "Altura (cm)",
     main = "Cedro rojo",
     ylab = "Frecuencia",
     col = "Blue")

stem(cr$altura)     

