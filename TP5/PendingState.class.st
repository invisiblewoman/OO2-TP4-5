Class {
	#name : #PendingState,
	#superclass : #State,
	#category : #'TP5-EJ1'
}

{ #category : #adding }
PendingState >> addComment: aComment [
	item comments: aComment
]

{ #category : #accessing }
PendingState >> start [ 
	item state: (InProgressState item: item).
	item timeStarted: (DateAndTime now)
]

{ #category : #'as yet unclassified' }
PendingState >> togglePause [
	self  error:'No se puede pausar una tarea que aun no ha comenzado'
]

{ #category : #'as yet unclassified' }
PendingState >> workedTime [
	self error: 'La tarea aun no ha iniciado.'
]
