rendering
initialRequest: aRequest
	super initialRequest: aRequest.
	
	(aRequest url path isNotEmpty and: (NumberParser isNumber: aRequest url path last) ) ifTrue: [(editableCollection at: (NumberParser parse: aRequest url path  last)) getSelected  ]