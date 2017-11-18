as yet unclassified
storeAllContent
	| dynamoDbTable |
	dynamoDbTable := DynamoDBTable tableNamed: datatableName.
	dynamoDbTable mapper.
	collection
		reverseWithIndexDo: [ :content :order | 
			content
				order: order.
			dynamoDbTable putItem: content asDictionary ]