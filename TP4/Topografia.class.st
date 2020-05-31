"
|agua tierra topografia_1 topografia_2 topografia_3 topografia_4 topografiaCompuesta partes|
agua := Agua new.
tierra := Tierra new.
agua proporcionAgua .
agua proporcionTierra .
tierra proporcionAgua .
tierra proporcionTierra .

partes := Array with: agua with: tierra  with: agua with: agua. 

topografia_1 := TopografiaCompuesta partes: partes.
topografia_1 proporcionAgua .
topografia_1 proporcionTierra .

partes := Array with: tierra with: tierra  with: tierra with: tierra. 
topografia_2 := TopografiaCompuesta partes: partes.
topografia_2 proporcionAgua .
topografia_2 proporcionTierra .

partes := Array with: agua with: agua  with: tierra with: tierra. 
topografia_3 := TopografiaCompuesta partes: partes.
topografia_3 proporcionAgua .
topografia_3 proporcionTierra .

partes := Array with: agua with: agua  with: tierra with: tierra. 
topografia_4 := TopografiaCompuesta partes: partes.
topografia_4 proporcionAgua .
topografia_4 proporcionTierra .

partes := Array with: topografia_1 with: topografia_2  with: topografia_3 with: topografia_4. 
topografiaCompuesta := TopografiaCompuesta partes: partes.
topografiaCompuesta proporcionAgua .
topografiaCompuesta proporcionTierra .
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP4-Ej3'
}

{ #category : #testing }
Topografia >> isEqualToMe:aTopografia [
	^(aTopografia proporcionAgua = self proporcionAgua ) and: [ aTopografia proporcionTierra = self proporcionTierra  ]
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionAgua [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionTierra [
	self subclassResponsibility 
]
