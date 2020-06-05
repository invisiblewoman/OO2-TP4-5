Class {
	#name : #'CRC32_Calculator',
	#superclass : #CRCCalculator,
	#category : #'TP5-EJ3'
}

{ #category : #'as yet unclassified' }
CRC32_Calculator >> crcFor: aData [
	^ CRC crc32FromCollection: aData
]
