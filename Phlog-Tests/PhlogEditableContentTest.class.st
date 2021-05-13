"
A PhlogEditableContentTest is a test class for testing the behavior of PhlogEditableContent
"
Class {
	#name : #PhlogEditableContentTest,
	#superclass : #TestCase,
	#category : 'Phlog-Tests'
}

{ #category : #'as yet unclassified' }
PhlogEditableContentTest >> tearDown [
	super tearDown.
	(FileSystem workingDirectory / 'test') deleteAll 
]

{ #category : #'as yet unclassified' }
PhlogEditableContentTest >> test [
	| file1 file2 |
	file1 := PhlogEditableContent new
		storingDirectory: FileSystem workingDirectory / 'test';
		text: 'blabla'.
	file2 := PhlogEditableContent fromFile: FileSystem workingDirectory / 'test' / file1 key asString.
	self assert: file2 equals: file1.
	self assert: file2 text equals: file1 text.
	file1 text: 'BLA'.
	file2 := PhlogEditableContent fromFile: FileSystem workingDirectory / 'test' / file1 key asString.
	self assert: file2 equals: file1.
	self assert: file2 text equals: file1 text.
	
]
