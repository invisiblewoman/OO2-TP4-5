Class {
	#name : #State,
	#superclass : #Object,
	#instVars : [
		'item'
	],
	#category : #'TP5-EJ1'
}

{ #category : #accessing }
State class >> item: aItem [
	self  new initializeItem:aItem
]

{ #category : #adding }
State >> addComment: aComment [
	self subclassResponsibility 
]

{ #category : #initialization }
State >> finish [
	self subclassResponsibility 
]

{ #category : #initialization }
State >> initializeItem: aItem [
	item := aItem
]

{ #category : #accessing }
State >> start [ 	
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
State >> togglePause [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
State >> workedTime [
	self subclassResponsibility 
]
