Class {
	#name : 'FSTest',
	#superclass : 'TestCase',
	#category : 'FileSys',
	#package : 'FileSys'
}

{ #category : 'tests' }
FSTest >> testDirectory [ 
	| result dir1 file1 file2 |
	dir1:= FSDirectory new.
	dir1 name: 'pomme'. "this is root"
	
	file1:= FSFile new.
	file1 name: 'pomme'.
	
	
	file2:= FSFile new.
	file2 name: 'fraise'.
	
	dir1 addEntry: file1.
	dir1 addEntry: file2.
	
	result:= dir1 searchByName: 'pomme'.
	
	self assert: result name equals: 'pomme'.
	self assert: result equals: file1.
	
]

{ #category : 'tests' }
FSTest >> testFile [
	|file result|
	file := FSFile new.
	file name: 'pomme'.
	
result:= file searchByName: 'pomme'.
self assert: result name equals: file name.
]

{ #category : 'tests' }
FSTest >> testSearchContent [
	| result dir1 file1 file2 |
	dir1:= FSDirectory new.
	dir1 name: 'pomme'. "this is root"
	
	file1:= FSFile new.
	file1 name: 'pomme'.
	file1 contents: 'I am an apple'.
	
	
	file2:= FSFile new.
	file2 name: 'fraise'.
	file2 contents: 'I am not an apple'.
	
	dir1 addEntry: file1.
	dir1 addEntry: file2.
	
	result:= dir1 searchByContents: 'apple'.
	
	self assert: result name equals: file1 name.
	
]
