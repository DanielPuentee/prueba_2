setwd("C:/Users/Daniel Puente/Desktop/DEMO")
dir()
datos <- read.csv("ccaa_covid19_casos.csv",encoding = "UTF-8")
dim(datos)
print(datos$CCAA)

pais_vasco<-datos[datos$CCAA=="País Vasco",]
cataluña<-datos[datos$CCAA=="Cataluña",]
madrid<-datos[datos$CCAA=="Madrid",]

plot(t(pais_vasco[-c(1:2)]),type="l",col="red")
par(new=T)
plot(t(cataluña[-c(1:2)]),type="l",col="green")
par(new=T)
plot(t(madrid[-c(1:2)]),type="l",col="blue")
