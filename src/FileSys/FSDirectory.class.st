Class {
	#name : 'FSDirectory',
	#superclass : 'FSEntry',
	#instVars : [
		'child'
	],
	#category : 'FileSys',
	#package : 'FileSys'
}

{ #category : 'adding' }
FSDirectory >> addEntry: aFSEntry [
	child addEntry: aFSEntry 
]

{ #category : 'accessing' }
FSDirectory >> child [
^child
]

{ #category : 'accessing' }
FSDirectory >> child: anOderedCollection [
child:= anOderedCollection 
]

{ #category : 'accessing' }
FSDirectory >> searchByName: aString [
|result|
result:= OrderedCollection new.
(self name = aString) ifTrue: [ result addEntry: self ]
ifFalse: [  
	child do: [ :eachChild |result addEntry: (eachChild searchByName: aString)]
	 ].
^result
]
