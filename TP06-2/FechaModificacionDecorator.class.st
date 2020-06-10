Class {
	#name : #FechaModificacionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'TP06-2'
}

{ #category : #'menu commands' }
FechaModificacionDecorator >> prettyPrint [
	|s|
	s := self prettryPrintDecorator.
	s := self fechaModificación , s.
	^s
]
