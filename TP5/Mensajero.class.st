Class {
	#name : #Mensajero,
	#superclass : #Object,
	#instVars : [
		'conexion'
	],
	#category : #'TP5-EJ2'
}

{ #category : #accessing }
Mensajero >> conexion: unaConexion [
conexion := unaConexion.
]

{ #category : #sending }
Mensajero >> enviar: mensaje [
conexion enviar: mensaje.
]

{ #category : #initialization }
Mensajero >> initialize [ 
super initialize.
conexion := Conexion new
]
