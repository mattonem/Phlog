rendering
initialRequest: aRequest
	super initialRequest: aRequest.
	(aRequest url path isNotEmpty and: [ NumberParser isNumber: aRequest url path last ])
		ifTrue: [ self selected: (newsCollection forKey: (NumberParser parse: aRequest url path last)) ]