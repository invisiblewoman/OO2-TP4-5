Class {
	#name : #MyToDoItemTest,
	#superclass : #TestCase,
	#instVars : [
		'itemPending',
		'itemPaused',
		'itemInProgress',
		'itemFinished'
	],
	#category : #'TP5-Tests-EJ1'
}

{ #category : #initialization }
MyToDoItemTest >> setUp [
	super setUp.
	itemPending := MyToDoItem name: 'Item Pending'.
	
	itemInProgress := MyToDoItem name: 'Item in progress'.
	itemInProgress start.
	
	itemPaused := MyToDoItem name: 'Item Paused'.
	itemPaused 
		start;
		togglePause.
		
	itemFinished := MyToDoItem name: 'Item Finished'.
	itemFinished 
		start;
		finish.
]

{ #category : #initialization }
MyToDoItemTest >> testAddComment [
	itemPending addComment: 'Item esperando'.
	self assert: (itemPending comments includes: 'Item esperando') equals: true.
	
	itemInProgress addComment: 'Item en progreso'.
	self assert: (itemInProgress comments includes: 'Item en progreso') equals: true.
	
	itemPaused addComment: 'Item pausado'.
	self assert: (itemPaused comments includes: 'Item pausado') equals: true.
	
	itemFinished addComment: 'Item finalizado'.
	self assert: (itemPending comments includes: 'Item finalizado') equals: false.
	
]

{ #category : #initialization }
MyToDoItemTest >> testFinish [
	self assert: itemInProgress timeFinished isNil.
	itemInProgress finish.
	self assert: (itemInProgress state isMemberOf: FinishedState ) equals: true.
	self assert: itemInProgress timeFinished isNotNil.
	
	self assert: itemPaused timeFinished isNil.
	itemPaused finish.
	self assert: (itemPaused state isMemberOf: FinishedState ) equals: true.
	self assert: itemPaused timeFinished isNotNil.

	itemFinished finish.
	self assert: (itemFinished state isMemberOf: FinishedState ) equals: true.
	
	itemPending finish.
	self assert: (itemPending state isMemberOf: PendingState ) equals: true.
]

{ #category : #initialization }
MyToDoItemTest >> testStart [
	self assert: (itemPending state isMemberOf: PendingState ) equals: true.
	self assert: itemPending timeStarted isNil.
	
	itemPending start.
	
	self assert: (itemPending state isMemberOf: InProgressState ) equals: true.
	self assert: itemPending timeStarted isNotNil.
	
	itemInProgress start.
	self assert: (itemInProgress state isMemberOf: InProgressState ) equals: true.
	
	itemPaused start.
	self assert: (itemPaused state isMemberOf: PausedState ) equals: true.
	
	itemFinished start.
	self assert: (itemFinished state isMemberOf: FinishedState ) equals: true.
	
]

{ #category : #initialization }
MyToDoItemTest >> testTogglePause [
	self assert: (itemInProgress state isMemberOf: InProgressState ) equals: true.
	self assert: itemInProgress timeStarted isNotNil.
	
	itemInProgress togglePause.
	self assert: (itemInProgress state isMemberOf: PausedState ) equals: true.
	
	itemPaused togglePause.
	self assert: (itemPaused state isMemberOf: InProgressState ) equals: true.
	
	self should: [ itemPending togglePause ] raise: Error description: 'No se puede pausar una tarea que aun no ha comenzado'.
	
	self should: [ itemFinished togglePause ] raise: Error description: 'No se puede pausar una tarea que ya ha finalizado'.
]

{ #category : #initialization }
MyToDoItemTest >> testWorkedTime [
	self assert: (itemPaused workedTime) equals: (DateAndTime now - itemPaused timeStarted).

	self assert: (itemInProgress workedTime) equals: (DateAndTime now - itemInProgress timeStarted).

	self assert: (itemFinished workedTime) equals: (itemFinished timeFinished - itemFinished timeStarted).
	
	self should: [ itemPending togglePause ] raise: Error description: 'La tarea aun no ha iniciado.'.
]
