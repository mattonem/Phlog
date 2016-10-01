grammar
strong
	^ '__' asParser , (#newline asParser/ '__' asParser) negate star flatten, '__' asParser ==> [:node | PMdStrong from: node]