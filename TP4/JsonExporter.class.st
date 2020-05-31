Class {
	#name : #JsonExporter,
	#superclass : #Object,
	#category : #'TP4-Ej1'
}

{ #category : #'as yet unclassified' }
JsonExporter >> convertDictionary:aSocio [
 ^ Dictionary new at: #nombre put: aSocio nombre; at: #email put: aSocio email; at: #legajo put: aSocio legajo ; yourself.

	
]

{ #category : #exporting }
JsonExporter >> export: aSocios [
	self subclassResponsibility 
]
