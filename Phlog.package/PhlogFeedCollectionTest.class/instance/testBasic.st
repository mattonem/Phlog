as yet unclassified
testBasic
	| collection content collection2 |
	collection := PhlogFeedCollection on: FileSystem workingDirectory / 'test-collection'.
	content := collection newContent.
	content text: '1234'.
	2 second wait.
	collection storeAllContent.
	collection2 := PhlogFeedCollection on: FileSystem workingDirectory / 'test-collection'.
	self assert: collection2 contentCount equals: 1
