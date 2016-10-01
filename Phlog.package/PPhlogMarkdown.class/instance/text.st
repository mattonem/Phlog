grammar
text 
	^ ((anchor/ strong / em ) not, #newline asParser negate) plus ==> [ :node | PMdString from: (node collect: #second) ]