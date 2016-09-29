grammar
text 
	^ #newline asParser negate star ==> [ :node | PMdString from: node ]