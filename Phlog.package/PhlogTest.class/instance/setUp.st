initialization
setUp
	| dy operationName requestBody resp |

	super setUp.
	Phlog defaultSetUp.
	PhlogServerAdaptor startOn: 8443.

	
	AWSDynamoDBConfig initialize.
	AWSDynamoDBConfig developmentDynamoDBSetting.
	
	dy := DynamoDBRawClient new.
	operationName := #CreateTable.
	requestBody := '{
    "AttributeDefinitions": [
        {
            "AttributeName": "id",
            "AttributeType": "S"
        }
    ],
    "TableName": "EditableContentTest",
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
	Json readFrom: (resp contents) readStream.
