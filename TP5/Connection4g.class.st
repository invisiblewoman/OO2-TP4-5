Class {
	#name : #Connection4g,
	#superclass : #Object,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
Connection4g >> symb [
	^'Se ha conectado al 4g'
]

{ #category : #accessing }
Connection4g >> transmit: aData crc: aCRC [
	| message |
	message := 'Enviando datos: ' , aData , ' con CRC: ' , aCRC asString
		, Character cr asString.
	Transcript show: message. 
]
