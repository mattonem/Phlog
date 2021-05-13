"
A PhlogFeedCollectionTest is a test class for testing the behavior of PhlogFeedCollection
"
Class {
	#name : #PhlogFeedCollectionTest,
	#superclass : #TestCase,
	#category : #'Phlog-Tests'
}

{ #category : #'as yet unclassified' }
PhlogFeedCollectionTest >> tearDown [
	super tearDown.
	(FileSystem workingDirectory / 'test-collection') deleteAll
]

{ #category : #'as yet unclassified' }
PhlogFeedCollectionTest >> testBasic [
	| collection content collection2 |
	collection := PhlogFeedCollection on: FileSystem workingDirectory / 'test-collection'.
	content := collection newContent.
	content text: '1234'.
	2 second wait.
	content := collection newContent.
	content text: '3456'.
	
	collection storeAllContent.
	collection2 := PhlogFeedCollection on: FileSystem workingDirectory / 'test-collection'.
	self assert: collection2 contentCount equals: 2

]
