| consola  nom mem op ejecucion shell IDs juego|

"Comienzo Programa"
MessageBox notify: 'Inicializando consola.'.
MessageBox notify: 'Complete los datos.'.

"Nombre del emulador"
nom:=Prompter prompt: 'Nombre del emulador'.

"Bloque para asegurar la asignacion correcta de memoria"
i_mem:=true.

[i_mem == false ] whileFalse: [
	"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
	mem:=[ (Prompter prompt: 'Ingrese la capacidad de la memoria del emulador en byte')  asNumber] 
	on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
	"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
	(mem == 0) ifFalse: [
		i_mem:=false.	
	].
	"Se ingreso un cero"
	(mem == 0) ifTrue: [
		MessageBox warning: 'El formato debe ser un numero entero mayor que cero que represente la cantidad de byte'.
	].
].

"Creo mi objeto de instancia unica"
consola:= EmuladorConsola crear: nom memoria: mem.

consola inspect.

"----------------------------------------------------------------MENU----------------------------------------------------------------"

Transcript clear.

"Coleccion de opciones"

opPr:= #('Agregar Juego' 'Eliminar Juego' 'Modificar Juego' 'Consultar juego' 'Filtrar por ID' 'Filtrar por Plataforma' 'Filtrar por Disponibilidad' 'Promedio de consumo' 'Generar diccionario por genero' 'Cerrar').

opJu:= #('SinglePlayer' 'MultiPlayer').

"Coleccion de generos"
generos:=#('Acción' 'Aventura' 'Rol (RPG)' 'Shooter' 'Estrategia' 'Simulación' 'Deportes' 'Pelea' 'Carreras' 'Plataformas').

plataformas:=#('PlayStation 5' 'Xbox Series X' 'Nintendo Switch' 'Atari 2600' 'Nintendo Wii' 'Sega Genesis' 'Super Nintendo').

"Variable que me condiciona la ejecucion del menu"
ejecucion:=true.

Transcript show: ejecucion printString ; cr.

"IDs de generacion"

IDs:=1.

"Loop de ejecucion"
[ejecucion] whileTrue: [

	"Muestro el menu al usuario"
	seleccion:=ChoicePrompter choices: opPr caption: 'Menu'.

	"BIFURCACIONES"

	(seleccion = 'Agregar Juego') ifTrue: [ "Agregando juego a la coleccion"
		MessageBox notify: 'Agregando Juego'.
		Transcript show: ejecucion printString ; cr.
		tipo:=ChoicePrompter choices: opJu caption: 'Tipo de juego'.
		"Bloque para agregar un sigleplayer"
		(tipo = 'SinglePlayer') ifTrue: [
			MessageBox notify: 'SinglePlayer'.
			titulo:=Prompter prompt: 'Ingrese el titulo del juego'.
			genero:=ChoicePrompter choices: generos caption: 'Genero del juego'.
			plataforma:=ChoicePrompter choices: plataformas caption: 'Plataforma del juego'.

			"Bloque para asegurar la asignacion correcta de memoria"
			f_mem:=true.
			"Bucle de asignacion"
			[f_mem == false ] whileFalse: [
				"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
				memoria:=[ (Prompter prompt: 'Ingrese la memoria que ocupa en bytes')  asNumber]
				on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
				"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
				(memoria == 0) ifFalse: [
					f_mem:=false.	
				].
				"Se ingreso un cero"
				(memoria == 0) ifTrue: [
					MessageBox warning: 'El formato debe ser un entero que represente el peso en bytes del juego'.
				].
			].

			"Bloque para asegurar la asignacion del consumo"
			f_con:=true.
			"Bucle de asignacion"
			[f_con == false ] whileFalse: [
				"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
				consumo:=[ (Prompter prompt: 'Ingrese el consumo de memoria RAM')  asNumber] 
				on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
				"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
				(consumo == 0) ifFalse: [
					f_con:=false.	
				].
				"Se ingreso un cero"
				(consumo == 0) ifTrue: [
					MessageBox warning: 'El formato debe ser un entero que represente el uso de memoria RAM en ejecucion'.
				].
			].

			"Bloque para asegurar la asignacion de la duracion"
			f_dur:=true.
			"Bucle de asignacion"
			[f_dur == false ] whileFalse: [
				"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
				duracion:=[ (Prompter prompt: 'Ingrese la duracion en horas')  asNumber] 
				on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
				"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
				(duracion == 0) ifFalse: [
					f_dur:=false.	
				].
				"Se ingreso un cero"
				(duracion == 0) ifTrue: [
					MessageBox warning: 'El formato debe ser un entero que represente la duracion de la campaña en horas'.
				].
			].
			"Creo un juego"
			juego:= SinglePlayer crear: IDs titulo: titulo genero: genero plataforma: plataforma peso: memoria consumo: consumo duracion: duracion.
		].
		
		"Bloque para agregar un multiplayer"
		(tipo= 'MultiPlayer') ifTrue: [
			MessageBox notify: 'MultiPlayer'.
			titulo:=Prompter prompt: 'Ingrese el titulo del juego'.
			genero:=ChoicePrompter choices: generos caption: 'Genero del juego'.
			plataforma:=ChoicePrompter choices: plataformas caption: 'Plataforma del juego'.

			"Bloque para asegurar la asignacion correcta de memoria"
			f_mem:=true.
			"Bucle de asignacion"
			[f_mem == false ] whileFalse: [
				"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
				memoria:=[ (Prompter prompt: 'Ingrese la memoria que ocupa en bytes')  asNumber]
				on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
				"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
				(memoria == 0) ifFalse: [
					f_mem:=false.	
				].
				"Se ingreso un cero"
				(memoria == 0) ifTrue: [
					MessageBox warning: 'El formato debe ser un entero que represente el peso en bytes del juego'.
				].
			].

			"Bloque para asegurar la asignacion del consumo"
			f_con:=true.
			"Bucle de asignacion"
			[f_con == false ] whileFalse: [
				"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
				consumo:=[ (Prompter prompt: 'Ingrese el consumo de memoria RAM')  asNumber] 
				on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
				"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
				(consumo == 0) ifFalse: [
					f_con:=false.	
				].
				"Se ingreso un cero"
				(consumo == 0) ifTrue: [
					MessageBox warning: 'El formato debe ser un entero que represente el uso de memoria RAM en ejecucion'.
				].
			].

			"Bloque para asegurar la asignacion del consumo"
			f_max:=true.
			"Bucle de asignacion"
			[f_max == false ] whileFalse: [
				"Formato -> [Codigo que genera error] on:Error do: [:ex| bloque en caso de error]"
				maximo:=[ (Prompter prompt: 'Ingrese el Maximo de jugadores')  asNumber] 
				on: Error do: [:ex | MessageBox errorMsg: 'Valor no valido'. 0.].
				"En caso de que no haya error o no se haya asignado 0  finalizo el bloque"
				(maximo == 0) ifFalse: [
					f_max:=false.	
				].
				"Se ingreso un cero"
				(maximo == 0) ifTrue: [
					MessageBox warning: 'El formato debe ser un entero que represente el maximo de jugadores'.
				].
			].
			
			online:= MessageBox confirm: '¿Es online?'.

			"Creo un juego"
			juego:= MultiPlayer crear: IDs titulo: titulo genero: genero plataforma: plataforma peso: memoria consumo: consumo maximo: maximo online: online.
		].
		"Bloque de Checkeo de memoria"
		espacio_libre:=consola verLibre.
		"Si hay suficiente espacio libre"
		(espacio_libre >= juego verPeso ) ifTrue: [
			"Agrego el juego"
			consola agregarJuego: juego.
			"Actualizo el espacio libre"
			consola modLibre: consola verLibre - juego verPeso.
			"Actualizo el espacio utilizado"
			consola modUsado: consola verUsado + juego verPeso.
			"Incremento el contador de IDs"
			IDs:=IDs + 1.
		]
		"Si no hay suficiente espacio libre"
		ifFalse:[
			MessageBox warning: 'No hay suficiente espacio para agregar este juego'.
		].
	].

	"Eliminar solo por juego sin ID ni nada o por solomante ID tengo que verlo"

	(seleccion = 'Eliminar Juego') ifTrue: [ "Eliminando un juego de la coleccion"
		MessageBox notify: 'Eliminar Juego'.
		
	].
	(seleccion = 'Modificar Juego') ifTrue: [ "Modificando un juego"
		MessageBox notify: 'Modificar Juego'.
	].
	(seleccion = 'Consultar juego') ifTrue: [ "Consulto un juego por orden de agregacion"
		MessageBox notify: 'Consultar juego'.
	].
	(seleccion = 'Filtrar por ID') ifTrue: [ "Obtengo un juego por su ID"
		MessageBox notify: 'Filtrar por ID'.
	].
	(seleccion = 'Filtrar por Plataforma') ifTrue: [ "Obtengo una coleccion de juegos por plataforma"
		MessageBox notify: 'Filtrar por Plataforma'.
	].
	(seleccion = 'Filtrar por Disponibilidad') ifTrue: [ "Obtengo una coleccion de juegos por disponibilidad"
		MessageBox notify: 'Filtrar por Disponibilidad'.
	].
	(seleccion = 'Promedio de consumo') ifTrue: [ "Muestro el promedio de consumo de ram de los juegos"
		MessageBox notify: 'Promedio de consumo'.
	].
	(seleccion = 'Generar diccionario por genero') ifTrue: [ "Genero un diccionario de juegos por su genero"
		MessageBox notify: 'Generar diccionario por genero'.
	].
	(seleccion = 'Cerrar') ifTrue: [ "Termino la ejecucion del WorkSpace"
		MessageBox notify: 'Cerrar'.
		ejecucion:=false.
		Transcript show: ejecucion printString ; cr.
	].
	(seleccion = nil) ifTrue: [
		MessageBox notify: 'Cerrar por NIL'.
		ejecucion:=false.
		Transcript show: ejecucion printString ; cr.
	].
].

consola inspect.