grammar
textGroup
	^ 
		(((image/carousel) not, ( title/paragraph) separatedBy: (#newline asParser plus)) ) withoutSeparators ==> [ :node | PMdTextGroup from: ( node collect: #second )  ]