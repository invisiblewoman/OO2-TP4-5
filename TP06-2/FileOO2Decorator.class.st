Class {
	#name : #FileOO2Decorator,
	#superclass : #Object,
	#instVars : [
		'decorado'
	],
	#category : #'TP06-2'
}

{ #category : #accessing }
FileOO2Decorator class >> with: aFile [
	^self new initialize: aFile
]

{ #category : #accessing }
FileOO2Decorator >> decorado [ 	
	^decorado
]

{ #category : #accessing }
FileOO2Decorator >> extension [
	^decorado extension
]

{ #category : #accessing }
FileOO2Decorator >> fechaCreación [ 
	^decorado fechaCreación
]

{ #category : #accessing }
FileOO2Decorator >> fechaModificación [  
	^decorado fechaModificación
]

{ #category : #initialization }
FileOO2Decorator >> initialize: aFile [
	decorado := aFile.
]

{ #category : #accessing }
FileOO2Decorator >> nombre [
	^decorado nombre
]

{ #category : #accessing }
FileOO2Decorator >> permisos [  
	^decorado permisos
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> prettryPrintDecorator [
	|s|
	s := decorado prettyPrint .
	(s = '') ifFalse: [ s:= '-', s ].
	^s
]

{ #category : #'menu commands' }
FileOO2Decorator >> prettyPrint [
]

{ #category : #accessing }
FileOO2Decorator >> tamaño [
	^decorado tamaño
]
