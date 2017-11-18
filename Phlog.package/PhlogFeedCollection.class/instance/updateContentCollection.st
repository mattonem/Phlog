as yet unclassified
updateContentCollection
	| dynamoDbTable enu |
	dynamoDbTable := DynamoDBTable tableNamed: datatableName.
	dynamoDbTable mapper.
	dynamoDbTable numberOfResultsToFetch: 5.
	enu := dynamoDbTable enumerator.
	[ enu atEnd ]
		whileFalse: [ | result |
			result := enu fetchNextUnits ].
	collection := (enu resultStream contents
		collect: [ :dict | PhlogEditableContent fromDictionary: dict ])
		asSortedCollection: [ :edit1 :edit2 | edit1 order < edit2 order ]