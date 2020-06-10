Class {
	#name : #NombreDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'TP06-2'
}

{ #category : #'menu commands' }
NombreDecorator >> prettyPrint [
	|s|
	s := self prettryPrintDecorator.
	s := self nombre, s.
	^s
]
