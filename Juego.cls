"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Juego
	instanceVariableNames: 'id titulo genero plataforma consumoRam conjJuegos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Juego guid: (GUID fromString: '{7DE3A75C-B2B9-470A-9625-5C2565FB2402}')!
Juego comment: ''!
!Juego categoriesForClass!Unclassified! !
!Juego methodsFor!

init:unId tit:unTit gen:unGen plat:unPlat cons:unCons

id:=unId.
titulo:=unTit.
genero:=unGen.
plataforma:=unPlat.
consumoRam:=unCons.
conjJuegos:= OrderedCollection new.!

modCons:unCons
consumoRam:=unCons.!

modId:unId
id:=unId.!

modPlat:unPlat
plataforma:=unPlat.!

modTit:unTit
titulo:=unTit.!

verCons
^consumoRam!

verId
^id!

verPlat
^plataforma!

verTit
^titulo! !
!Juego categoriesFor: #init:tit:gen:plat:cons:!public! !
!Juego categoriesFor: #modCons:!public! !
!Juego categoriesFor: #modId:!public! !
!Juego categoriesFor: #modPlat:!public! !
!Juego categoriesFor: #modTit:!public! !
!Juego categoriesFor: #verCons!public! !
!Juego categoriesFor: #verId!public! !
!Juego categoriesFor: #verPlat!public! !
!Juego categoriesFor: #verTit!public! !

!Juego class methodsFor!

crear: unId tit:unTitulo gen:unGenero plat:unPlataforma cons:unConsumoRam
 ^self new init:unId tit:unTitulo gen:unGenero plat:unPlataforma cons:unConsumoRam.! !
!Juego class categoriesFor: #crear:tit:gen:plat:cons:!public! !

