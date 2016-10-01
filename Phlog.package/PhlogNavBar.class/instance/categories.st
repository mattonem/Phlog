as yet unclassified
categories
	^ OrderedDictionary new
		add: (self application parent basicUrl addToPath: '/phlog') asString -> 'News';
		add: (self application parent basicUrl addToPath: '/about') asString -> 'About';
		add: (self application parent basicUrl addToPath: '/friends') asString -> 'Friends';
		yourself