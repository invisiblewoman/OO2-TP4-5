Class {
	#name : #'CRC16_Calculator',
	#superclass : #CRCCalculator,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor: aData [
	^ CRC crc16FromCollection: aData
]
