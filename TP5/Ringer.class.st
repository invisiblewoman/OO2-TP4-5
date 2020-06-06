Class {
	#name : #Ringer,
	#superclass : #Object,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
Ringer >> ring [
	|message|
	message := 'El telefono ha sonado' , Character cr asString.
	Transcript show: message.
]
