Class {
	#name : #WifiConn,
	#superclass : #Connection,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
WifiConn >> pict [
	^'Se ha conectado a un wifi'
]

{ #category : #'as yet unclassified' }
WifiConn >> sendData: aData crc: aCRC [
	|message|
	message := 'Enviando datos: ', aData, ' con CRC: ', aCRC asString , Character cr asString .
	Transcript show: message.
]
