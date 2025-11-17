Class {
	#name : 'FSEntry',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'FileSys',
	#package : 'FileSys'
}

{ #category : 'accessing' }
FSEntry >> name [
 ^name 
]

{ #category : 'accessing' }
FSEntry >> name: aString [
name:= aString
]

{ #category : 'accessing' }
FSEntry >> searchByName [
	^self subclassResponsibility 
]
