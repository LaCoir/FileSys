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
FSFile >> searchByContents: aString [
	^(self match: contents in: aString)
		ifTrue: [ self ] ifFalse:[nil] 
]

{ #category : 'accessing' }
FSFile >> searchByName: aString [
	^(self match: name in: aString)
		ifTrue: [ self ] ifFalse:[nil] 
]
