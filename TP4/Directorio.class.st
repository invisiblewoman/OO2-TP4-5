Class {
	#name : #Directorio,
	#superclass : #Elemento,
	#instVars : [
		'contenido'
	],
	#category : #'TP4-Ej4'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^ self new initializeLlamado: unString creadoEl: unaFecha.
]

{ #category : #'as yet unclassified' }
Directorio >> agregar: unElemento [
	contenido add: unElemento .
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasGrande [
	"Retorna el archivo con fecha de creacion más reciente en cualquier nivel del filesystem contenido por directorio receptor."
	| tamaño masGrande |
	tamaño := 0.
	contenido
		do: [ :elemento | 
			elemento soyUnArchivo
				ifTrue: [ elemento kBytes > tamaño
						ifTrue: [ masGrande := elemento.
							tamaño := elemento kBytes ] ]
				ifFalse: [ elemento archivoMasGrande kBytes > tamaño
						ifTrue: [ masGrande := elemento archivoMasGrande.
							tamaño := elemento archivoMasGrande kBytes ] ] ].
	^ masGrande
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasNuevo [
	"Retorna el archivo con fecha de creacion más reciente en cualquier nivel del filesystem contenido por directorio receptor."
	| date masNuevo |
	date := Date readFromString: '01/01/1900'.
	contenido
		do: [ :elemento | 
			elemento soyUnArchivo
				ifTrue: [ elemento fechaDeCreacion > date
						ifTrue: [ masNuevo := elemento.
							date := elemento fechaDeCreacion ] ]
				ifFalse: [ elemento archivoMasNuevo fechaDeCreacion > date
						ifTrue: [ masNuevo := elemento archivoMasNuevo.
							date := elemento archivoMasNuevo fechaDeCreacion ] ] ].
	^ masNuevo
]

{ #category : #'as yet unclassified' }
Directorio >> cantidadDeArchivos [
	| cant |
	cant := contenido count: [ :elemento | elemento soyUnArchivo ].
	cant > 0 
		ifFalse: [ ^ '' ].
	^ ' (',cant asString,' archivos)'
]

{ #category : #initialization }
Directorio >> initialize [
	super initialize.
	contenido := OrderedCollection new.
	kBytes := 32.
]

{ #category : #initialization }
Directorio >> initializeLlamado: unString creadoEl: unaFecha [
	nombre:= unString .
	creadoEl := unaFecha.
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido [
	^ String 
		streamContents: [ :stream |
			stream << ('/', nombre);
			  		 << self cantidadDeArchivos;
			  		 cr.
			contenido do: [ :elemento | 
				stream << (elemento listarContenido: ('/', nombre));
				ensureCr. 
			].
			stream skip: -1.
		].

]

{ #category : #'as yet unclassified' }
Directorio >> listarContenido: rutaPadre [
	^ String 
		streamContents: [ :stream |
			stream << (self ruta: rutaPadre);
			  		 << (self cantidadDeArchivos);
			  		 cr.
			contenido do: [ :elemento | 
				stream << (elemento listarContenido: (self ruta: rutaPadre));
				ensureCr. 
			].
			stream skip: -1.
		].

]

{ #category : #'as yet unclassified' }
Directorio >> soyUnArchivo [
 ^ false
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^ kBytes + (contenido sumNumbers: [ :elemento | elemento tamanoTotalOcupado ]).
]
