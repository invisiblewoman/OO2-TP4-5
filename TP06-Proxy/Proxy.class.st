Class {
	#name : #Proxy,
	#superclass : #DatabaseAccess,
	#instVars : [
		'realDatabase',
		'credentials'
	],
	#category : #'TP06-Proxy'
}

{ #category : #database }
Proxy >> checkAccess [
	^ credentials = 'TuViejaEnTanga'
]

{ #category : #accessing }
Proxy >> credentials: aCredentials [
	credentials := aCredentials
]

{ #category : #database }
Proxy >> getSearchResults: queryString [
	self checkAccess
		ifTrue: [ ^ realDatabase getSearchResults: queryString ]
		ifFalse: [ ^ 'No se pudo autenticar' ]
]

{ #category : #initialization }
Proxy >> initialize [ 
	super initialize.
	realDatabase := DatabaseRealAcess new.
	credentials := ''.
]

{ #category : #database }
Proxy >> insertNewRow: rowData [
	self checkAccess
		ifTrue: [ ^ realDatabase insertNewRow: rowData ]
		ifFalse: [ ^ 'No se pudo autenticar' ]
]
