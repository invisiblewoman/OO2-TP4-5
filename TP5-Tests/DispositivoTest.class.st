Class {
	#name : #DispositivoTest,
	#superclass : #TestCase,
	#instVars : [
		'crc16',
		'crc32',
		'conection4g',
		'wifiConection',
		'device',
		'mock'
	],
	#category : #'TP5-Tests-EJ3'
}

{ #category : #running }
DispositivoTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	crc16 := CRC16_Calculator new. 
	crc32 := CRC32_Calculator new.
	conection4g := Connection4gAdapter new.
	wifiConection := WifiConn new.
	device := Dispositivo new.
	
]

{ #category : #running }
DispositivoTest >> testChangeCRC [
	device changeCRC: crc32.
	self assert: (device crc isMemberOf: CRC32_Calculator) equals: true. 
	self assert: (device crc isMemberOf: CRC16_Calculator) equals: false. 
	
	device changeCRC: crc16.
	self assert: (device crc isMemberOf: CRC32_Calculator) equals: false. 
	self assert: (device crc isMemberOf: CRC16_Calculator) equals: true.
]

{ #category : #running }
DispositivoTest >> testConnectWith [
	device connectWith: conection4g.
	self assert: (device connection isMemberOf: Connection4gAdapter) equals: true.
	self assert: (device connection isMemberOf: WifiConn) equals: false.
	
	device connectWith: wifiConection.
	self assert: (device connection isMemberOf: Connection4gAdapter) equals: false.
	self assert: (device connection isMemberOf: WifiConn) equals: true.
]

{ #category : #running }
DispositivoTest >> testSendData [
]
