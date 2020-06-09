Class {
	#name : #FileOO2Decorator,
	#superclass : #FileOO2,
	#instVars : [
		'file',
		'configuration'
	],
	#category : #'TP06-2'
}

{ #category : #accessing }
FileOO2Decorator class >> file: aFile [
	^self new initializeFile: aFile
]

{ #category : #accessing }
FileOO2Decorator class >> file: aFile configuration: aConfiguration [
	^self new initializeFile: aFile configuration: aConfiguration
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> agregarExtension: espacio [
	configuration at: espacio put: [ file extension ]
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> agregarFechaCreacion: espacio [
	configuration at: espacio put: [ file fechaCreación  ]
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> agregarFechaModificacion: espacio [
	configuration at: espacio put: [ file fechaModificación   ]
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> agregarNombre: espacio [
	configuration at: espacio put: [ file nombre ]
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> agregarPermisos: espacio [
	configuration at: espacio put: [file permisos ]
]

{ #category : #'as yet unclassified' }
FileOO2Decorator >> agregarTamaño: espacio [
	configuration at: espacio put: [ file tamaño ]
]

{ #category : #accessing }
FileOO2Decorator >> configuration [
	^configuration
]

{ #category : #accessing }
FileOO2Decorator >> extension [
	^file extension
]

{ #category : #accessing }
FileOO2Decorator >> fechaCreación [ 
	^file fechaCreación
]

{ #category : #accessing }
FileOO2Decorator >> fechaModificación [  
	^file fechaModificación
]

{ #category : #accessing }
FileOO2Decorator >> file [ 	
	^file
]

{ #category : #initialization }
FileOO2Decorator >> initializeFile: aFile [
	file := aFile.
	configuration := Array new: 6.
]

{ #category : #accessing }
FileOO2Decorator >> nombre [
	^file nombre
]

{ #category : #accessing }
FileOO2Decorator >> permisos [  
	^file permisos
]

{ #category : #'menu commands' }
FileOO2Decorator >> prettyPrint [
	^ String streamContents: [ :stream |
		configuration do: [ :configurationItem |
			configurationItem ifNotNil: [  
			stream << configurationItem value.
			stream << ' / '
			]
		]
	]
]

{ #category : #accessing }
FileOO2Decorator >> tamaño [
	^file tamaño
]
