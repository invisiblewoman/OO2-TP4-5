Class {
	#name : #DatabaseRealAccessTestCase,
	#superclass : #TestCase,
	#instVars : [
		'database'
	],
	#category : #'TP06-Proxy'
}

{ #category : #running }
DatabaseRealAccessTestCase >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	database:= DatabaseRealAcess new.
]

{ #category : #tests }
DatabaseRealAccessTestCase >> testGetSearchResults [
	"comment stating purpose of message"

self assert: (database getSearchResults: 'select * from comics where id=1') equals: #('Spiderman' 'Marvel').

self assert: (database getSearchResults: 'select * from comics where id=10') equals: #().
]

{ #category : #tests }
DatabaseRealAccessTestCase >> testInsertNewRow [
	"comment stating purpose of message"
	|rowData|
	rowData:= #('Paturuzu' 'La flor').
 	self assert: (database insertNewRow: rowData) equals: 3.
 	self assert: (database getSearchResults: 'select * from comics where id=3') equals: rowData.
]
