Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'crc',
		'ringer',
		'display'
	],
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
Dispositivo >> changeCRC: aCRC [
	crc := aCRC
]

{ #category : #'as yet unclassified' }
Dispositivo >> connectWith: aConnection [
	connection := aConnection .
	ringer ring.
	display showBanner: connection pict .
]

{ #category : #initialization }
Dispositivo >> initialize [ 
	display := DisplayMovil new.
	ringer := Ringer new.
	connection := WifiConn new.
	crc := CRC16_Calculator new.
]

{ #category : #sending }
Dispositivo >> sendData: aData [
	connection sendData: aData crc: (crc crcFor: aData)
]
