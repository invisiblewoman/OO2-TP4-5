Class {
	#name : #PermisosDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'TP06-2'
}

{ #category : #'menu commands' }
PermisosDecorator >> prettyPrint [
	|s|
	s := self prettryPrintDecorator.
	s := self permisos , s.
	^s
]
