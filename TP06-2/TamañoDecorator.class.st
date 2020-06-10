Class {
	#name : #'TamañoDecorator',
	#superclass : #FileOO2Decorator,
	#category : #'TP06-2'
}

{ #category : #'menu commands' }
TamañoDecorator >> prettyPrint [
	|s|
	s := self prettryPrintDecorator.
	s := self tamaño , s.
	^s
]
