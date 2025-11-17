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
FSDirectory >> addEntry: anEntry [
	child addEntry: anEntry 
]

{ #category : 'accessing' }
FSDirectory >> child [
^child
]

{ #category : 'initialization' }
FSDirectory >> initialize [ 
	 super initialize.
    child := OrderedCollection new.
]

{ #category : 'accessing' }
FSDirectory >> searchByName: aString [
|result|
result:= OrderedCollection new.

(self name = aString) ifTrue: [ result addEntry: self ].

child do: [ :each |result addAll: (each searchByName: aString)].

^result
]
