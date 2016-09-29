grammar
url
	^ (#space asParser / $) asParser) negate star ==> [ :node | PMdString from: node ]