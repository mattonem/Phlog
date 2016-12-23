as yet unclassified
describeOn: config
	(config list: #feed)
		options: [ self possibleFeed ];
		default: Phlog getCollections anyOne.
	(config string: #title)
		default: 'Phlog'