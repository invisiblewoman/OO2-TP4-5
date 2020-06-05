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
	^self new initializeItem:aItem
]

{ #category : #adding }
State >> addComment: aComment [
]

{ #category : #initialization }
State >> finish [
	^nil
]

{ #category : #initialization }
State >> initializeItem: aItem [
	item := aItem
]

{ #category : #accessing }
State >> item [ 
	^item
]

{ #category : #accessing }
State >> start [ 	
]

{ #category : #'as yet unclassified' }
State >> togglePause [
]

{ #category : #'as yet unclassified' }
State >> workedTime [
	^(DateAndTime now) - (item timeStarted)
]
