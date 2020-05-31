Class {
	#name : #Temporario,
	#superclass : #Empleado,
	#instVars : [
		'horasTrabajadas'
	],
	#category : #'TP4-Ej5'
}

{ #category : #accessing }
Temporario >> adicional [
(casado)
ifTrue: [ ^ 500 + (100 * hijos) ]
ifFalse: [ ^ 100 * hijos ]
]

{ #category : #accessing }
Temporario >> basico [
^ 4000 + (horasTrabajadas * 10)
]

{ #category : #accessing }
Temporario >> horasTrabajadas [
^horasTrabajadas 
]

{ #category : #accessing }
Temporario >> horasTrabajadas: horas [
horasTrabajadas:= horas
]
