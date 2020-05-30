Class {
	#name : #Pasante,
	#superclass : #Empleado,
	#instVars : [
		'examenesRendidos'
	],
	#category : #'TP4-Ej5'
}

{ #category : #accessing }
Pasante >> adicional [
^ 100 * examenesRendidos 
]

{ #category : #accessing }
Pasante >> basico [
^2000
]

{ #category : #accessing }
Pasante >> examenesRendidos [
^examenesRendidos 
]

{ #category : #accessing }
Pasante >> examenesRendidos: examenes [ 
examenesRendidos:= examenes 

]
