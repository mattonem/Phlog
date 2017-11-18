running
tearDown
	| operationName requestBody dy resp |
	super tearDown.
	(PhlogServerAdaptor startOn: 8443) stop.

	dy := DynamoDBRawClient new.
	operationName := #DeleteTable.
	requestBody := JsonObject new at:'TableName' put: self tableName; asJsonString .
	resp := dy operationName:  operationName contents: requestBody.
	Json readFrom: (resp contents) readStream.
	
	self deleteTable: 'News'.
	self deleteTable: 'About'.
	self deleteTable: 'Friends'.
	driver close.