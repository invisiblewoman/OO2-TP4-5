Class {
	#name : #Archivo,
	#superclass : #Elemento,
	#category : #'TP4-Ej4'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	self new initializeLlamado: unString creadoEl: unaFecha kBytes: unNumero.

]

{ #category : #'as yet unclassified' }
Archivo >> calcularTamaño [ 
^kBytes
]

{ #category : #initialization }
Archivo >> initializeLlamado: unString creadoEl: unaFecha kBytes: unNumero [
	nombre:= unString.
	creadoEl:= unaFecha.
	kBytes:= unNumero.
]

{ #category : #accessing }
Archivo >> kBytes [
^kBytes
]

{ #category : #'as yet unclassified' }
Archivo >> listarContenido [
^false 
]
