"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Juego
	instanceVariableNames: 'consumo genero id peso plataforma titulo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Juego guid: (GUID fromString: '{706A0EF9-B5DC-4CD5-B110-51832D13E5DA}')!
Juego comment: ''!
!Juego categoriesForClass!Kernel-Objects! !
!Juego methodsFor!

init:unId titulo:unTitulo genero:unGenero plataforma:unaPlataforma peso:unPeso consumo:unConsumo
"Inicializa la clase juego"
id:=unId.
titulo:=unTitulo.
genero:=unGenero.
plataforma:=unaPlataforma.
peso:=unPeso.
consumo:=consumo.!

modConsumo:unInteger
"Modifica el consumo"
consumo:=unInteger.!

modGenero:unString
"Modifica el genero del juego"
genero:=unString.!

modId:unInteger
"Modifica la id del juego"
id:=unInteger.!

modPeso:unInteger
"Modificado el peso del juego"
peso:=unInteger.!

modPlataforma:unString
"Modificar la plataforma del Juego"
plataforma:=unString.!

modTitulo:unString
"Modificar titulo del juego"
titulo:=unString.!

verConsumo
"Devuelve el consumo"
^consumo.!

verGenero
"Devuelve el genero"
^genero.!

verId
"Devuelve la id"
^id.!

verPeso
"Devuelve el peso"
^peso.!

verPlataforma
"Devuelve la plataforma"
^plataforma.!

verTitulo
"Devuelve el titulo del juego"
^titulo.! !
!Juego categoriesFor: #init:titulo:genero:plataforma:peso:consumo:!public! !
!Juego categoriesFor: #modConsumo:!public! !
!Juego categoriesFor: #modGenero:!public! !
!Juego categoriesFor: #modId:!public! !
!Juego categoriesFor: #modPeso:!public! !
!Juego categoriesFor: #modPlataforma:!public! !
!Juego categoriesFor: #modTitulo:!public! !
!Juego categoriesFor: #verConsumo!public! !
!Juego categoriesFor: #verGenero!public! !
!Juego categoriesFor: #verId!public! !
!Juego categoriesFor: #verPeso!public! !
!Juego categoriesFor: #verPlataforma!public! !
!Juego categoriesFor: #verTitulo!public! !

!Juego class methodsFor!

crearJuego:unId titulo:unTitulo genero:unGenero plataforma:unaPlataforma peso:unPeso consumo:unConsumo
""
^(super new) init:unId titulo: unTitulo genero: unGenero plataforma: unaPlataforma peso: unPeso consumo: unConsumo.! !
!Juego class categoriesFor: #crearJuego:titulo:genero:plataforma:peso:consumo:!public! !

