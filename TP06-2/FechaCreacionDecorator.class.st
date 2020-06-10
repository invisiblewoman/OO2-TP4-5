Class {
	#name : #FechaCreacionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'TP06-2'
}

{ #category : #'menu commands' }
FechaCreacionDecorator >> prettyPrint [
	|s|
	s := self prettryPrintDecorator.
	s := self fechaCreación , s.
	^s
]
