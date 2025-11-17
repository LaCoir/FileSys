Class {
	#name : 'FSTest',
	#superclass : 'TestCase',
	#category : 'FileSys',
	#package : 'FileSys'
}

{ #category : 'tests' }
FSTest >> testFile [
	|file result|
	file := FSFile new.
	file name: 'pomme'.
	
result:= file searchByName: 'pomme'.
self assert: result name equals: file name.
]
