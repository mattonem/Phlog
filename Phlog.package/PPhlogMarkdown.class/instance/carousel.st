grammar
carousel
	^ ('![' asParser , altText , ']' asParser ,(('(' asParser , url , ')' asParser) min: 2)
		, #newline asParser negate not) ==> [ :node | PMdCarousel from: node ]