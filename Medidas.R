
#_____________________ MEDIDAS ___________________

# Se trabajará con la matriz de datos "penguins.xlsx"

#1.- Importación de matriz
#Import Dataset/ from excel/ Browser/ seleccionar
#archivo/ aceptar/ (visualizar)/ import

#2.- Acortar el nombre de la matriz de datos
BD<-penguins

#-----------------------------------------------
#Exploración de matriz
#-----------------------------------------------

dim(BD)
str(BD)
colnames(BD)
anyNA(BD)

#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------

# 1.- Media y mediana
summary(penguins)

# 2.- Moda

# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")

# 2.2.- Se abre la librería
library(modeest)

# 2.3.- Cálculo de la moda para la variable isla y largo del pico

mfv(BD$isla) # categorica
mfv(BD$largo_pico_mm) # numerica
mfv(BD$largo_aleta_mm) # numerica
mfv(BD$grosor_pico_mm) # numerica

#-----------------------------------------------
#      Medidas de dispersión
#-----------------------------------------------

# 1.- Cálculo de la varianza (sólo para variables cuantitativas)
var(BD$grosor_pico_mm)

# 2.- Cálculo de la desviación estándar
sd(BD$grosor_pico_mm)

# 3.- Error

media_pico<-mean(BD$largo_pico_mm)
media_pico
error<-(BD$largo_pico_mm-(media_pico))
error


#4.- Coeficiente de variacion

CV<- sd(BD$largo_pico_mm)/mean(BD$largo_pico_mm)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(BD$largo_pico_mm)

# 6.- Rango

pico<-BD$largo_pico_mm
pico
max(pico)
min(pico)

rango<-max(pico)-min(pico)
rango

#-----------------------------------------------
#    Medidas de posición
#------------------------------------------------

# 1.- Cuartiles
summary(BD)

# 2.- Quintil
quintil<-quantile(BD[["largo_aleta_mm"]], 
                  p=c(.20, .40, .60, .80))
#No poner .10 porque representa otro valor

quintil

# 3.- Decil
decil<-quantile(BD[["largo_aleta_mm"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil

# Percentil
percentil<-quantile(BD[["largo_aleta_mm"]], 
                    p=c(.33, .66, .99))
percentil

# Interpretacion:
# <192 = Bajo
# 192-209 = Intermedio
# > 209 = Alto

#----------------------------------------------------
#                   Ejercicio 1
#----------------------------------------------------
# 1.- Media y mediana
summary(BD)

# Variable - masa corporal
#La media es 4202 y la mediana 4050

# 2.- Moda

# Cálculo de la moda para la variable masa corporal
mfv(BD$masa_corporal_g) # numerica
# La moda de la variable es 3700 y 3800

#-----------------------------------------------
#      Medidas de dispersión
#-----------------------------------------------

# 1.- Cálculo de la varianza (sólo para variables cuantitativas)
var(BD$masa_corporal_g)
# La varianza es de 641436.2

# 2.- Cálculo de la desviación estándar
sd(BD$masa_corporal_g)
# La desviación estandar es 800.8971

# 3.- Error
media_masa<-mean(BD$masa_corporal_g)
media_masa
# La media de la masa es 4202.253

error<-(BD$masa_corporal_g-(media_masa))
error


#4.- Coeficiente de variacion
CV<- sd(BD$masa_corporal_g)/mean(BD$masa_corporal_g)*100
CV
# El coeficiente de variacion es 19.05876

# 5.- Rango intercuartilico (IQR)
IQR(BD$masa_corporal_g)
# El rango intercuartilico es 1206.25

# 6.- Rango
masa<-BD$masa_corporal_g
masa
max(masa)
min(masa)
# El valor maximo (Q3) de masa es 6300 y 
# El valor minimo (Q1) de masa es 2700

rango<-max(pico)-min(pico)
rango
# El rango es 27.5

#-----------------------------------------------
#    Medidas de posición
#------------------------------------------------

# 1.- Cuartiles
summary(BD)

# 2.- Quintil
quintil<-quantile(BD[["masa_corporal_g"]], 
                  p=c(.20, .40, .60, .80))

quintil
# Los quintiles son 3475 3800 4300 4950

# 3.- Decil
decil<-quantile(BD[["largo_aleta_mm"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil
# Los deciles son 185 188 191 194 197 203 210 215 221 

# Percentil
percentil<-quantile(BD[["largo_aleta_mm"]], 
                    p=c(.33, .66, .99))
percentil
# Los percentiles son 192 209 230 

