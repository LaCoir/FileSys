Class {
	#name : 'FSEntry',
	#superclass : 'Object',
	#instVars : [
		'name',
		'parent'
	],
	#category : 'FileSys',
	#package : 'FileSys'
}

{ #category : 'accessing' }
FSEntry >> match: aVariable in: aString [
 ^aVariable beginsWith: aString
]

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
