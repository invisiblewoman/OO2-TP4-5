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
Elemento >> calcularTamaño [
self subclassResponsibility .
]

{ #category : #accessing }
Elemento >> nombre [
^nombre.

]
