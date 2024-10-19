"Filed out from Dolphin Smalltalk 7"!

Object subclass: #EmuladorConsola
	instanceVariableNames: 'nombre libre usado c_juegos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
EmuladorConsola guid: (GUID fromString: '{B80EB983-8F84-4D74-BB75-5331E2DFCDB9}')!
EmuladorConsola comment: ''!
!EmuladorConsola categoriesForClass!Kernel-Objects! !
!EmuladorConsola methodsFor!

agregarJuego:unJuego
"Añado al final de la coleccion un nuevo juego"
c_juegos add:unJuego.!

elminarJuego:unJuego
"Elimino un juego de la coleccion o devuelve nil si no esta incluido en la coleccion"
c_juegos remove:unJuego ifAbsent:[^nil].!

existe:unJuego
"Devulve un juego si exista en la coleccion"
^c_juegos includes: unJuego.!

init:unNombre memoria:unEspacio
"Nombre"
nombre:=unNombre.
"Espacio total de la consola"
libre:=unEspacio.
"Espacio utilizado. *Inicializa en cero"
usado:=0.
"Coleccion de juegos"
c_juegos:= OrderedCollection new.!

isEmpty
"Devuelve verdadero si esta vacio"
^c_juegos isEmpty.!

modLibre:unInteger
"Modifico el espacio maximo"
libre:=unInteger.!

modNombre:unString
"Cambia el nombre de la consola"
nombre:=unString.!

modUsado:unInteger
"Modifica el espacio utilizado por los juegos"
usado:=unInteger.!

recuperarJuego:indice
"Devuelve un juego asociado a un indice"
^c_juegos at:indice.!

tamanio
"Devuelve la cantidad de juegos"
^c_juegos size.!

verLibre
"Devuelve el espacio libre"
^libre.!

verNombre
"Devuelve el nombre"
^nombre.!

verTodos
"Devuelve la coleccion"
^c_juegos.!

verUsado
"Devuelve el espacio usado"
^usado.! !
!EmuladorConsola categoriesFor: #agregarJuego:!public! !
!EmuladorConsola categoriesFor: #elminarJuego:!public! !
!EmuladorConsola categoriesFor: #existe:!public! !
!EmuladorConsola categoriesFor: #init:memoria:!public! !
!EmuladorConsola categoriesFor: #isEmpty!public! !
!EmuladorConsola categoriesFor: #modLibre:!public! !
!EmuladorConsola categoriesFor: #modNombre:!public! !
!EmuladorConsola categoriesFor: #modUsado:!public! !
!EmuladorConsola categoriesFor: #recuperarJuego:!public! !
!EmuladorConsola categoriesFor: #tamanio!public! !
!EmuladorConsola categoriesFor: #verLibre!public! !
!EmuladorConsola categoriesFor: #verNombre!public! !
!EmuladorConsola categoriesFor: #verTodos!public! !
!EmuladorConsola categoriesFor: #verUsado!public! !

!EmuladorConsola class methodsFor!

crear:unNombre memoria:unaMemoria
"Constructor de objetos"
^self new init:unNombre memoria:unaMemoria.! !
!EmuladorConsola class categoriesFor: #crear:memoria:!public! !

