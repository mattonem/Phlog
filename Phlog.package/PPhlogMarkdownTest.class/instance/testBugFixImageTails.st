as yet unclassified
testBugFixImageTails
	| result |
	result := PPhlogMarkdown parse: '![zac](url)]'.
	self assert: (result first first isKindOf: PMdParagraph)