description
describeOn: config
	(config string: #uacctGoogle)
		comment:
			'uacct for Google Analitics';
		default: ''.
	(config integer: #feedsPerPage)
		comment:
			'Number of feeds per page';
		default: 10.
	(config list: #feed)
		options: [ self possibleFeed ];
		default: Phlog getCollections anyOne.
	(config string: #title) default: 'Phlog'