# PracticoParadigmas

Inciso 6 - Gestión de juegos de consola
Se requiere desarrollar un sistema que simule una Consola de Videojuegos. La consola debe 
ser capaz de gestionar distintos juegos de los que se conoce id del juego, título, género, peso, 
plataformas compatibles y consumo de ram. A su vez, debe comprender los que sean 
SinglePlayer con su duración de campaña y los MultiPlayer con el máximo de jugadores y si 
es online o no. Se debe tener cuidado de que los juegos que se cargan NO EXCEDAN la 
capacidad total de almacenamiento de la consola.
El sistema debe permitir cargar tantos juegos como desee a la consola, así como buscar por 
id. Esto va a permitir filtrarlos más rápido, así como recuperarlos para poder modificarlos y 
eliminarlos.
A su vez, el usuario desea poder consultar el consumo de RAM promedio de todos los juegos.
Al emular una consola, muchas veces se necesita conocer el listado de juegos disponibles, 
ya que dependiendo de la plataforma es lo que se va a permitir jugar, por lo que el usuario 
debe poder filtrar en base a su plataforma de preferencia.
Ante distintas eventualidades, puede que se dé el caso donde los usuarios no puedan jugar 
online, por lo que se debe poder generar el listado de juegos que no tengan esta modalidad.
Finalmente, el sistema debe permitir generar un diccionario con la cantidad de juegos de los 
que se dispone clasificados por género
