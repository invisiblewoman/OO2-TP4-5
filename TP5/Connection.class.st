Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
Connection >> pict [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Connection >> sendData: aData crc: aCRC [
	self subclassResponsibility 
]
