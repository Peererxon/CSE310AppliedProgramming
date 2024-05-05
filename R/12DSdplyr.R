# Hecho con gusto por Rafa @GonzalezGouveia

# T3V2 - manipulación de datos

#Dplyr es una herramienta para manejo de datos de R
# Es parte del Tidyverse y la herramienta trabaja con "verbos":

#mutate crea nuevas vairables
#select toma vairblaes segun nombre
#filter toma variables segun condicion
#summarise reduce muchos valores en un unico resumen
#arrange cambia el orden de los datos
#group_by hace varias operaciones por grupo (combina los verbos)


# Objetivo: diferenciar formas de graficar en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. cargar datos de gapminder
# 2. filtrar datos
# 3. hacer resumenes de datos

################################
# 1. cargar datos de gapminder #
################################

# instalando paquete con los datos
# install.packages("gapminder")

# cargando paquete con los datos
library(gapminder) #datos demogradicos de los paises

# cargando datos a entorno
data(gapminder)

# cargando datos a entorno
head(gapminder)

##############################
# 2. filtrar datos con dplyr #
##############################

# install.packages("tidyverse")
library(tidyverse)

# filtrar datos por pais sin %>% 
filter(gapminder, country == "Mexico")

# filtrar datos por pais
# para hacer %>% en RStudio (cntrl + shift + M)
gapminder %>%
  filter(country == "Mexico")

# filtrar datos por año
gapminder %>% 
  filter(year == 2002)

# filtrar paises con esperanza de vida 
# menor o igual a 40 y el año en 2002

gapminder %>% 
  filter(lifeExp <= 40,
         year == 2002)

###############################
# 3. hacer resumenes de datos #
###############################

# cantidad de paises en Asia
gapminder %>% 
  filter(continent == "Asia",
         year == 2007) %>% 
  summarise(conteo =  n()) # esta ultima linea n() cuenta la fila que devolvio el filter 

# maxima esparanza de vida
gapminder %>% 
  summarise(max_lifeExp = max(lifeExp))

# agrupando esperanza de vida promedio por año
gapminder %>% 
  group_by(year) %>% 
  summarise(prom_vida = mean(lifeExp))

