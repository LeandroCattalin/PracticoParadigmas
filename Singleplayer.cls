"Filed out from Dolphin Smalltalk 7"!

Juego subclass: #Singleplayer
	instanceVariableNames: 'duracionCampana'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Singleplayer guid: (GUID fromString: '{57BD27E4-831B-464C-A8A0-08074430E3B9}')!
Singleplayer comment: ''!
!Singleplayer categoriesForClass!Kernel-Objects! !
!Singleplayer methodsFor!

init: unId tit: unTit gen: unGen plat: unPlat cons: unCons dur:unDur
duracionCampana:=unDur.
^super init: unId tit: unTit gen: unGen plat: unPlat cons: unCons.!

modDur:unDur
duracionCampana:=unDur.!

verDur
^duracionCampana.! !
!Singleplayer categoriesFor: #init:tit:gen:plat:cons:dur:!public! !
!Singleplayer categoriesFor: #modDur:!public! !
!Singleplayer categoriesFor: #verDur!public! !

!Singleplayer class methodsFor!

crearSingle: unId tit: unTit gen: unGen plat: unPlat cons: unCons dur:unDur
^(super new)init: unId tit: unTit gen: unGen plat: unPlat cons: unCons dur: unDur.! !
!Singleplayer class categoriesFor: #crearSingle:tit:gen:plat:cons:dur:!public! !

