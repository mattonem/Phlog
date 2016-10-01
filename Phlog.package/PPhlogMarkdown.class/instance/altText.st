grammar
altText
	^ (#newline asParser / $] asParser) negate star flatten ==> [ :node | PMdString from: node ]