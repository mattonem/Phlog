accessing
store: aTableName
	| stream item dynamoDbTable result |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	
	
	item := NeoJSONWriter toString: self.
	dynamoDbTable := DynamoDBTable tableNamed: aTableName.
	result := dynamoDbTable putItem: item.
	self assert: (result isEmpty).
	
	(NeoJSONWriter on: stream) prettyPrint: true; nextPut: self.
	stream close.
	