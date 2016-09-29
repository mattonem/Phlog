grammar
text 
	^ #newline asParser negate plus ==> [ :node | PMdString from: node ]