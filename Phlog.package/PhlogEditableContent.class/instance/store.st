💾
store
	| stream item dynamoDbTable result |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	
	
	item := NeoJSONObject fromString: (NeoJSONWriter toString: self).
	dynamoDbTable := DynamoDBTable tableNamed: 'EditableContentTest'.
	result := dynamoDbTable putItem: item.
	self assert: (result isEmpty).
	
	(NeoJSONWriter on: stream) prettyPrint: true; nextPut: self.
	stream close.
	