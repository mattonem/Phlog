as yet unclassified
describeOn: config
	(config list: #feed)
		options: [ self possibleFeed ];
		default: Phlog newsCollection