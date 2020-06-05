Class {
	#name : #FinishedState,
	#superclass : #State,
	#category : #'TP5-EJ1'
}

{ #category : #'as yet unclassified' }
FinishedState >> togglePause [
	self  error:'No se puede pausar una tarea que ya ha finalizado'
]

{ #category : #'as yet unclassified' }
FinishedState >> workedTime [ 
	^(item timeFinished) - (item timeStarted)
]
