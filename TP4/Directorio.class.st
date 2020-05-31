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
	^ self recuperarArchivos asSortedCollection: [ :a1 :a2 | a1 tamanoTotalOcupado >= a2 tamanoTotalOcupado ] first.
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasNuevo [
	"Retorna el archivo con fecha de creacion más reciente en cualquier nivel del filesystem contenido por directorio receptor."
	^ self recuperarArchivos asSortedCollection: [ :a1 :a2 | a1 fechaDeCreacion >= a2 fechaDeCreacion ] first.
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
Directorio >> recuperarArchivos [
	^ contenido collect: [ :elemento | elemento recuperarArchivos ].
	
]

{ #category : #'as yet unclassified' }
Directorio >> soyUnArchivo [
 ^ false
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^ kBytes + contenido sumNumbers: [ :elemento | elemento tamanoTotalOcupado ].
]
