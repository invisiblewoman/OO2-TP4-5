"
An EmpleadoTest is a test class for testing the behavior of Empleado
"
Class {
	#name : #EmpleadoTest,
	#superclass : #TestCase,
	#instVars : [
		'pasante',
		'temporario',
		'planta'
	],
	#category : #'TP4-Tests-Ej5'
}

{ #category : #running }
EmpleadoTest >> setUp [
	pasante := Pasante new.
	pasante nombre: 'Jesse Pinkman'.
	pasante casado: false.
	pasante hijos: 0.
	pasante examenesRendidos: 2.
	
	temporario := Temporario new.
	temporario nombre: 'Tuco Salamanca'.
	temporario casado: true.
	temporario hijos: 1.
	temporario horasTrabajadas: 20.
	
	planta := Planta new.
	planta nombre: 'Walter White'.
	planta casado: true.
	planta hijos: 3.
	planta antiguedad: 10.

]

{ #category : #tests }
EmpleadoTest >> testSueldo [

self assert: (pasante basico) equals: 2000.
self assert: (temporario basico) equals: 4200.
self assert: (planta basico) equals: 3000.

self assert: (pasante adicional) equals: 200.
self assert: (temporario adicional) equals: 600.
self assert: (planta adicional) equals: 1800.

self assert: (pasante sueldo) equals: 1930.
self assert: (temporario sueldo) equals: 4224.
self assert: (planta sueldo) equals: 4320.
]
