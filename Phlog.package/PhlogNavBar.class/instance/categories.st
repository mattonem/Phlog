as yet unclassified
categories
	^ OrderedDictionary new
		add: (self application parent basicUrl addToPath: '/phlog') asString -> 'News';
		add: (self application parent basicUrl addToPath: '/about') asString -> 'About';
		yourself