Class {
	#name : #FileOO2,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'extension',
		'tamaño',
		'fechaCreación',
		'fechaModificación',
		'permisos'
	],
	#category : #'TP06-2'
}

{ #category : #'as yet unclassified' }
FileOO2 >> actualizarFechaModificación [ 
	fechaModificación := DateAndTime now.
]

{ #category : #accessing }
FileOO2 >> extension [
	^ extension
]

{ #category : #accessing }
FileOO2 >> extension: anObject [
	extension := anObject.
	self actualizarFechaModificación.
]

{ #category : #accessing }
FileOO2 >> fechaCreación [
	^ fechaCreación
]

{ #category : #accessing }
FileOO2 >> fechaCreación: anObject [
	fechaCreación := anObject.
	self actualizarFechaModificación
]

{ #category : #accessing }
FileOO2 >> fechaModificación [
	^ fechaModificación
]

{ #category : #accessing }
FileOO2 >> fechaModificación: anObject [
	fechaModificación := anObject.
	self actualizarFechaModificación .
]

{ #category : #initialization }
FileOO2 >> initialize [
	nombre := 'Emtpy'.
	extension := 'Emtpy'.
	tamaño := '0'.
	fechaCreación := DateAndTime now.
	fechaModificación := DateAndTime now.
	permisos := 'Emtpy'
]

{ #category : #accessing }
FileOO2 >> nombre [
	^ nombre
]

{ #category : #accessing }
FileOO2 >> nombre: anObject [
	nombre := anObject.
	self actualizarFechaModificación .
]

{ #category : #accessing }
FileOO2 >> permisos [
	^ permisos
]

{ #category : #accessing }
FileOO2 >> permisos: anObject [
	permisos := anObject.
	self actualizarFechaModificación .
]

{ #category : #'menu commands' }
FileOO2 >> prettyPrint [ 
	^ nombre , ' / ', extension , ' / ', tamaño,  ' - ', fechaCreación asString, ' / ', fechaModificación asString, ' / ', permisos 
]

{ #category : #accessing }
FileOO2 >> tamaño [
	^ tamaño
]

{ #category : #accessing }
FileOO2 >> tamaño: anObject [
	tamaño := anObject.
	self actualizarFechaModificación .
]
