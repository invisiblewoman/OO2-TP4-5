Class {
	#name : #Elemento,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'creadoEl',
		'kBytes'
	],
	#category : #'TP4-Ej4'
}

{ #category : #'as yet unclassified' }
Elemento >> fechaDeCreacion [
	^ creadoEl
]

{ #category : #accessing }
Elemento >> nombre [
	^ nombre.

]

{ #category : #'as yet unclassified' }
Elemento >> ruta: rutaPadre [
	^ (rutaPadre, '/', self nombre)
]

{ #category : #'as yet unclassified' }
Elemento >> soyUnArchivo [ 
	self subclassResponsibility .
]

{ #category : #'as yet unclassified' }
Elemento >> tamanoTotalOcupado [
	self subclassResponsibility .
]
