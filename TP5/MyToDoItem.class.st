Class {
	#name : #MyToDoItem,
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
MyToDoItem class >> name: aName [
	^self new initializeName: aName
]

{ #category : #adding }
MyToDoItem >> addComment: aComment [
	state addComment: aComment 
]

{ #category : #accessing }
MyToDoItem >> comments: aComment [
	comments add: aComment .
]

{ #category : #initialization }
MyToDoItem >> finish [ 
	state finish 
]

{ #category : #initialization }
MyToDoItem >> initializeName: aName [
	name := aName.
	comments := OrderedCollection new.
	state := PendingState item: self.
]

{ #category : #accessing }
MyToDoItem >> name [
	^name
]

{ #category : #accessing }
MyToDoItem >> name: aName [
	name := aName
]

{ #category : #accessing }
MyToDoItem >> start [
	state start.
]

{ #category : #accessing }
MyToDoItem >> state [ 
	^state
]

{ #category : #accessing }
MyToDoItem >> state: aState [
	state := aState.
]

{ #category : #accessing }
MyToDoItem >> timeFinished [
	^timeFinished 
]

{ #category : #accessing }
MyToDoItem >> timeFinished: aTime [
	timeFinished := aTime.
]

{ #category : #accessing }
MyToDoItem >> timeStarted [
	^timeStarted 
]

{ #category : #accessing }
MyToDoItem >> timeStarted: aTime [
	timeStarted := aTime
]

{ #category : #'as yet unclassified' }
MyToDoItem >> togglePause [ 
	state togglePause 
]

{ #category : #'as yet unclassified' }
MyToDoItem >> workedTime [ 
	state workedTime 
]
