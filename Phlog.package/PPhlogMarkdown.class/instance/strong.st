grammar
strong
	^ '__' asParser , (#newline asParser/ '__' asParser) negate star, '__' asParser ==> [:node | PMdStrong from: node]