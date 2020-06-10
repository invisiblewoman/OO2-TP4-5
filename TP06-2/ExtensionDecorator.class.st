Class {
	#name : #ExtensionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'TP06-2'
}

{ #category : #'menu commands' }
ExtensionDecorator >> prettyPrint [
	|s|
	s := self prettryPrintDecorator.
	s := self extension , s.
	^s
]
