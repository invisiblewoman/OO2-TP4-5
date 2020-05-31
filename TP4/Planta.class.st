Class {
	#name : #Planta,
	#superclass : #Empleado,
	#instVars : [
		'antiguedad'
	],
	#category : #'TP4-Ej5'
}

{ #category : #accessing }
Planta >> adicional [
(casado)
ifTrue: [ ^ 500 + (100 * hijos) + (100 * antiguedad )]
ifFalse: [ ^ 100 * hijos + (100 * antiguedad ) ]
]

{ #category : #accessing }
Planta >> antiguedad [
^antiguedad 
]

{ #category : #accessing }
Planta >> antiguedad: unaAntiguedad [
antiguedad:= unaAntiguedad

]

{ #category : #accessing }
Planta >> basico [
^3000
]
