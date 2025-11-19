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
	child add: aFSEntry.
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
FSDirectory >> searchByContents: aString [

child do: [ :child | 
		|result| 
		result :=  child searchByContents: aString.
		result ifNotNil: [ ^result ] ]
]

{ #category : 'accessing' }
FSDirectory >> searchByName: aString [
|result|
result:= OrderedCollection new.

(self name = aString) ifTrue: [ result add: self ].

child do: [ :each | (each searchByName: aString) ifNotNil: [ :result | ^result ]].

^result
]
