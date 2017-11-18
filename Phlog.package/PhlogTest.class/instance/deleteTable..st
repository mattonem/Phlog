running
deleteTable: aTablenme
	| dy operationName requestBody resp |
	dy := DynamoDBRawClient new.
	operationName := #DeleteTable.
	requestBody := JsonObject new at:'TableName' put: aTablenme; asJsonString .
	resp := dy operationName:  operationName contents: requestBody.
	Json readFrom: (resp contents) readStream.