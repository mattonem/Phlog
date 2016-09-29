grammar
text 
	^ (em asParser not, #newline asParser negate) plus ==> [ :node | PMdString from: (node collect: #second) ]