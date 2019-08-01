as yet unclassified
testBugImageAndText
	| result |
	result := PPhlogMarkdown
		parse:
			'![zac](url)
	sqmljkds'.
	self assert: (result first isKindOf: PMdImage)