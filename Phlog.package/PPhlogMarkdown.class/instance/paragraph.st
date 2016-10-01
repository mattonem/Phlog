grammar
paragraph
	^ (anchor/strong/em/text) star ==> [ :node | PMdParagraph from: node ]