as yet unclassified
testCarousel
	| result |
	result := PPhlogMarkdown
		parse:
			'![alt](url)(url2)'.
	self assert: (result first isKindOf: PMdCarousel)