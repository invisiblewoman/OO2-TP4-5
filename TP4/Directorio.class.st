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
	self new initializeLlamado: unString creadoEl: unaFecha.
]

{ #category : #'as yet unclassified' }
Directorio >> agregarElemento: unElemento [
contenido add: unElemento .
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasGrande [

]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasNuevo [
]

{ #category : #'as yet unclassified' }
Directorio >> calcularTamaño [ 
	^ kBytes + contenido  sumNumbers: [ :archivo | archivo kBytes ] 
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

]
