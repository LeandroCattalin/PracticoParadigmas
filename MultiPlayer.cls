"Filed out from Dolphin Smalltalk 7"!

Juego subclass: #MultiPlayer
	instanceVariableNames: 'maximo online'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MultiPlayer guid: (GUID fromString: '{E12DF364-E908-4283-9AE8-A166B50B9B4D}')!
MultiPlayer comment: ''!
!MultiPlayer categoriesForClass!Kernel-Objects! !
!MultiPlayer methodsFor!

init:unId titulo:unTitulo genero:unGenero plataforma:unaPlataforma peso:unPeso consumo:unConsumo maximo:unMaximo online:unBooleano
""
super init:unId titulo:unTitulo genero:unGenero plataforma:unaPlataforma peso:unPeso consumo:unConsumo.
""
maximo:=unMaximo.
online:=unBooleano.!

modMaximo:unMaximo
"Modifica el maximo de juegadores"
maximo:=maximo.!

modOnline:unBool
"Modifica si es o no online"
online:=unBool.!

verMaximo
"Devuelve el maximo de jugadores"
^maximo.!

verOnline
"Devuelve verdadero si es online"
^online.! !
!MultiPlayer categoriesFor: #init:titulo:genero:plataforma:peso:consumo:maximo:online:!public! !
!MultiPlayer categoriesFor: #modMaximo:!public! !
!MultiPlayer categoriesFor: #modOnline:!public! !
!MultiPlayer categoriesFor: #verMaximo!public! !
!MultiPlayer categoriesFor: #verOnline!public! !

!MultiPlayer class methodsFor!

crear: unId titulo: unTitulo genero: unGenero plataforma: unaPlataforma peso: unPeso consumo: unConsumo maximo:unMaximo online:unBoolean
""
^super new init:unId titulo: unTitulo genero: unGenero plataforma: unaPlataforma peso: unPeso consumo: unConsumo maximo:unMaximo online:unBoolean.! !
!MultiPlayer class categoriesFor: #crear:titulo:genero:plataforma:peso:consumo:maximo:online:!public! !

