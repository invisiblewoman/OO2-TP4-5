Class {
	#name : #Connection4gAdapter,
	#superclass : #Connection,
	#instVars : [
		'connection4g'
	],
	#category : #'TP5-EJ3'
}

{ #category : #initialization }
Connection4gAdapter >> initialize [
	connection4g := Connection4g new.
]

{ #category : #'as yet unclassified' }
Connection4gAdapter >> pict [
	^connection4g symb .	
]

{ #category : #'as yet unclassified' }
Connection4gAdapter >> sendData: aData crc: aCRC [
	connection4g transmit: aData crc: aCRC.
]
