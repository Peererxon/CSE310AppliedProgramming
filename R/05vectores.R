####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# video 05 - vectores

# Objetivo: estudiar qué es una vector en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear vectores en un script
# 2. Realizar opraciones aritméticas con vectores
# 3. Seleccionar elementos en un vector


#####################################
# práctica 1: creando vectores en R #
#####################################

# crear vector carácter con nombre de las películas
caracter <- c("sherk 1","sherk 2","sherk felices por siempre")

# crear vector numérico con puntuación de las películas
puntuacion <- c(5,4.5,4)

# crear vector lógico sobre si la película es posterior a 2015
posterior_2005 <- c(FALSE,FALSE,TRUE)

####################################################
# práctica 2: operaciones aritméticas con vectores #
####################################################

# sumar 2 a la puntuación
 puntuacion + 2

# dividir la puntuación entre 2
puntuacion/2

# crea la puntuación de rafa
puntuacion_rafa <- c(10,9,6)

# calcular diferencia entre puntuaciones
puntuacion - puntuacion_rafa

# calcular la longitud del vector
length(puntuacion_rafa)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# práctica 3: selección de elementos de un vector #
###################################################

## selección basada en posición
# seleccionar la tercera película
caracter[3]

# seleccionar la primera y la última película
caracter[c(1,3)]

## selección basada en condición lógica
# crear condición lógica
puntuacion_baja <- puntuacion < 7

# mostrar condición para ver TRUE/FALSE
puntuacion_baja
#muestra aquellos valores del vector que cumplan la condicion

# mostrar puntuaciones bajas
caracter[puntuacion_baja]

# mostrar nombres de películas con puntuaciones bajas


# Hecho con gusto por Rafa @GonzalezGouveia
# Suscribete para más código en R https://bit.ly/2WNDhNR