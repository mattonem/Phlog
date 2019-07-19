as yet unclassified
testBasic
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
