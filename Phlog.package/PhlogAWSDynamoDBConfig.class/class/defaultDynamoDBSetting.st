instance creation
defaultDynamoDBSetting
	| aws |
	aws := self new.
	aws serviceName:'DynamoDB'.
	"AWS Regions Francfort"
	aws regionName: 'eu-central-1'.
	aws apiVersion: '20120810'.
	^ aws