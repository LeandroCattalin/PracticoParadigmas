"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Consola
	instanceVariableNames: 'nombre espacio conJuegos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Consola guid: (GUID fromString: '{3DF8C52D-184D-4866-A35A-8A9945C51D41}')!
Consola comment: ''!
!Consola categoriesForClass!Kernel-Objects! !
!Consola methodsFor!

agregar:unJuego
conJuegos add:unJuego.!

eliminar:unJuego
conJuegos remove:unJuego ifAbsent:[^nil].!

esVacio
^conJuegos isEmpty.!

existe:unJuego
^conJuegos includes: unJuego.!

init:unNom esp:unEsp
nombre:=unNom.
espacio:=unEsp.
conJuegos:= OrderedCollection new.!

modEspacio:unEsp
espacio:=unEsp.!

modNombre:unNom
nombre:=unNom.!

recuperar: i
conJuegos at:i.!

tamanio
^conJuegos size.!

verEspacio
^espacio.!

verNombre
^nombre.!

verTodos
^conJuegos.! !
!Consola categoriesFor: #agregar:!public! !
!Consola categoriesFor: #eliminar:!public! !
!Consola categoriesFor: #esVacio!public! !
!Consola categoriesFor: #existe:!public! !
!Consola categoriesFor: #init:esp:!public! !
!Consola categoriesFor: #modEspacio:!public! !
!Consola categoriesFor: #modNombre:!public! !
!Consola categoriesFor: #recuperar:!public! !
!Consola categoriesFor: #tamanio!public! !
!Consola categoriesFor: #verEspacio!public! !
!Consola categoriesFor: #verNombre!public! !
!Consola categoriesFor: #verTodos!public! !

!Consola class methodsFor!

crear:unNombre esp:unEsp
^self new init: unNombre esp:unEsp.! !
!Consola class categoriesFor: #crear:esp:!public! !

