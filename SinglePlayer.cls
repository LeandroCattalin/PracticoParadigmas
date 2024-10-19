"Filed out from Dolphin Smalltalk 7"!

Juego subclass: #SinglePlayer
	instanceVariableNames: 'duracion'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SinglePlayer guid: (GUID fromString: '{0E5C45CB-343F-4056-B3FB-756BCE58D258}')!
SinglePlayer comment: ''!
!SinglePlayer categoriesForClass!Kernel-Objects! !
!SinglePlayer methodsFor!

init:unId titulo:unTitulo genero:unGenero plataforma:unaPlataforma peso:unPeso consumo:unConsumo duracion:unaDuracion
"Mando a inicializar a superclase"
super init:unId titulo:unTitulo genero:unGenero plataforma:unaPlataforma peso:unPeso consumo:unConsumo.
duracion:=unaDuracion.!

modDuracion:unaDuracion
"Modifica la duracion del singleplayer"
duracion:=unaDuracion.!

verDuracion
"Devuelve la duracion del juego"
^duracion.! !
!SinglePlayer categoriesFor: #init:titulo:genero:plataforma:peso:consumo:duracion:!public! !
!SinglePlayer categoriesFor: #modDuracion:!public! !
!SinglePlayer categoriesFor: #verDuracion!public! !

!SinglePlayer class methodsFor!

crear: unId titulo: unTitulo genero: unGenero plataforma: unaPlataforma peso: unPeso consumo: unConsumo duracion:unaDuracion
""
^(super new) init:unId titulo: unTitulo genero: unGenero plataforma: unaPlataforma peso: unPeso consumo: unConsumo duracion:unaDuracion.! !
!SinglePlayer class categoriesFor: #crear:titulo:genero:plataforma:peso:consumo:duracion:!public! !

