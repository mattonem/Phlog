grammar
altText
	^ (#space asParser / $] asParser) negate star ==> [ :node | PMdString from: node ]