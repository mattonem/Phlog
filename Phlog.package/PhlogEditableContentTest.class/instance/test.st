tests
test
	| file1 file2 dynamoDbTable result file3 |
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
	dynamoDbTable := DynamoDBTable tableNamed: self tableName.
	dynamoDbTable mapper.
	result := dynamoDbTable getItemBy: {#id->file1 id} asDictionary.	
	file3 := PhlogEditableContent fromDictionary: result.
	self assert: file3 equals: file1.
	self assert: file3 text equals: file1 text.