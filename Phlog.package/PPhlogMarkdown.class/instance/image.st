grammar
image
	^ ('![' asParser , altText , '](' asParser , url , ')' asParser
		, #newline asParser negate not) ==> [ :node | PMdImage from: node ]