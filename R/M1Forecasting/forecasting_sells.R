
#Optional
#installing libraries
install.packages(c("forecast", "ggplot2", "readxl")) #using vector
install.packages("tidyverse")
# Loading libraries
library(forecast)
library(ggplot2)
library(readxl)
library(tidyverse)

#Getting the actual directory
working_directory <- getwd(); #using string
path_relativo <- paste(working_directory,"/M1Forecasting/Relacion_Mensual.xls", sep = "") #creating a  relative path

# Reading file .xls
sell_data <- read_excel(path_relativo, range = "E1:E18") #using tible 
data <- read_excel(path_relativo)

#changing title of the Dataframe using a vector of string
names(sell_data) <- c("Ventas")

#invert data order 
invert_data <- apply(sell_data,2,rev)
print(invert_data)

# Converting data in a time series
serie_tiempo <- ts(invert_data)

# Ajusting into a ARIMA Model
modelo <- auto.arima(serie_tiempo)

# Making the forecast
precision_level <- 90 #using number
forecast_periods <- 25
prediccion <- forecast(modelo, h = forecast_periods, level = precision_level)


# Graph the forecast
autoplot(prediccion, xlab = "Meses", ylab = "Ventas")

#Using tidy to filter the data
data %>% 
  dplyr::group_by(Período) %>% 
  dplyr::summarise(
    max_sell_registered = max(`Total Bruto`), 
    medium_sell_months = mean(`Total Bruto`)
  )
  

#maximum amount of sells in a month
max_sell <- data %>%
  dplyr::summarise(
    max_sell_registered = max(`Total Bruto`)
  )
print(max_sell)

#ordered by sells in a month
data %>% 
  dplyr::arrange(`Total Bruto`) 
#arrange determines the order  for the list


#Printing .xls data 
index <- 0
for (period in data$Período){
  index <- index + 1
  cat(
    "Sell in month ",
    data$Período[index],
    "amount ",data$`Total Bruto`[index]
    
    )
  print(".")
}

iscompleted <- TRUE #boolean

#gathering all the data in a list
all_data_list = list(data,invert_data) #list

