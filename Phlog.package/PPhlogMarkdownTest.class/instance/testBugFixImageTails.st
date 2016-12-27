as yet unclassified
testBugFixImageTails
	| result |
	self skip.
	result := PPhlogMarkdown parse: '![zac](url)]'.
	self assert: (result first first isKindOf: PMdParagraph)