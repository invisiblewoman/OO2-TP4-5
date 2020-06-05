Class {
	#name : #PausedState,
	#superclass : #State,
	#category : #'TP5-EJ1'
}

{ #category : #adding }
PausedState >> addComment: aComment [
	item comments: aComment
]

{ #category : #initialization }
PausedState >> finish [ 
	item state: (FinishedState item: item).
	item timeFinished: (DateAndTime now)
]

{ #category : #'as yet unclassified' }
PausedState >> togglePause [ 
	item state: (InProgressState item: item).
]
