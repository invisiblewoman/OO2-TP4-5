Class {
	#name : #InProgressState,
	#superclass : #State,
	#category : #'TP5-EJ1'
}

{ #category : #adding }
InProgressState >> addComment: aComment [
	item comments: aComment
]

{ #category : #initialization }
InProgressState >> finish [ 
	item timeFinished: (DateAndTime now).
	item state: (FinishedState item: item).
	
]

{ #category : #'as yet unclassified' }
InProgressState >> togglePause [ 
	item state: (PausedState item: item).
]
