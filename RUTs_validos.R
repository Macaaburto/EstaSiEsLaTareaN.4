
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