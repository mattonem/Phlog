as yet unclassified
categories
	^ Phlog getCollections keys
		collect: [ :aCollectionName | (self application parent basicUrl addToPath: '/' , aCollectionName) asString -> aCollectionName ]