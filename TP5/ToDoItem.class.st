Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'state',
		'name',
		'comments',
		'timeStarted',
		'timeFinished'
	],
	#category : #'TP5-EJ1'
}

{ #category : #accessing }
ToDoItem class >> name: aName [
	self  new initializeName: aName
]

{ #category : #accessing }
ToDoItem >> comments: aComment [
	comments add: aComment .
]

{ #category : #initialization }
ToDoItem >> initializeName: aName [
	name := aName.
	comments := OrderedCollection new.
	state := PendingState item: self.
]

{ #category : #accessing }
ToDoItem >> state: aState [
	state := aState.
]

{ #category : #accessing }
ToDoItem >> timeFinished [
	^timeFinished 
]

{ #category : #accessing }
ToDoItem >> timeFinished: aTime [
	timeFinished := aTime.
]

{ #category : #accessing }
ToDoItem >> timeStarted [
	^timeStarted 
]

{ #category : #accessing }
ToDoItem >> timeStarted: aTime [
	timeStarted := aTime
]
