Class {
	#name : #ConexionSegura,
	#superclass : #Conexion,
	#instVars : [
		'estrategiaDeEncriptacion'
	],
	#category : #'TP5-EJ2'
}

{ #category : #initialization }
ConexionSegura class >> estrategiaDeEncriptacion: unaEstrategia [ 
	^ self new initializeEstrategiaDeEncriptacion: unaEstrategia. 
]

{ #category : #sending }
ConexionSegura >> enviar: mensaje [
| mensajeEncriptado |
mensajeEncriptado := estrategiaDeEncriptacion encriptar: mensaje.
super enviar: mensajeEncriptado.
]

{ #category : #accessing }
ConexionSegura >> estrategiaDeEncriptacion: unaEstrategia [ 
estrategiaDeEncriptacion := unaEstrategia 
]

{ #category : #initialization }
ConexionSegura >> initializeEstrategiaDeEncriptacion: unaEstrategia [  
estrategiaDeEncriptacion := unaEstrategia.
]
