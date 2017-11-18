putting
store: anEditableContent
	| dynamoDbTable |
	dynamoDbTable := DynamoDBTable tableNamed: datatableName.
	dynamoDbTable mapper.
	collection
		reverseWithIndexDo: [ :content :order | 
			content
				order: order.
			dynamoDbTable putItem: content asDictionary ]