Class {
	#name : #STONAdapter,
	#superclass : #JsonExporter,
	#category : #'TP4-Ej1'
}

{ #category : #exporting }
STONAdapter >> export: aSocios [
 |collection|.
	collection := aSocios collect: [ :socio | self convertDictionary: socio ].
	^STON toStringPretty: collection. 
]
