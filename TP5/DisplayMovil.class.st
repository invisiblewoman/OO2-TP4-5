Class {
	#name : #DisplayMovil,
	#superclass : #Object,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
DisplayMovil >> showBanner: aMessage [
	Transcript show: 'Display: ', aMessage , Character cr asString.
]
