as yet unclassified
testTitle
	| result |
	result := PPhlogMarkdown parse: '#Title'.
	self assert: (result first first isKindOf: PMdTitle )