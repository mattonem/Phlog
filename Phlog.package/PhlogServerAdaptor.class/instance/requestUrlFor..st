as yet unclassified
requestUrlFor: aZincRequest
	| zincUrl seasideUrl |
	zincUrl := aZincRequest absoluteUrl.
	(seasideUrl := WAUrl new)
		scheme: (self schemeForPort: port);
		host: zincUrl host;
		port: (self proxiedPort: port);
		fragment: zincUrl fragment.
	zincUrl hasPath ifTrue: [ 
		zincUrl pathSegments do: [ :each |
			each = #/ ifFalse: [ seasideUrl addToPath: each ] ].
		seasideUrl slash: zincUrl isDirectoryPath ].
	zincUrl queryDo: [ :key :value |
		seasideUrl addField: key value: value ].
	^ seasideUrl