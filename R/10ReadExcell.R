####################
#                  #
# Copia todo esto! #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# T2V2 - importar datos de excel a R

# Objetivo: aprender a importar datos de excel a R
# ------------------------------------------------
# En este ejercicio vamos a aprender:
# 1. Que necesitas antes de empezar
# 2. Cómo importar datos utilizando código de R
# 3. Cómo importar datos con la interfaz de RStudio


#Cuando se importa un excell a R este pasa a ser un DataFrame


#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readxl
install.packages("readxl")

# cargar paquete readxl
library("readxl")

# buscar la ruta del archivo de excel
file.choose()

# Copiar ruta de la consola y guardar en variable
ruta_archivo <- "/Users/andersongil/Documents/peererxon/byu/CSE310Programming/R/excellFiles/10_gapminder_R.xlsx"

# como mirar las hojas de tu excel
excel_sheets(ruta_archivo) #Regresa los nombres de las hojas de excell

#####################################
# 2. importar excel con código de R #
#####################################

# importar caso ideal
caso_ideal <- read_excel(ruta_archivo)

#caso_ideal es un "tibble" que es algo muy similar a un DataFrame

# importar caso medio
caso_medio <- read_excel(ruta_archivo, sheet = "Hoja2") #esto importa la hoja 2


# importar caso dificil
caso_dificil <- read_excel(ruta_archivo, 
                           sheet = "Hoja3", 
                           range = "C7:F17")
#Para cuando los datos no empiezan en la celda "A1"
#Puede ser porque solo necesitas una parte de los datos, o porque estos esten desorganizados

#Si lo importas por la UI te da el codigo que necesitas para hacerlo (el mismo aqui escrito)
##########################################
# 3. importar excel con interfaz RStudio #
##########################################

# ir a File > Import Dataset > From Excel...



# fin