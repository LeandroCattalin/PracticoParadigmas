# PracticoParadigmas

## Inciso 6 - Gestión de juegos de consola

- **Se requiere desarrollar un sistema que simule una Consola de Videojuegos.** 

- La consola (Clase compuesta).

___Debe ser capaz de gestionar **distintos juegos**

___Se debe tener cuidado de que los **juegos que se cargan NO EXCEDAN la 
capacidad total de almacenamiento de la consola**.

___Reconoce entre SinglePlayer y MultiPlayer.

___(Justificacion de la **collection dictionary**)
El sistema debe permitir cargar tantos juegos como desee a la consola, así como buscar por id

Clave -> id
Valor -> Objeto

___Se puede modificar y eliminar los juegos cargados.

___(**Uso de mensajes iteradores de collecciones*)
A su vez, el usuario desea poder consultar el consumo de RAM promedio de todos los juegos.

___ejemplo:
**totalJuegos:= juegos size**
**consumos:= juegos collect: [:cadaJuego | cadaJuego value]**
**suma:= 0 into: [:total :consumo | total + consumo]**
**promedio := suma / totalJuegos.**

___(**NO ENTIENDO**)
(**Solucion -> Hay una sola consola, Clase de instancia unica, que te acepta todos los juegos y plataformas, y ahi podes ir filtrando**)
Al emular una consola, ¿emulo uno a la vez?, muchas veces se necesita conocer el listado de juegos disponibles. 
ya que dependiendo de la plataforma es lo que se va a permitir jugar. 
por lo que el usuario debe poder filtrar en base a su plataforma de preferencia.

___(Generar una colleccion que no tengan esta modalidad, iterador **reject: aBlock**)
Ante distintas eventualidades, puede que se dé el caso donde los usuarios no puedan jugar 
online, por lo que se debe poder generar el listado de juegos que no tengan esta modalidad.

___(Generar collecion que tenga algun tipo de clasificacion segun GENERO)
Finalmente, el sistema debe permitir generar un diccionario con la cantidad de juegos de los 
que se dispone clasificados por género

- juego (Clase Abstracta - SuperClase de **SinglePlayer** y **MultiPlayer**)

Se conoce **ID del juego, título, GENERO, PESO, PLATAFORMAS COMPATIBLES y CONSUMO DE RAM**. 

. SinglePlayer (Clase simple)

Se conoce **Duración de campaña**

. MultiPlayer (Clase simple)

Se conoce **máximo de jugadores, si es ONLINE o no.**