as yet unclassified
testText
	| result |
	result := PPhlogMarkdown parse: 'blabla'.
	self assert: (result first first isKindOf: PMdParagraph )