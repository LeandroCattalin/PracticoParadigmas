"Filed out from Dolphin Smalltalk 7"!

Juego subclass: #Multiplayer
	instanceVariableNames: 'totalJugadores online'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Multiplayer guid: (GUID fromString: '{89965D59-2F95-4A7E-80AF-72AF06AF0FA0}')!
Multiplayer comment: ''!
!Multiplayer categoriesForClass!Kernel-Objects! !
!Multiplayer methodsFor!

init: unId tit: unTit gen: unGen plat: unPlat cons: unCons totJug:unTot onl:unOnl
totalJugadores:=unTot.
online:=unOnl.
^super init: unId tit: unTit gen: unGen plat: unPlat cons: unCons.!

modOnline:unOnl
online:=unOnl.!

modTotJug:unTotJug
totalJugadores:=unTotJug.!

verOnline
^online.!

verTotJug
^totalJugadores.! !
!Multiplayer categoriesFor: #init:tit:gen:plat:cons:totJug:onl:!public! !
!Multiplayer categoriesFor: #modOnline:!public! !
!Multiplayer categoriesFor: #modTotJug:!public! !
!Multiplayer categoriesFor: #verOnline!public! !
!Multiplayer categoriesFor: #verTotJug!public! !

!Multiplayer class methodsFor!

crearMulti: unId tit: unTit gen: unGen plat: unPlat cons: unCons tot:unTot onl:unOnl
^(super new) init: unId tit: unTit gen: unGen plat: unPlat cons: unCons tot:unTot onl:unOnl.! !
!Multiplayer class categoriesFor: #crearMulti:tit:gen:plat:cons:tot:onl:!public! !

