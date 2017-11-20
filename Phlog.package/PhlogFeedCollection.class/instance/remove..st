category
remove: aNews
	
	| dic dynamoTable |
	dic := Dictionary newFrom: {'id' -> aNews id }.
	dynamoTable := DynamoDBTable tableNamed: datatableName.
	dynamoTable mapper.
	dynamoTable deleteItem: dic.