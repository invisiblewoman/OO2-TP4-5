Class {
	#name : #Mixta,
	#superclass : #Topografia,
	#instVars : [
		'partes'
	],
	#category : #'TP4-Ej3'
}

{ #category : #initialization }
Mixta >> initialize [ 
super initialize.
partes := OrderedCollection new.
]

{ #category : #accessing }
Mixta >> partes [ 
^partes
]

{ #category : #accessing }
Mixta >> proporcionAgua [
 ^ (self partes sumNumbers: [ : parte | parte proporcionAgua ])/4

]

{ #category : #accessing }
Mixta >> proporcionTierra [
 ^ (self partes sumNumbers: [ : parte | parte proporcionTierra ])/4

]
