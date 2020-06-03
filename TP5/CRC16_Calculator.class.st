Class {
	#name : #'CRC16_Calculator',
	#superclass : #Object,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor: aData [
	^ CRC crc16FromCollection: aData
]
