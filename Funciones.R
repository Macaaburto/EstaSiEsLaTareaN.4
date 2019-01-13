
source ('Funciones.R')

# RUTs_validos: Generar numeros de rut y almacenar en una lista
# Generar 5000 numeros aleatorios entre 0: 9999999 sin repeticion
# Cada uno acompañado de su dv

RUTs_validos  <-list ()
for (i in sample (0000000:9999999,5000,replace=F)){
  rut<- print(paste(i,"-",dv(i)))
  Ruts_validos<-c(Ruts_validos,rut)
}

# t: tiempo que se demora en ejecutar un codigo
# def t: tiempo que se demora en recorrer la lista Ruts_validos

t <-proc.time ()
for(rut in Ruts_validos ) {
  print(rut)
}
proc.time() - t


#   user  system elapsed 
# 84.49    0.33   94.50 # 

  # R: El tiempo de ejecucion del cod es 94.5 segundos


##Ejercicio n° 8

"Receta de diseño"
"contarSaldoNegativo -> int"
"Definicion: ContarSaldoNegativo"
"Ejemplo:"

clientes <- list (list(1,"Maca",-35000),list(2,"Patricio",-67500),list(3,"Aracely",1550),list(4,"Veronica",-28000))

contarSaldoNegativo <- function(listaclientes){
  GenteSaldoNegativo <- 0
  for (cliente in listaclientes){
    if (cliente[3] < 0){
      GenteSaldoNegativo<- (GenteSaldoNegativo+1)
    }
  }
  return(GenteSaldoNegativo)
}

#Test

contarSaldoNegativo(clientes)


#Ejercicio n°9

"Receta de diseño"
"sinvocales: string -> string sin vocales"
"Definicion sinvocales: Introducir x frase que sea devuelta sin las vocales"
"Ejemplos: Chile campeon , El partido termino con 0 goles "

sinVocales <- function(oracion){
  stringsinvocales <- ""
  strspliteada <- strsplit(oracion, "")[[1]]  
  for (letra in strspliteada){
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && letra != "A" && letra != "E"
       && letra != "I" && letra != "O" && letra != "U") {
      stringsinvocales <- paste(stringsinvocales, letra, sep="")
    }
  }
  return(stringsinvocales)
}

#Test

Frase <- "Chile campeon"
sinVocales(Frase)
Frase_2 <- "El partido termino con 0 goles"
sinVocales(Frase_2)