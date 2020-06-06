"
A TopografiaTest is a test class for testing the behavior of Topografia
"
Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'topografiaCompuestaVacia',
		'topografiaCompuesta',
		'agua',
		'tierra'
	],
	#category : #'TP4-Tests-Ej3'
}

{ #category : #running }
TopografiaTest >> setUp [
	agua := Agua new.
	tierra := Tierra new.
	topografiaCompuestaVacia := TopografiaCompuesta new.
	topografiaCompuesta := TopografiaCompuesta partes: (OrderedCollection with: agua with: tierra with: agua with: tierra).
	
	

]

{ #category : #tests }
TopografiaTest >> testIsEqualToMe [
	| nuevaTopografia  |
	
	"Testeo la topografia agua"
	nuevaTopografia := Agua new.
	self assert: (nuevaTopografia isEqualToMe: agua) equals: true.
	self assert: (nuevaTopografia isEqualToMe: tierra) equals: false.
	self assert: (nuevaTopografia isEqualToMe: topografiaCompuesta) equals: false.
	
	"Testeo la topografia tierra"
	nuevaTopografia := Tierra new.
	self assert: (nuevaTopografia isEqualToMe: tierra) equals: true.
	self assert: (nuevaTopografia isEqualToMe: agua) equals: false.
	self assert: (nuevaTopografia isEqualToMe: topografiaCompuesta) equals: false.
	
	"Testeo la topografia compuesta"
	nuevaTopografia := topografiaCompuestaVacia.
	nuevaTopografia
		addParte: agua   espacio: 1;
		addParte: tierra espacio: 2;
		addParte: agua   espacio: 3;
		addParte: tierra espacio: 4.
	self assert: (nuevaTopografia isEqualToMe: topografiaCompuesta) equals: true.
	self assert: (nuevaTopografia isEqualToMe: agua) equals: false.
	self assert: (nuevaTopografia isEqualToMe: tierra) equals: false.

	nuevaTopografia := topografiaCompuestaVacia.
	nuevaTopografia
		addParte: agua   espacio: 1;
		addParte: agua   espacio: 2;
		addParte: agua   espacio: 3;
		addParte: tierra espacio: 4.
	self assert: (nuevaTopografia isEqualToMe: topografiaCompuesta) equals: false.
]

{ #category : #tests }
TopografiaTest >> testProporcionAgua [
	self assert: (agua proporcionAgua) equals: 1.
	self assert: (tierra proporcionAgua) equals: 0.
	self assert: (topografiaCompuesta proporcionAgua) equals: 1/2.
]

{ #category : #tests }
TopografiaTest >> testProporcionTierra [
	self assert: agua proporcionTierra equals: 0.
	self assert: tierra proporcionTierra equals: 1.
	self assert: topografiaCompuesta proporcionTierra equals: 1 / 2
]

{ #category : #tests }
TopografiaTest >> testSoyUnaTopografiaCompuesta [
	self assert: (agua soyUnaTopografiaCompuesta ) equals: false.
	self assert: (tierra soyUnaTopografiaCompuesta) equals: false.
	self assert: (topografiaCompuesta soyUnaTopografiaCompuesta) equals: true.
]
