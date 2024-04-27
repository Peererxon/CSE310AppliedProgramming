####################
#                  #
# Copia todo esto! #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia
#los dataFrames vienen siendo como hojas de excell en R

# video 08 – dataframes

# Objetivo: estudiar qué son dataframes en R.
# ——————————————–
# En este ejercicio vamos a:
# 1. Crear dataframes en R
# 2. Ordenar dataframes por columnas
# 3. Seleccionar elementos de un dataframe

#####################################
# correr esto antes de empezar…   #
#####################################

# vectores sobre peliculas de Shrek
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#######################################
# práctica 1: crear un dataframe en R #
#######################################

# crear dataframe de vectores
#los vectores deben tener el mismo tamano porque sino cabum cabum
peliculas_df <- data.frame(nombre,
                           puntuacion,
                           posterior_2005)


# mostrar dataframe
peliculas_df

# cambiar nombre de dataframe
names(peliculas_df)  <-  c("NOMBRES", "PUNTUACIONES", "POSTERIOR_2005")



# mostrar dataframe (sí, otra vez)
peliculas_df

#####################################################
# práctica 2: Seleccionar elementos de un dataframe #
#####################################################

# seleccionar un elemento del dataframe
peliculas_df[2,3]
peliculas_df[3, "PUNTUACIONES"]

# seleccionar más de un elemento del dataframe
peliculas_df[c(3,4),c(2,3)]
peliculas_df[c(3,4),c("PUNTUACIONES","POSTERIOR_2005")]


# seleccionar una fila o renglón del dataframe
peliculas_df[2,]

# seleccionar una columna del dataframe
peliculas_df[,"PUNTUACIONES"]
peliculas_df$NOMBRES



#################################
# práctica 3: ordenar dataframe #
#################################

# mostrar el dataframe
peliculas_df

# mostrar el indice de la columna de puntuacion con order
indices_menor_mayor <- order(peliculas_df$PUNTUACIONES)

# funcion order (menor a mayor)
indices_mayor_menor <- order(peliculas_df$PUNTUACIONES, decreasing = TRUE)


# mostrar el dataframe ordenado
peliculas_df[indices_mayor_menor,]

# funcion order (mayor a menor)

# mostrar el dataframe ordenado
peliculas_df[indices_menor_mayor,]

# guardar el dataframe ordenado
dataF_ordenado <- peliculas_df[indices_mayor_menor,]


# Hecho con gusto por Rafa @GonzalezGouveia
# Para aprender más sobre R 
# Suscribete en YouTube  https://bit.ly/2WNDhNR
