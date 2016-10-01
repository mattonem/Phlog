grammar
url
	^ (#space asParser / $) asParser) negate star flatten ==> [ :node | PMdString from: node ]