# Hecho con gusto por Rafa @GonzalezGouveia

# T2V4 - graficar en R

# Objetivo: diferenciar formas de graficar en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. graficar con base graphics
# 2. graficar con ggplot2

# datos de la primera parte
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)

# graficando con codigo
plot(
  x= year,
  y= disney
)


# editando la grafica
plot(
  x= year,
  y= disney,
  xlab = "",
  ylab = "",
  col= "cornflowerblue",#color de los puntos,
  pch=20, #relleno de los puntos,
  panel.first= grid() #le da lineas a la grafica
)







# Graficas con ggplot2
# install.package(ggplot2) # para instalar ggplot2

#Gramaticas de los graficos:
#layers 
#En ggplot son Datos, Mapping y Geometria
library(ggplot2)

# hacer dataframe
peliculas <- data.frame(year, 
                        disney)

# graficar utilizando ggplot
ggplot(data = peliculas, #datos
       mapping = aes(x = year,
                     y = disney)) + #mapping
  # cada "+" es para agregar una capa
  geom_point() + #geometria
  labs(title = "disney")


# Galeria de graficas en R:
# -------------------------
#https://r-graph-gallery.com


# fin
