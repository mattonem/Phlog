initialization
makeTable: aTablename
	| dy operationName requestBody resp |
	dy := DynamoDBRawClient new.
	operationName := #CreateTable.
	requestBody := '{
    "AttributeDefinitions": [
        {
            "AttributeName": "id",
            "AttributeType": "S"
        }
    ],
    "TableName": "',
	aTablename,
	'",
    "KeySchema": [
        {
            "AttributeName": "id",
            "KeyType": "HASH"
        }
    ],
    "ProvisionedThroughput": {
        "ReadCapacityUnits": 10,
        "WriteCapacityUnits": 10
    }
}'.
	resp := dy operationName: operationName contents: requestBody.
	Json readFrom: resp contents readStream.
	