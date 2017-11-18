tests
testBasic
	| collection content collection2 |
	collection := PhlogFeedCollection on: self tableName.
	content := collection newContent.
	content text: '1234'.
	2 second wait.
	content := collection newContent.
	content text: '3456'.
	
	collection storeAllContent.
	collection2 := PhlogFeedCollection on: self tableName.
	self assert: collection2 contentCount equals: 2
