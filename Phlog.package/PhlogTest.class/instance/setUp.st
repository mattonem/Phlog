initialization
setUp
	super setUp.
	AWSDynamoDBConfig initialize.
	AWSDynamoDBConfig developmentDynamoDBSetting.
	self makeTable: 'News'.
	self makeTable: 'About'.
	self makeTable: 'Friends'.
	Phlog defaultSetUp.
	PhlogServerAdaptor startOn: 8443.
	driver := BPWebDriverManagerResource current
		driverWithCapabilities: BPDesiredCapabilities chrome
		on: 'http://admin:password@localhost:8443/admin/News'.