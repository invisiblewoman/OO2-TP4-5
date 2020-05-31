Class {
	#name : #BibiotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'miBibliotecaVoorhees',
		'miBibliotecaNeo',
		'arya',
		'tyron'
	],
	#category : #'TP4-Tests-Ej1'
}

{ #category : #running }
BibiotecaTest >> setUp [
	miBibliotecaVoorhees := Biblioteca new: VoorheesExporter new.
	miBibliotecaNeo := Biblioteca new: NeoJsonAdapter new.
	arya:= Socio nombre:'Arya Stark' email:'needle@stark.com' legajo: '5234/5'.
	tyron:= Socio nombre:'Tyron Lannister' email:'tyron@thelannisters.com' legajo:'2345/2'.
	miBibliotecaVoorhees agregarSocio: arya.
	miBibliotecaNeo agregarSocio: arya.
]

{ #category : #tests }
BibiotecaTest >> testExportarSocios [
	|reponse|
	reponse := '[', Character cr asString,
					'	{'  ,Character cr asString,
					'		"nombre" : "Arya Stark",', Character cr asString,
					'		"email" : "needle@stark.com",', Character cr asString ,
					'		"legajo" : "5234/5"' , Character cr asString ,
					'	}', Character cr asString,
					']' .
					
	self assert: reponse equals: (miBibliotecaVoorhees exportarSocios )
	
		


]
