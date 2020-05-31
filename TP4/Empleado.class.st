Class {
	#name : #Empleado,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'casado',
		'hijos'
	],
	#category : #'TP4-Ej5'
}

{ #category : #abstract }
Empleado >> adicional [
self subclassResponsibility.
]

{ #category : #abstract }
Empleado >> basico [
self subclassResponsibility.
]

{ #category : #accessing }
Empleado >> casado [
^casado
]

{ #category : #accessing }
Empleado >> casado: estaCasado [
casado:= estaCasado 
]

{ #category : #accessing }
Empleado >> hijos [
^hijos
]

{ #category : #accessing }
Empleado >> hijos: nroHijos [
hijos:= nroHijos
]

{ #category : #accessing }
Empleado >> nombre [
^nombre
]

{ #category : #accessing }
Empleado >> nombre: unNombre [
nombre:= unNombre

]

{ #category : #accessing }
Empleado >> sueldo [
^(self basico + self adicional - (0.13 * self basico) - (0.05 * self adicional))
]
