grammar
paragraph
	^ (strong/em/text) star ==> [ :node | PMdParagraph from: node ]