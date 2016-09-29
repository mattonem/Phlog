grammar
textGroup
	^ 
		((image not ,( title/paragraph) separatedBy: #newline asParser) )withoutSeparators ==> [ :node | PMdTextGroup from: ( node collect: #second )  ]