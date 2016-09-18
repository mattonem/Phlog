rendering
initialRequest: aRequest
	super initialRequest: aRequest.
	[self selected: (feed forKey: (NumberParser parse: aRequest url path last))] on: Error do: [  ]