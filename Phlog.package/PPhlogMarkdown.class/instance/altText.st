grammar
altText
	^ (#newline asParser / $] asParser) negate star ==> [ :node | PMdString from: node ]