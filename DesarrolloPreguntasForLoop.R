#Tarea2BigData For-Loop

#Ejercicio 1 (3 ptos): Las mp tienen los nombres de las personas 
#a las cuales están asociadas,realice una función que cuente 
#cuántos niños hay por cada una, y entregue una estadística
#de cuántos niños hay por mp.

#Borrar datos
rm(list=ls())
#Datos
listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

listaFinal <- list()
cantidadof <- 0
listaFinal
cantidadmp <- 0

for(medidasdeproteccionyoficio in listaDocumentos){
  if(medidasdeproteccionyoficio[1]=="mp"){
    cantidadmp <- cantidadmp+1
    medidasdeproteccionyoficio <- medidasdeproteccionyoficio[-1]
    print(paste("Se cuentan con mp de",length(medidasdeproteccionyoficio),"niños"))
  }else{
    cantidadof <- cantidadof+1
  }
  listaFinal <- c(listaFinal,medidasdeproteccionyoficio)
}  

print(paste("los ninos mp son:",cantidadmp))
print(paste("la cantidad de ninos son:",cantidadof))

#Ejercicio 2 (3 ptos): Los oficios están compuestos por el código 
#al cual pertenecen, construya una función que almacene los códigos 
#y las temáticas a las que están asociadas.

#Borrar datos
rm(list=ls())
#Datos
listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

for(medidasdeproteccionyoficio in listaDocumentos){
  if(medidasdeproteccionyoficio[1]=="of")
    medidasdeproteccionyoficio <- print(medidasdeproteccionyoficio[-1])
}

#Ejercicio 3(2 ptos): Construya una función que actúe de juez y retorne 
#aprobada o reprobada para los diferentes oficios, y entregue la cantidad 
#que hay de cada una.

#Borrar datos
rm(list=ls())
#Datos
listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))
cantidadof <- 0
cantidadaprobados <- 0
cantidadreprobados <- 0

for(medidasdeproteccionyoficio in listaDocumentos){
  if(medidasdeproteccionyoficio[1]=="of"){
    cantidadof <- cantidadof+1
    nuevosdatos <- medidasdeproteccionyoficio[-1]
    if(nuevosdatos[2:3]=="ampr"||nuevosdatos[2:3]=="dape"||nuevosdatos[2:3]=="arme"){
      cantidadaprobados <- cantidadaprobados+1
    }else if(nuevosdatos[2:3]=="meca"||nuevosdatos[2:3]=="ante"){
      cantidadreprobados <- cantidadreprobados+1
    }
  }
}
print(paste("Llegaron",cantidadof,"oficios de los cuales:",cantidadaprobados,"son aprobados y",cantidadreprobados,"reprobados."))


