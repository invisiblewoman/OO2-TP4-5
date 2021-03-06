Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'partes'
	],
	#category : #'TP4-Ej3'
}

{ #category : #'as yet unclassified' }
TopografiaCompuesta class >> partes: aPartes [
	^self new initializeConPartes: aPartes

]

{ #category : #adding }
TopografiaCompuesta >> addParte: aTopografia espacio: aEspacio [
 (aEspacio >= 1 and:(aEspacio < 5))
	ifTrue:[
		partes at:aEspacio put:aTopografia	
	]
]

{ #category : #initialization }
TopografiaCompuesta >> initialize [ 
	partes := Array new:4.
]

{ #category : #initialization }
TopografiaCompuesta >> initializeConPartes: aPartes [
	partes := aPartes.
]

{ #category : #testing }
TopografiaCompuesta >> isEqualToMe: aTopografia [
	(aTopografia soyUnaTopografiaCompuesta) ifFalse: [ ^ false ].
	1 to: 4 do: [ :index | ((self partes at: index) isEqualToMe: (aTopografia partes at: index)) ifFalse: [ ^ false ] ].
	^ true
]

{ #category : #accessing }
TopografiaCompuesta >> partes [
	^ partes.
]

{ #category : #'as yet unclassified' }
TopografiaCompuesta >> proporcionAgua [
	|suma|
	suma := 	partes sumNumbers: [ :parte | parte proporcionAgua  ].
	^ (suma/4)
]

{ #category : #'as yet unclassified' }
TopografiaCompuesta >> proporcionTierra [
	|suma|
	suma:= partes sumNumbers: [:parte | parte proporcionTierra  ].
	^(suma/4)
]

{ #category : #'as yet unclassified' }
TopografiaCompuesta >> soyUnaTopografiaCompuesta [
	^ true.
]
