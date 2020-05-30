"
A TopografiaTest is a test class for testing the behavior of Topografia
"
Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'mixta',
		'agua',
		'tierra'
	],
	#category : #'TP4-Tests-Ej3'
}

{ #category : #running }
TopografiaTest >> setUp [
	agua := Agua new.
	tierra := Tierra new.
	mixta := Mixta new.
	(mixta partes) add: agua; add: tierra; add: agua; add: tierra.
	

]

{ #category : #tests }
TopografiaTest >> testEsIgualA [

	| mixta2 |
mixta2 := Mixta new.
(mixta2 partes) add: agua; add: agua; add: tierra; add: tierra.
self assert: (mixta esIgualA: agua) equals: false.
self assert: (mixta esIgualA: tierra) equals: false.
self assert: (mixta esIgualA: mixta2) equals: true.
]

{ #category : #tests }
TopografiaTest >> testProporcionAgua [
	self assert: (agua proporcionAgua) equals: 1.
	self assert: (tierra proporcionAgua) equals: 0.
	self assert: (mixta proporcionAgua) equals: 1/2.
]
