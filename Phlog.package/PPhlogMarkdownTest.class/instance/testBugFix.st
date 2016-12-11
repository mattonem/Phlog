as yet unclassified
testBugFix
	| result |
	result := PPhlogMarkdown parse: '![zac](url)]'.
	self assert: (result first isKindOf: PMdParagraph )