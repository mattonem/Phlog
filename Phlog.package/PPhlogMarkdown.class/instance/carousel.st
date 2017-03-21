grammar
carousel
	^ ('![' asParser , altText , ']' asParser ,('(' asParser , url , ')' asParser) star
		, #newline asParser negate not) ==> [ :node | PMdCarousel from: node ]