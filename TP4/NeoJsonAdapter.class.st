Class {
	#name : #NeoJsonAdapter,
	#superclass : #JsonExporter,
	#category : #'TP4-Ej1'
}

{ #category : #exporting }
NeoJsonAdapter >> export: aSocios [
 |collection|.
	collection := aSocios collect: [ :socio | self convertDictionary: socio ].
	^NeoJSONWriter toStringPretty: collection. 
]
