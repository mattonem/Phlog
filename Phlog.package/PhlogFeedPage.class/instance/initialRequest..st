rendering
initialRequest: aRequest
	super initialRequest: aRequest.
	[self selected: (NumberParser parse: aRequest url path last)] on: Error do: []