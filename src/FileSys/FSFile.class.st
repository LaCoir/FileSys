Class {
	#name : 'FSFile',
	#superclass : 'FSEntry',
	#instVars : [
		'contents'
	],
	#category : 'FileSys',
	#package : 'FileSys'
}

{ #category : 'accessing' }
FSFile >> contents [
^contents 
]

{ #category : 'accessing' }
FSFile >> contents: aString [
contents:= aString
]

{ #category : 'accessing' }
FSFile >> searchByName: aString [
	^(self name = aString) ifTrue:[self] ifFalse: [ nil ]
]
